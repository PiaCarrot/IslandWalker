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
    cp IMPOSTER
    jp z, .imposter
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
    cp OBLIVIOUS
    jr z, .blocked_intimidate
    cp OWN_TEMPO
    jr z, .blocked_intimidate
    ; We're still here? Push forward!
; Known bug: it does briefly flash the HP bar
    farcall BattleCommand_StatDownAnim.intimidate_skip
    farcall BattleCommand_AttackDown
; Finally, print this
    ld hl, AbilityText_IntimidateCutsAttack
    call StdAbilityTextbox
    ret

.imposter
    ; Ensure the Transform animation plays and the sprite updates
    ldh a, [hBattleTurn]
    and a
    jr nz, .enemy
    ld a, [wEnemyMonSpecies]
    ld [wTempEnemyMonSpecies], a
    jr .got_species
.enemy
    ld a, [wBattleMonSpecies]
    ld [wTempBattleMonSpecies], a
.got_species
    ld hl, TRANSFORM
    call GetMoveIDFromIndex
    ld b, a
    ld a, BATTLE_VARS_MOVE_ANIM
    call GetBattleVarAddr
    ld [hl], b
    push hl
    farcall BattleCommand_Transform
    pop hl
    xor a
    ld [hl], a
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

; Good as Gold provides immunity to status moves. Returns z if blocked.
Check_GoodAsGold:
    call GetAbility
    call Ability_LoadTracedAbility
    cp GOOD_AS_GOLD
    jr nz, .nope
    call Ability_LoadAbilityName
    xor a
    ret
.nope
    ld a, 1
    ret

; Soundproof provides immunity to sound-based moves. Returns z if blocked.
Check_Soundproof:
    call GetAbility
    call Ability_LoadTracedAbility
    cp SOUNDPROOF
    jr z, .blocked
    cp CACOPHONY
    jr nz, .nope
.blocked
    call Ability_LoadAbilityName
    xor a
    ret
.nope
    ld a, 1
    ret

; Damp prevents Selfdestruct, Explosion, and similar detonations.
; Returns z if the move should be stopped.
Check_Damp:
    call GetAbility
    call Ability_LoadTracedAbility
    cp DAMP
    jr nz, .nope
    call Ability_LoadAbilityName
    xor a
    ret
.nope
    ld a, 1
    ret

; Clear Body and White Smoke prevent stat drops. Hyper Cutter prevents attack
; drops, and Keen Eye prevents accuracy drops. Returns z if blocked.
Check_ClearBody:
    call GetAbility
    call Ability_LoadTracedAbility
    ld d, a
    cp CLEAR_BODY
    jr z, .blocked
    cp WHITE_SMOKE
    jr z, .blocked
    cp HYPER_CUTTER
    jr nz, .check_keen_eye
    ld a, [wLoweredStat]
    and $f
    cp ATTACK
    jr nz, .nope
    ld a, d
    jr .blocked
.check_keen_eye
    cp KEEN_EYE
    jr nz, .nope
    ld a, [wLoweredStat]
    and $f
    cp ACCURACY
    jr nz, .nope
    ld a, d
    jr .blocked
.blocked
    push bc
    push af
    ld a, b
    and a
    ld hl, wPlayerAbility
    jr z, .store
    ld hl, wEnemyAbility
.store
    pop af
    ld [hl], a
    pop bc
    call Ability_LoadAbilityName
    xor a
    ret
.nope
    ld a, 1
    ret

; Suction Cups prevents forced switching. Returns z if blocked.
Check_SuctionCups:
    call GetAbility
    call Ability_LoadTracedAbility
    cp SUCTION_CUPS
    jr nz, .nope
    call Ability_LoadAbilityName
    xor a
    ret
.nope
    ld a, 1
    ret

; Insomnia and Vital Spirit prevent the user from falling asleep.
; Returns z if sleep is blocked.
Check_InsomniaVitalSpirit:
    call GetAbility
    call Ability_LoadTracedAbility
    cp INSOMNIA
    jr z, .blocked
    cp VITAL_SPIRIT
    jr nz, .nope
