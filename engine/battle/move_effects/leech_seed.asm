BattleCommand_LeechSeed:
	ld a, [wAttackMissed]
	and a
	jr nz, .evaded
	farcall CheckSubstituteOpp
	jr nz, .evaded

	ld de, wEnemyMonType1
	ldh a, [hBattleTurn]
	and a
	jr z, .ok
	ld de, wBattleMonType1
.ok

	ld a, [de]
	cp GRASS
	jr z, .grass
	inc de
	ld a, [de]
	cp GRASS
	jr z, .grass

	ld a, BATTLE_VARS_SUBSTATUS4_OPP
	call GetBattleVarAddr
	bit SUBSTATUS_LEECH_SEED, [hl]
	jr nz, .evaded
	set SUBSTATUS_LEECH_SEED, [hl]
	ld hl, WasSeededText
	farjp AnimateCurrentMoveText

.grass
	farcall AnimateFailedMove
	farjp PrintDoesntAffect

.evaded
	farcall AnimateFailedMove
	ld hl, EvadedText
	jmp StdBattleTextbox
