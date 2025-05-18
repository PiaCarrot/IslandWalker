BattleCommand_FocusEnergy:
	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVarAddr
	bit SUBSTATUS_FOCUS_ENERGY, [hl]
	jmp nz, BattleEffect_ButItFailed ; already pumped
	set SUBSTATUS_FOCUS_ENERGY, [hl]
	ld hl, GettingPumpedText
	jmp AnimateCurrentMoveText
