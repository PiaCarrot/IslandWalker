BattleAnimationsGen4::
	rept NUM_ATTACKS - GEN3_MOVES - 4
		dw BattleAnim_Pound
	endr
	dw BattleAnim_TerrainMist ; Grassy Terrain
	dw BattleAnim_TerrainMist ; Misty Terrain
	dw BattleAnim_TerrainMist ; Electric Terrain
	dw BattleAnim_TerrainMist ; Psychic Terrain
.IndirectEnd::

BattleAnim_TerrainMist:
	anim_obp0 $54
	anim_1gfx BATTLE_ANIM_GFX_HAZE
	anim_sound 0, 0, SFX_SURF
.loop
	anim_obj BATTLE_ANIM_OBJ_MIST, 48, 56, $0
	anim_wait 8
	anim_loop 10, .loop
	anim_wait 96
	anim_ret
