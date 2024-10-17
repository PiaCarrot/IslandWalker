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

CrystalOnixFigurineScript:
	jumptext CrystalOnixFigurineText
	
CrystalOnixFigurineText:
	text "A huge sculpture"
	line "of the CRYSTAL"
	cont "ONIX. It looks so"
	cont "life-like!"
	done

MateosHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, SUNBURST_ISLAND, 2
	warp_event  6, 11, SUNBURST_ISLAND, 2

	def_coord_events

	def_bg_events
	bg_event  4,  6, BGEVENT_READ, MateosCrucibleScript
	bg_event  6,  4, BGEVENT_READ, MateosOvenScript

	def_object_events
	object_event 11,  6, SPRITE_STARMIE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, MateosHouseCrystalScript, -1
	object_event  0,  4, SPRITE_GEODUDE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, MateosHouseCrystalScript, -1
	object_event  0,  8, SPRITE_VOLTORB, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, MateosHouseCrystalScript, -1
	object_event 10, 10, SPRITE_BIG_ONIX, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, CrystalOnixFigurineScript, EVENT_MATEOS_PASSION_RESTORED
	object_event  6,  7, SPRITE_MATEO, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8,  7, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  7, SPRITE_TRACEY, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