.blocked
    call Ability_LoadAbilityName
    xor a
    ret
.nope
    ld a, 1
    ret

; Immunity prevents the user from being poisoned. Returns z if blocked.
Check_Immunity:
    call GetAbility
    call Ability_LoadTracedAbility
    cp IMMUNITY
    jr nz, .nope
    call Ability_LoadAbilityName
    xor a
    ret
.nope
    ld a, 1
    ret

; Own Tempo prevents the user from becoming confused. Returns z if blocked.
Check_OwnTempo:
    call GetAbility
    call Ability_LoadTracedAbility
    cp OWN_TEMPO
    jr nz, .nope
    call Ability_LoadAbilityName
    xor a
    ret
.nope
    ld a, 1
    ret

; Limber prevents the user from being paralyzed. Returns z if blocked.
Check_Limber:
    call GetAbility
    call Ability_LoadTracedAbility
    cp LIMBER
    jr nz, .nope
    call Ability_LoadAbilityName
    xor a
    ret
.nope
    ld a, 1
    ret

; Water Veil prevents the user from being burned. Returns z if blocked.
Check_WaterVeil:
    call GetAbility
    call Ability_LoadTracedAbility
    cp WATER_VEIL
    jr nz, .nope
    call Ability_LoadAbilityName
    xor a
    ret
.nope
    ld a, 1
    ret

; Magma Armor prevents the user from being frozen. Returns z if blocked.
Check_MagmaArmor:
    call GetAbility
    call Ability_LoadTracedAbility
    cp MAGMA_ARMOR
    jr nz, .nope
    call Ability_LoadAbilityName
    xor a
    ret
.nope
    ld a, 1
    ret

; Oblivious prevents infatuation, Taunt, and Captivate. Returns z if blocked.
Check_Oblivious:
    call GetAbility
    call Ability_LoadTracedAbility
    cp OBLIVIOUS
    jr nz, .nope
    call Ability_LoadAbilityName
    xor a
    ret
.nope
    ld a, 1
    ret

; Inner Focus prevents flinching. Returns z if blocked.
Check_InnerFocus:
    call GetAbility
    call Ability_LoadTracedAbility
    cp INNER_FOCUS
    jr nz, .nope
    call Ability_LoadAbilityName
    ld hl, AbilityText_InnerFocus
    call StdAbilityTextbox
    xor a
    ret
.nope
    ld a, 1
    ret

; Applies a 1.5x damage boost for "in a pinch" abilities when the user
; is at or below 1/3 of its maximum HP. The ability user is indicated by
; b (0 for the player, 1 for the enemy), with the species in c and the
; personality at hl.
ApplyPinchAbilityBoost:
    call GetAbility
    call Ability_LoadTracedAbility
    ld d, b
    ld e, a
    ld a, [wCurType]
    and TYPE_MASK
    ld b, a
    ld hl, PinchAbilityTypeTable
.loop
    ld a, [hli]
    cp -1
    ret z
    cp e
    jr z, .matched
    inc hl
    jr .loop
.matched
    ld a, [hli]
    cp b
    ret nz
    call .CheckPinch
    ret z
    call .ApplyBoost
    ret

.CheckPinch
    push bc
    push de
    push hl
    ld a, d
    and a
    jr nz, .enemy_hp
    ld hl, wBattleMonHP
    ld de, wBattleMonMaxHP
    jr .have_hp
.enemy_hp
    ld hl, wEnemyMonHP
    ld de, wEnemyMonMaxHP
.have_hp
    ld a, [hl]
    ld b, a
    inc hl
    ld a, [hl]
    ld c, a
    ld h, b
    ld l, c
    add hl, bc
    add hl, bc
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    ld a, h
    cp b
    jr c, .in_pinch
    jr nz, .not_in_pinch
    ld a, l
    cp c
    jr c, .in_pinch
    jr z, .in_pinch
.not_in_pinch
    xor a
    jr .done
