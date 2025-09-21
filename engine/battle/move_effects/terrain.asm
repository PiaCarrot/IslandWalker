BattleCommand_StartGrassyTerrain:
        ld a, TERRAIN_GRASSY
        call BattleCommand_StartTerrainCommon
        ld hl, GrassyTerrainText
        farjp AnimateCurrentMoveText

BattleCommand_StartMistyTerrain:
        ld a, TERRAIN_MISTY
        call BattleCommand_StartTerrainCommon
        ld hl, MistyTerrainText
        farjp AnimateCurrentMoveText

BattleCommand_StartElectricTerrain:
        ld a, TERRAIN_ELECTRIC
        call BattleCommand_StartTerrainCommon
        ld hl, ElectricTerrainText
        farjp AnimateCurrentMoveText

BattleCommand_StartPsychicTerrain:
        ld a, TERRAIN_PSYCHIC
        call BattleCommand_StartTerrainCommon
        ld hl, PsychicTerrainText
        farjp AnimateCurrentMoveText

BattleCommand_StartTerrainCommon:
	ld [wBattleTerrain], a
	ld a, 5
	ld [wTerrainCount], a
	farcall Ability_RecalculateStatsForTerrain
	ret
