BattleCommand_LockOn:
	call CheckSubstituteOpp
	jr nz, .fail

	ld a, [wAttackMissed]
	and a
	jr nz, .fail

	ld a, BATTLE_VARS_SUBSTATUS5_OPP
	call GetBattleVarAddr
	set SUBSTATUS_LOCK_ON, [hl]
	ld hl, TookAimText
	jmp AnimateCurrentMoveText

.fail
	call AnimateFailedMove
	jmp PrintDidntAffect
