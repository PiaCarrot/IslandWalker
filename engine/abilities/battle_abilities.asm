AbilityText:: ; Defines the ability text bank, referenced as BANK(AbilityText)

; Checks the entrance ability based off of the Pokémon personality in HL, Player/Enemy in B (0 for Player, 1 for enemy), and species in C.
; Performs the ability if applicable.
Check_Entrance_Ability:
    call GetAbility
    call Ability_LoadTracedAbility
    cp TRACE
    jp z, .trace
    cp DRIZZLE
    jr z, .drizzle
    cp DROUGHT
    jr z, .drought
    cp SAND_STREAM
    jr z, .sand_stream
    cp SNOW_WARNING
    jr z, .snow_warning
    cp PRESSURE
    jr z, .pressure
    cp INTIMIDATE
    jr z, .intimidate
    ; Otherwise, do nothing
    ret

.drizzle
    ld a, WEATHER_RAIN
    ld [wBattleWeather], a
    ld a, 255 ; 8-bit restriction. only 255 turns allowed.
    ld [wWeatherCount], a
    farcall HandleWeather.weather_ability_skip
    ld hl, AbilityText_MadeItRain
    call StdAbilityTextbox
    ret

.drought
    ld a, WEATHER_SUN
    ld [wBattleWeather], a
    ld a, 255 ; 8-bit restriction. only 255 turns allowed.
    ld [wWeatherCount], a
    farcall HandleWeather.weather_ability_skip
    ld hl, AbilityText_SunRaysIntensified
    call StdAbilityTextbox
    ret

.sand_stream
    ld a, WEATHER_SANDSTORM
    ld [wBattleWeather], a
    ld a, 255 ; 8-bit restriction. only 255 turns allowed.
    ld [wWeatherCount], a
    farcall HandleWeather.weather_ability_skip
    ld hl, AbilityText_WhippedUpASandStorm
    call StdAbilityTextbox
    ret

.snow_warning
    ld a, WEATHER_HAIL
    ld [wBattleWeather], a
    ld a, 255 ; 8-bit restriction. only 255 turns allowed.
    ld [wWeatherCount], a
    farcall HandleWeather.weather_ability_skip
    ld hl, AbilityText_WhippedUpAHailStorm
    call StdAbilityTextbox
    ret

.pressure
    ld hl, AbilityText_ExertingPressure
    call StdAbilityTextbox
    ret

.intimidate
    call Ability_LoadOppSpeciesAndPersonality
    call GetAbility
    cp WHITE_SMOKE
    jr z, .blocked_intimidate
    cp HYPER_CUTTER
    jr z, .blocked_intimidate
    cp CLEAR_BODY
    jr z, .blocked_intimidate
    ; We're still here? Push forward!
; Known bug: it does briefly flash the HP bar
    farcall BattleCommand_StatDownAnim.intimidate_skip
    farcall BattleCommand_AttackDown
; Finally, print this
    ld hl, AbilityText_IntimidateCutsAttack
    call StdAbilityTextbox
    ret

; At this point, we say "Hey, this blocked that!"
.blocked_intimidate
    call Ability_LoadAbilityName
    ld hl, AbilityText_IntimidateBlocked
    call StdAbilityTextbox
    ret

.trace
    ; First sort out if the enemy's ability is also still TRACE, and do nothing otherwise.
    call Ability_LoadOppSpeciesAndPersonality
    call GetAbility
    cp TRACE
    jr z, .cannot_trace ; In Gen III, you could not trace a traced ability... or Trace, for that matter. 
    
    push af
    ld a, b
    and a
    pop af
    ld [wBattleMonTracedAbility], a
    jr z, .print_traced
    push af
    ld a, TRACE
    ld [wBattleMonTracedAbility], a ; Reset this
    pop af
    ld [wEnemyMonTracedAbility], a
.print_traced
    call Ability_LoadAbilityName
    ld a, b
    and a
    ld hl, AbilityText_TracedTheAbilityPlayer
    jr z, .call_text
    ld hl, AbilityText_TracedTheAbilityEnemy
.call_text
    call StdAbilityTextbox
.cannot_trace
    ret
	
; This is just Run Away. Returns NZ if it is.
Check_Flee_Ability:
    call GetAbility
    call Ability_LoadTracedAbility
    ; RUN AWAY always allows fleeing or switching out without fail
    cp RUN_AWAY
    jr z, .run_away
 
    xor a ; Otherwise return Z.
    cp a
    ret

.run_away:
    ld a, 1 ; Sets the NZ flag
    and a
    ret