.in_pinch
    ld a, 1
.done
    pop hl
    pop de
    pop bc
    or a
    ret

.ApplyBoost
    ld hl, wCurDamage + 1
    ld a, [hld]
    ld h, [hl]
    ld l, a
    ld b, h
    ld c, l
    srl b
    rr c
    add hl, bc
    ld a, h
    ld [wCurDamage], a
    ld a, l
    ld [wCurDamage + 1], a
    ret

PinchAbilityTypeTable:
db BLAZE, FIRE
db OVERGROW, GRASS
db TORRENT, WATER
db SWARM, BUG
db PERSISTANCE, NORMAL
db OVERCHARGED, ELECTRIC
db DRAGOON, DRAGON
db -1

; Levitate provides immunity to Ground-type moves. Returns z if blocked.
Check_Levitate:
    call GetAbility
    call Ability_LoadTracedAbility
    cp LEVITATE
    jr nz, .nope
    call Ability_LoadAbilityName
    xor a
    ret
.nope
    ld a, 1
    ret

; Wonder Guard prevents damage from non-super-effective moves. Returns z if blocked.
Check_WonderGuard:
    call GetAbility
    call Ability_LoadTracedAbility
    cp WONDER_GUARD
    jr nz, .nope
    call Ability_LoadAbilityName
    xor a
    ret
.nope
    ld a, 1
    ret

; Sturdy prevents OHKO moves from landing.
Check_SturdyOHKO:
    call GetAbility
    call Ability_LoadTracedAbility
    cp STURDY
    jr nz, .nope
    call Ability_LoadAbilityName
    xor a
    ret
.nope
    ld a, 1
    ret

; Sturdy lets the user survive a would-be KO from full HP.
Check_SturdyHangOn:
    call GetAbility
    call Ability_LoadTracedAbility
    cp STURDY
    jr nz, .nope
    call Ability_LoadAbilityName

    ld a, b
    and a
    jr z, .player_side
    ld a, [wEnemySubStatus4]
    jr .check_substitute
.player_side
    ld a, [wPlayerSubStatus4]
.check_substitute
    bit SUBSTATUS_SUBSTITUTE, a
    jr nz, .nope

    ld hl, wBattleMonHP
    ld de, wBattleMonMaxHP
    ld a, b
    and a
    jr z, .have_hp
    ld hl, wEnemyMonHP
    ld de, wEnemyMonMaxHP
.have_hp
    push hl
    push de
    ld c, 2
    call CompareBytes
    pop de
    pop hl
    jr nz, .nope

    ld de, wCurDamage
    ld c, 2
    push hl
    push de
    call CompareBytes
    pop de
    pop hl
    jr c, .nope

    ld a, [hli]
    ld [de], a
    inc de
    ld a, [hl]
    dec a
    ld [de], a
    inc a
    jr nz, .no_borrow
    dec de
    ld a, [de]
    dec a
    ld [de], a
.no_borrow
    ld a, [wCriticalHit]
    cp 2
    jr nz, .activated
    xor a
    ld [wCriticalHit], a
.activated
    xor a
    ret

.nope
    ld a, 1
    ret

HandleSpeedBoost::
    ldh a, [hSerialConnectionStatus]
    cp USING_EXTERNAL_CLOCK
    jr z, .EnemyFirst
    call SetPlayerTurn
    call .Apply
    call SetEnemyTurn
    call .Apply
    ret

.EnemyFirst
    call SetEnemyTurn
    call .Apply
    call SetPlayerTurn
    call .Apply
    ret

.Apply
    ldh a, [hBattleTurn]
    and a
    jr nz, .EnemySide

.PlayerSide
    ld hl, wBattleMonHP
    ld a, [hli]
    or [hl]
    ret z
    ld hl, wBattleMonPersonality
    ld a, [wBattleMonSpecies]
    ld c, a
    ld b, 0
    call GetAbility
    call Ability_LoadTracedAbility
    cp SPEED_BOOST
    jr z, .PlayerSpeedBoost
    cp PLUS
    jr z, .PlayerPlusBoost
    cp MINUS
    jr z, .PlayerMinusBoost
    ret

