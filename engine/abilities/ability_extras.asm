SECTION "Ability Extras", ROMX

TryActivateRattled:
	ld hl, wCurDamage
	ld a, [hli]
	or [hl]
	ret z

	ld a, [wIsConfusionDamage]
	and a
	ret nz

	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp BUG
	jr z, .check_substitute
	cp GHOST
	jr z, .check_substitute
	cp DARK
	jr nz, .done

.check_substitute
	ld a, BATTLE_VARS_SUBSTATUS4_OPP
	call GetBattleVar
	bit SUBSTATUS_SUBSTITUTE, a
	ret nz

	call Ability_LoadBattleMonBase
	ld d, b
	call GetAbility
	call Ability_LoadTracedAbility
	cp RATTLED
	ret nz

	ld a, d
	and a
	jr nz, .enemy_hp
	ld hl, wBattleMonHP
	jr .check_hp
.enemy_hp
	ld hl, wEnemyMonHP
.check_hp
	ld a, [hli]
	or [hl]
	ret z

	jp Ability_TriggerRattled

.done
	ret

Ability_TriggerRattled:
	push bc
	ldh a, [hBattleTurn]
	push af
	ld a, d
	ld b, a
	ldh [hBattleTurn], a
	ld a, RATTLED
	call Ability_LoadAbilityName
	ld hl, AbilityText_Rattled
	call StdAbilityTextbox
	ld b, d
	call MotorDriveBoostSpeed
	pop af
	ldh [hBattleTurn], a
	pop bc
	ret

Ability_TryRattledFromIntimidate:
	ld a, b
	xor 1
	ld d, a
	push bc
	and a
	jr nz, .target_enemy
	ld hl, wBattleMonPersonality
	ld a, [wBattleMonSpecies]
	ld c, a
	jr .have_target
.target_enemy
	ld hl, wEnemyMonPersonality
	ld a, [wEnemyMonSpecies]
	ld c, a
.have_target
	call GetAbility
	call Ability_LoadTracedAbility
	cp RATTLED
	jr nz, .done
	ld a, d
	and a
	jr nz, .enemy_hp
	ld hl, wBattleMonHP
	jr .check_hp
.enemy_hp
	ld hl, wEnemyMonHP
.check_hp
	ld a, [hli]
	or [hl]
	jr z, .done
	pop bc
	jp Ability_TriggerRattled
.done
	pop bc
	ret

TryActivateRoughSkin:
	ld a, BATTLE_VARS_MOVE
	call GetBattleVar
	and a
	ret z

	call GetMoveIndexFromID
	ld b, h
	ld c, l
	ld de, 2
	ld hl, ContactMoves
	call IsInWordArray
	ret nc

	call Ability_LoadBattleMonBase
	ld d, b
	call GetAbility
	call Ability_LoadTracedAbility
	ld e, a
	cp ROUGH_SKIN
	ret nz

	ld a, d
	and a
	jr nz, .ability_enemy_hp
	ld hl, wBattleMonHP
	jr .check_ability_hp
.ability_enemy_hp
	ld hl, wEnemyMonHP
.check_ability_hp
	ld a, [hli]
	or [hl]
	ret z

	ldh a, [hBattleTurn]
	and a
	jr nz, .attacker_enemy_hp
	ld hl, wBattleMonHP
	jr .check_attacker_hp
.attacker_enemy_hp
	ld hl, wEnemyMonHP
.check_attacker_hp
	ld a, [hli]
	or [hl]
	ret z

	push de

	farcall GetSixteenthMaxHP
	farcall SubtractHPFromUser
	call UpdateUserInParty

	pop de
	ldh a, [hBattleTurn]
	push af
	ld a, d
	ldh [hBattleTurn], a
	ld a, e
	call Ability_LoadAbilityName
	ld hl, AbilityText_RoughSkin
	call StdAbilityTextbox
	pop af
	ldh [hBattleTurn], a
	ret
