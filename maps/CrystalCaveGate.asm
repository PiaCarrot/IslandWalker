	object_const_def

CrystalCaveGate_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, CrystalCaveGateRockCallback
	
CrystalCaveGateRockCallback:
	checkevent EVENT_CRYSTAL_CAVE_B1F_SCENE
	iffalse .DoNothing
	changeblock 10, 2, $02
.DoNothing
	endcallback
	
CrystalCaveGateGlassBlower1Script:
	jumptextfaceplayer CrystalCaveGateGlassBlowerText1
	
CrystalCaveGateGlassBlowerText1:
	text "There was a small"
	line "cave-in. Come back"
	cont "in a bit and I'll"
	cont "have it sorted!"
	done
	
CrystalCaveGateGlassBlower2Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_HARD_STONE_FROM_GLASSBLOWER
	iftrue .AlreadyGotHardStone
	writetext CrystalCaveGateGlassBlower2Text1
	waitbutton
	verbosegiveitem HARD_STONE
	iffalse .NoRoom
	closetext
	setevent EVENT_GOT_HARD_STONE_FROM_GLASSBLOWER
	end
.AlreadyGotHardStone
	writetext AlreadyGotHardStoneText
	waitbutton
	closetext
	end
.NoRoom
	writetext NoRoomForHardStoneText
	waitbutton
	closetext
	end
	
AlreadyGotHardStoneText:
	text "Phew! The path is"
	line "clear. Be careful"
	cont "out there!"
	done
	
CrystalCaveGateGlassBlower2Text1:
	text "Phew! The path is"
	line "clear. Be careful"
	cont "out there!"

	para "I found this. You"
	line "can have it!"
	done
	
NoRoomForHardStoneText:
	text "You have no room"
	line "for it."
	done

CrystalCaveGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, SUNBURST_ISLAND, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CrystalCaveGateGlassBlower1Script, EVENT_CRYSTAL_CAVE_B1F_SCENE
	object_event  6,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CrystalCaveGateGlassBlower2Script, EVENT_MATEOS_PASSION_RESTORED