.PlayerSpeedBoost
    ld hl, wPlayerStatLevels + SPEED
    ld de, AbilityText_SpeedBoost
    jr .RaiseStat

.PlayerPlusBoost
    ld hl, wPlayerStatLevels + SP_ATTACK
    ld de, AbilityText_PlusBoost
    jr .RaiseStat

.PlayerMinusBoost
    ld hl, wPlayerStatLevels + SP_DEFENSE
    ld de, AbilityText_MinusBoost
    jr .RaiseStat

.EnemySide
    ld hl, wEnemyMonHP
    ld a, [hli]
    or [hl]
    ret z
    ld hl, wEnemyMonPersonality
    ld a, [wEnemyMonSpecies]
    ld c, a
    ld b, 1
    call GetAbility
    call Ability_LoadTracedAbility
    cp SPEED_BOOST
    jr z, .EnemySpeedBoost
    cp PLUS
    jr z, .EnemyPlusBoost
    cp MINUS
    jr z, .EnemyMinusBoost
    ret

.EnemySpeedBoost
    ld hl, wEnemyStatLevels + SPEED
    ld de, AbilityText_SpeedBoost
    jr .RaiseStat

.EnemyPlusBoost
    ld hl, wEnemyStatLevels + SP_ATTACK
    ld de, AbilityText_PlusBoost
    jr .RaiseStat

.EnemyMinusBoost
    ld hl, wEnemyStatLevels + SP_DEFENSE
    ld de, AbilityText_MinusBoost
    jr .RaiseStat

.RaiseStat
    push de
    ld a, [hl]
    cp MAX_STAT_LEVEL
    jr nc, .Done
    inc [hl]
    ldh a, [hBattleTurn]
    and a
    jr nz, .CalcEnemy
    farcall CalcPlayerStats
    jr .PrintText

.CalcEnemy
    farcall CalcEnemyStats

.PrintText
    pop de
    ld h, d
    ld l, e
    call StdAbilityTextbox
    ret

.Done
    pop de
    ret

HandleShedSkin::
    ldh a, [hSerialConnectionStatus]
    cp USING_EXTERNAL_CLOCK
    jr z, .EnemyFirst
    call SetPlayerTurn
    call .Apply
    call SetEnemyTurn
    jp .Apply

.EnemyFirst
    call SetEnemyTurn
    call .Apply
    call SetPlayerTurn
    jp .Apply

.Apply
    ldh a, [hBattleTurn]
    and a
    jr nz, .EnemyHP
    ld hl, wBattleMonHP
    jr .CheckHP

.EnemyHP
    ld hl, wEnemyMonHP

.CheckHP
    ld a, [hli]
    or [hl]
    ret z

    call Ability_LoadBattleMonBase
    ld a, [de]
    and a
    ret z

    call GetAbility
    call Ability_LoadTracedAbility
    cp SHED_SKIN
    ret nz

    call BattleRandom
    cp 33 percent + 1
    ret nc

    xor a
    ld [de], a

    ld a, b
    and a
    jr z, .Player

.Enemy
    ld hl, wEnemySubStatus5
    res SUBSTATUS_TOXIC, [hl]
    xor a
    ld [wEnemyToxicCount], a
    ld hl, wEnemySubStatus1
    res SUBSTATUS_NIGHTMARE, [hl]
    xor a
    ld [wEnemyJustGotFrozen], a

    ld a, [wBattleMode]
    dec a
    jr z, .SkipParty
    ld a, [wCurOTMon]
    ld hl, wOTPartyMon1Status
    call GetPartyLocation
    ld [hl], 0

.SkipParty
    farcall CalcEnemyStats
    call UpdateBattleHuds
    call SetEnemyTurn
    ld hl, AbilityText_ShedSkin
    jp StdAbilityTextbox

