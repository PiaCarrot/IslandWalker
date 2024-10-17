	object_const_def

MateosHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
MateosHouseCrystalScript:
	jumptext MateosHouseCrystalText
	
MateosHouseCrystalText:
	text "A crystal figurine"
	line "of a #MON."
	
	para "I better not break"
	line "it!"
	done
	
MateosCrucibleScript:
	jumptext MateosCrucibleText
	
MateosCrucibleText:
	text "A red-hot crucible"
	line "for heating up the"
	cont "crystal."
	
	para "It looks VERY hot!"
	done
	
MateosOvenScript:
	jumptext MateosOvenText
	
MateosOvenText:
	text "A hot stone oven"
	line "for heating up the"
	cont "crystal."
	
	para "You could probably"
	line "bake bread in it…"
	done

MateosHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, SUNBURST_ISLAND, 2
	warp_event  6, 11, SUNBURST_ISLAND, 2
	warp_event  7, 11, SUNBURST_ISLAND, 2

	def_coord_events

	def_bg_events
	bg_event  4,  6, BGEVENT_READ, MateosCrucibleScript
	bg_event  6,  4, BGEVENT_READ, MateosOvenScript

	def_object_events
	object_event 10,  8, SPRITE_DIGLETT, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, MateosHouseCrystalScript, -1
	object_event  0, 10, SPRITE_PIKACHU, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, MateosHouseCrystalScript, -1
	object_event 11,  8, SPRITE_STARMIE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, MateosHouseCrystalScript, -1
	object_event  1,  8, SPRITE_ODDISH, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, MateosHouseCrystalScript, -1
	object_event 11,  6, SPRITE_GEODUDE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, MateosHouseCrystalScript, -1
	object_event  0,  6, SPRITE_VOLTORB, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, MateosHouseCrystalScript, -1
