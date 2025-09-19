ActivateRattledSpeedBoost:
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

	ld b, d
	farcall MotorDriveBoostSpeed

	ld a, [wFailedMessage]
	and a
	jr nz, .done
	ld a, RATTLED
	call Ability_LoadAbilityName
	ld hl, AbilityText_Rattled
	call StdAbilityTextbox
	.done
	xor a
	ld [wFailedMessage], a
	ret

TryActivateRattledFromIntimidate:
	ld a, e
	cp RATTLED
	ret nz
	ld a, [wFailedMessage]
	and a
	ret nz
	ld a, b
	xor 1
	ld d, a
	jp ActivateRattledSpeedBoost

TryActivateRattled:
	ld hl, wCurDamage
	ld a, [hli]
	or [hl]
	ret z
	ld a, [wIsConfusionDamage]
	and a
	ret nz
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

	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp BUG
	jr z, .trigger
	cp GHOST
	jr z, .trigger
	cp DARK
	ret nz
	.trigger
	jp ActivateRattledSpeedBoost