.Player
    ld hl, wPlayerSubStatus5
    res SUBSTATUS_TOXIC, [hl]
    xor a
    ld [wPlayerToxicCount], a
    ld hl, wPlayerSubStatus1
    res SUBSTATUS_NIGHTMARE, [hl]
    xor a
    ld [wPlayerJustGotFrozen], a

    ld a, [wCurBattleMon]
    ld hl, wPartyMon1Status
    call GetPartyLocation
    ld [hl], 0

    farcall CalcPlayerStats
    call UpdateBattleHuds
    call SetPlayerTurn
    ld hl, AbilityText_ShedSkin
    jp StdAbilityTextbox

TryActivateNaturalCure_Player:
    ; d = party slot of the Pokémon being cured
    push bc
    push de
    push hl

    ld hl, wBattleMonPersonality
    ld a, [wBattleMonSpecies]
    ld c, a
    ld b, 0
    call GetAbility
    call Ability_LoadTracedAbility
    cp NATURAL_CURE
    jr nz, .done

    xor a
    ld [wBattleMonStatus], a
    ld [wPlayerToxicCount], a

    ld a, d
    ld hl, wPartyMon1Status
    call GetPartyLocation
    xor a
    ld [hl], a

.done
    pop hl
    pop de
    pop bc
    ret

TryActivateNaturalCure_Enemy:
    ; d = party slot of the Pokémon being cured
    push bc
    push de
    push hl

    ld hl, wEnemyMonPersonality
    ld a, [wEnemyMonSpecies]
    ld c, a
    ld b, 1
    call GetAbility
    call Ability_LoadTracedAbility
    cp NATURAL_CURE
    jr nz, .done

    xor a
    ld [wEnemyMonStatus], a
    ld [wEnemyToxicCount], a

    ld a, [wBattleMode]
    dec a
    jr z, .skip_party

    ld a, d
    ld hl, wOTPartyMon1Status
    call GetPartyLocation
    xor a
    ld [hl], a

.skip_party
.done
    pop hl
    pop de
    pop bc
    ret

TryActivateBattleBond::
    ld hl, wCurDamage
    ld a, [hli]
    or [hl]
    ret z
    ld a, [wIsConfusionDamage]
    and a
    ret nz
    ldh a, [hBattleTurn]
    and a
    jr nz, .Enemy

.Player
    ld hl, wBattleMonHP
    ld a, [hli]
    or [hl]
    ret z
    ld hl, wBattleMonPersonality
    ld a, [wBattleMonSpecies]
    ld c, a
    ld b, 0
    call GetAbility
    call Ability_LoadTracedAbility
    cp BATTLE_BOND
    ret nz
    ld a, [wPlayerBattleBondActivated]
    and a
    ret nz
    ld hl, wPlayerStatLevels + ATTACK
    ld de, wPlayerStatLevels + SP_ATTACK
    ld bc, wPlayerStatLevels + SPEED
    call .CheckStatsCap
    ret z
    ld a, 1
    ld [wPlayerBattleBondActivated], a
    call .BoostStat
    ld h, d
    ld l, e
    call .BoostStat
    ld h, b
    ld l, c
    call .BoostStat
    farcall CalcPlayerStats
    ld hl, AbilityText_BattleBond
    call StdAbilityTextbox
    ret

.Enemy
    ld hl, wEnemyMonHP
    ld a, [hli]
    or [hl]
    ret z
    ld hl, wEnemyMonPersonality
    ld a, [wEnemyMonSpecies]
    ld c, a
    ld b, 1
    call GetAbility
    call Ability_LoadTracedAbility
    cp BATTLE_BOND
    ret nz
    ld a, [wEnemyBattleBondActivated]
    and a
    ret nz
    ld hl, wEnemyStatLevels + ATTACK
    ld de, wEnemyStatLevels + SP_ATTACK
    ld bc, wEnemyStatLevels + SPEED
    call .CheckStatsCap
    ret z
    ld a, 1
    ld [wEnemyBattleBondActivated], a
    call .BoostStat
    ld h, d
    ld l, e
    call .BoostStat
    ld h, b
    ld l, c
    call .BoostStat
    farcall CalcEnemyStats
    ld hl, AbilityText_BattleBond
    call StdAbilityTextbox
    ret

