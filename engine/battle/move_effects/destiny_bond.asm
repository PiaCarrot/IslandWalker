BattleCommand_DestinyBond:
	ld a, BATTLE_VARS_SUBSTATUS5
	call GetBattleVarAddr
	set SUBSTATUS_DESTINY_BOND, [hl]
	ld hl, DestinyBondEffectText
	jmp AnimateCurrentMoveText