; This is only ever called from battle/engine/core.asm in 2 spots.
.PrintRunawayText
    ld hl, AbilityText_RunAway
    call StdAbilityTextbox
    ret
	
; "Beware of Traps!" - Admiral Ackbar

 

; These are abilities that prevent the foe from escaping (including switching out). Returns NZ if the ability prevents fleeing.
Check_Trap_Ability:
; Firstly, none of this matters if the opponent has Run Away.
    push af
    push bc
    call Ability_LoadOppSpeciesAndPersonality
    cp RUN_AWAY
    pop bc
    jr z, .done_z
    pop af
; At this point we check the ability now.
    call GetAbility
    call Ability_LoadTracedAbility
    cp ARENA_TRAP
    jr z, .arena_trap
    cp SHADOW_TAG
    jr z, .shadow_tag
    cp MAGNET_PULL
    jr z, .magnet_pull
; and of course, we're done otherwise; set z
    xor a
    cp a
    jr .done
.done_z ; Pops AF and sets the Z flag
    pop af
    cp a
.done
    ret

.arena_trap ; We have two potential problems... does the foe have levitate, or is the foe a Flying-type?
    push af
    call Ability_LoadOppSpeciesAndPersonality
    cp LEVITATE
    jr z, .done_z
    ld a, FLYING
    call Ability_CheckOpponentMonType
    jr z, .done_z
    jr .trap_enemy
 
.shadow_tag ; We have 1 potential problem... is the foe a Ghost-type?
    push af
    ld a, GHOST
    call Ability_CheckOpponentMonType
    jr z, .done_z
    jr .trap_enemy
.magnet_pull ; This only affects Steel-types... so unlike the other two, we return on NZ.
    push af
    ld a, STEEL
    call Ability_CheckOpponentMonType
    jr nz, .done_z

; Fallthrough
.trap_enemy
    pop af
; Let's get the ability name in case we need it
    call Ability_LoadAbilityName
; Right so if the enemy is checking us, that means b is a 0, and we do not return. If the
; enemy is blocking us on the other hand, b is a 1 and we need to print out something.
    xor a
    cp b
    jr z, .cant_escape
    ld hl, AbilityText_PreventedEscapeAbility
    call StdAbilityTextbox
.cant_escape
    ld a, 1
    and a
    jr .done
	

; Shell Armor and Battle Armor prevent critical hits. Z is returned if the ability blocks critical hits entirely.
 

Check_CritBlockingAbility:
    call GetAbility
    call Ability_LoadTracedAbility
    cp BATTLE_ARMOR
    ret z
    cp SHELL_ARMOR
    ret

; Ruby/Sapphire PICKUP ability: chance to find an item after battle
HandlePickup::
    ld a, [wPartyCount]
    and a
    ret z
    xor a
    ld [wCurPartyMon], a
.loop_mons
    ld a, [wCurPartyMon]
    ld c, a
    ld a, [wPartyCount]
    cp c
    ret z
    ; Check ability
    ld a, c
    ld hl, wPartyMon1Species
    call GetPartyLocation
    ld d, [hl] ; preserve species
    ld a, [wCurPartyMon]
    ld hl, wPartyMon1Personality
    call GetPartyLocation
    ld c, d
    call GetAbility
    cp PICKUP
    jr nz, .next_mon
    ; Check if holding an item
    ld a, [wCurPartyMon]
    ld hl, wPartyMon1Item
    call GetPartyLocation
    ld a, [hl]
    and a
    jr nz, .next_mon
    ; 10% chance to pick up an item
    call BattleRandom
    cp 10 percent
    jr nc, .next_mon
    push hl
    call Pickup_GetItem
    call GetItemIDFromIndex
    ld e, a
	ld [wNamedObjectIndex], a
    pop hl
    ld [hl], e
    ; Get nickname into wStringBuffer2
    call GetCurNickname
    ld de, wStringBuffer1
    call CopyName1
    ; Get item name into wStringBuffer1
    call GetItemName
    ; Display message
    ld hl, AbilityText_PickupFoundItem
    call StdAbilityTextbox
.next_mon
    ld hl, wCurPartyMon
    inc [hl]
    jr .loop_mons

; Select a random item based on Pickup probabilities
Pickup_GetItem:
    ld a, 100
    call BattleRandomRange
    ld hl, PickupItems
.item_loop
    ld b, [hl]
    inc hl
    cp b
    jr c, .got_item
    sub b
    inc hl
    inc hl
    jr .item_loop
.got_item
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld h, d
    ld l, e
    ret

INCLUDE "data/abilities/pickup_items.asm"