.CheckStatsCap
    ld a, [hl]
    cp MAX_STAT_LEVEL
    jr nz, .not_all_max
    ld a, [de]
    cp MAX_STAT_LEVEL
    jr nz, .not_all_max
    ld a, [bc]
    cp MAX_STAT_LEVEL
    ret z

.not_all_max
    or 1
    ret

.BoostStat
    ld a, [hl]
    cp MAX_STAT_LEVEL
    ret nc
    inc [hl]
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
    ld b, a
    ld hl, PickupAbilityItemTables
.ability_loop
    ld a, [hli]
    cp $ff
    jr z, .next_mon
    cp b
    jr z, .ability_ok
    inc hl
    inc hl
    jr .ability_loop
.ability_ok
    ld e, [hl]
    inc hl
    ld d, [hl]
    ; Check if holding an item
    ld a, [wCurPartyMon]
    ld hl, wPartyMon1Item
    call GetPartyLocation
    ld a, [hl]
    and a
    jr nz, .next_mon
    ; 10% chance to pick up an item
    push de
    call BattleRandom
    pop de
    cp 10 percent
    jr nc, .next_mon
    push hl
    ld h, d
    ld l, e
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
    jr .next_mon
.next_mon
    ld hl, wCurPartyMon
    inc [hl]
    jr .loop_mons

; Select a random item from the table in HL
Pickup_GetItem:
    ld a, 100
    call BattleRandomRange
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

HandleCoinCollector::
    ld a, [wPartyCount]
    and a
    ret z
    xor a
    ld [wCurPartyMon], a
.loop
    ld a, [wCurPartyMon]
    ld c, a
    ld a, [wPartyCount]
    cp c
    ret z
    ld a, c
    ld hl, wPartyMon1Species
    call GetPartyLocation
    ld d, [hl]
    ld a, [wCurPartyMon]
    ld hl, wPartyMon1Personality
    call GetPartyLocation
    ld c, d
    call GetAbility
    cp COIN_COLLECTOR
    jr nz, .next
    ld a, 50
    call BattleRandomRange
    inc a
    ld c, a
    ld hl, wGimmighoulCoins + 1 ; low byte
    ld a, [hl]
    add c
    ld [hl], a
    ld hl, wGimmighoulCoins ; high byte
    ld a, [hl]
    adc 0
    ld [hl], a
    ld a, [hl]
    cp HIGH(999)
    jr c, .display
    jr nz, .cap
    inc hl
    ld a, [hl]
    cp LOW(999)
    jr c, .display
.cap
    ld hl, wGimmighoulCoins
    ld [hl], HIGH(999)
    inc hl
    ld [hl], LOW(999)
.display
    ld a, c
    ld [wTextDecimalByte], a
    call GetCurNickname
    ld de, wStringBuffer1
    call CopyName1
    ld hl, AbilityText_CoinCollectorFoundCoins
    call StdAbilityTextbox
.next
    ld hl, wCurPartyMon
    inc [hl]
    jr .loop

PickupAbilityItemTables:
    db PICKUP
    dw PickupItems
    db HONEY_GATHER
    dw HoneyGatherItems
    db GOOD_AS_GOLD
    dw GoodAsGoldItems
    db FLOWER_GIFT
    dw FlowerGiftItems
    db POWER_OF_ALCHEMY
    dw PowerOfAlchemyItems
    db CURIOUS_MEDICINE
    dw CuriousMedicineItems
    db $ff
    dw 0

INCLUDE "data/abilities/pickup_items.asm"
INCLUDE "data/abilities/honey_gather_items.asm"
INCLUDE "data/abilities/good_as_gold_items.asm"
INCLUDE "data/abilities/flower_gift_items.asm"
INCLUDE "data/abilities/power_of_alchemy_items.asm"
INCLUDE "data/abilities/curious_medicine_items.asm"
