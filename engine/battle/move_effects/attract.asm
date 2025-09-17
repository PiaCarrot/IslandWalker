BattleCommand_Attract:
	ld a, [wAttackMissed]
	and a
	jr nz, .failed
	call CheckOppositeGender
	jr c, .failed
	call CheckHiddenOpponent
	jr nz, .failed
        ld a, BATTLE_VARS_SUBSTATUS1_OPP
        call GetBattleVarAddr
        bit SUBSTATUS_IN_LOVE, [hl]
        jr nz, .failed

        ldh a, [hBattleTurn]
        and a
        jr nz, .player_turn
        ld a, [wEnemyMonSpecies]
        ld c, a
        ld hl, wEnemyMonPersonality
        ld b, 1
        jr .check_oblivious
.player_turn
        ld a, [wBattleMonSpecies]
        ld c, a
        ld hl, wBattleMonPersonality
        ld b, 0
.check_oblivious
        farcall Check_Oblivious
        and a
        jr nz, .not_blocked
        ld hl, AbilityText_ObliviousInfatuation
        call StdAbilityTextbox
        ld a, 1
        ld [wAttackMissed], a
        jmp EndMoveEffect

.not_blocked
        set SUBSTATUS_IN_LOVE, [hl]

; 'fell in love!'
        ld hl, FellInLoveText
        jmp AnimateCurrentMoveText

.failed
	jmp FailMove

CheckOppositeGender:
	ld a, MON_SPECIES
	call BattlePartyAttr
	ld a, [hl]
	ld [wCurPartySpecies], a

	ld a, [wCurBattleMon]
	ld [wCurPartyMon], a
	xor a
	ld [wMonType], a

	farcall GetGender
	jr c, .genderless_samegender

	ld b, 1
	jr nz, .got_gender
	dec b

.got_gender
	push bc
	ld a, [wTempEnemyMonSpecies]
	ld [wCurPartySpecies], a
	ld hl, wEnemyMonIVs
	ld a, [wEnemySubStatus5]
	bit SUBSTATUS_TRANSFORMED, a
	jr z, .not_transformed
	ld hl, wEnemyBackupIVsAndPersonality
.not_transformed
	ld a, [hli]
	ld [wTempMonIVs], a
	ld a, [hli]
	ld [wTempMonIVs + 1], a
	ld a, [hli]
	ld [wTempMonIVs + 2], a
	ld a, [hl]
	ld [wTempMonIVs + 3], a
	ld a, TEMPMON
	ld [wMonType], a
	farcall GetGender
	pop bc
	jr c, .genderless_samegender

	ld a, 1
	jr nz, .got_enemy_gender
	dec a

.got_enemy_gender
	xor b
	jr z, .genderless_samegender

	and a
	ret

.genderless_samegender
	scf
	ret
