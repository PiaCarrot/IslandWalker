SECTION "Battle Commands 2", ROMX

BattleCommandPointers2:
; entries correspond to macros/scripts/battle_commands.asm
	dw BattleCommand_StartLoop
	dw BattleCommand_StartHail
	dw BattleCommand_StartGrassyTerrain
	dw BattleCommand_StartMistyTerrain
	dw BattleCommand_StartElectricTerrain
	dw BattleCommand_StartPsychicTerrain
	dw BattleCommand_DoubleMinimizeDamage
	dw BattleCommand_DoubleFlyingDamage
	dw BattleCommand_DoubleUndergroundDamage
	dw BattleCommand_SkipSunCharge
	dw BattleCommand_ThunderAccuracy
	dw BattleCommand_MirrorCoat
	dw BattleCommand_ClearHazards
	dw BattleCommand_PerishSong
	dw BattleCommand_Spikes
	dw BattleCommand_Endure
	dw BattleCommand_Protect
	dw BattleCommand_Thief
	dw BattleCommand_Screen
	dw BattleCommand_LeechSeed
	dw BattleCommand_Disable
	dw BattleCommand_Recoil
	dw BattleCommand_TrapTarget
	dw BattleCommand_Curl
	dw BattleCommand_StoreEnergy
	dw BattleCommand_UnleashEnergy
	dw BattleCommand_Spite
	dw BattleCommand_Conversion
	dw BattleCommand_Conversion2
	dw BattleCommand_BeatUpFailText
	dw BattleCommand_BeatUp
	dw BattleCommand_KickCounter
	dw BattleCommand_TripleKick
	dw BattleCommand_RageDamage
	dw BattleCommand_BuildOpponentRage
	dw BattleCommand_Rage
	dw BattleCommand_PayDay
	dw BattleCommand_Pursuit
	dw BattleCommand_HappinessPower
	dw BattleCommand_FrustrationPower
	dw BattleCommand_LowKick
.IndirectEnd::


INCLUDE "engine/battle/effect_commands_2.asm"
