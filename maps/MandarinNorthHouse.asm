	object_const_def
	const MANDARIN_NORTH_HOUSE_ROCKER

MandarinNorthHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
MandarinNorthHouseRockerScript:
	checkevent EVENT_MANDARIN_NORTH_ZORUA_BATTLE
	iftrue .FoundZorua
	checkevent EVENT_MANDARIN_NORTH_OLD_LADY_HELPED
	iftrue .OldLadyHelped
	jumptextfaceplayer MandarinNorthHouseRockerText1
	end

.FoundZorua:
	jumptextfaceplayer MandarinNorthHouseRockerText3
	end

.OldLadyHelped:
	jumptextfaceplayer MandarinNorthHouseRockerText2
	end
	
MandarinNorthHouseRockerText1:
	text "There used to be a"
	line "nice old lady that"
	cont "lived in town. She"
	cont "passed a few years"
	cont "ago."

	para "She had a #MON"
	line "that she loved a"
	cont "lot, but when she"
	cont "died, no one could"
	cont "find it."
	done

MandarinNorthHouseRockerText2:
	text "There used to be a"
	line "nice old lady that"
	cont "lived in town. She"
	cont "passed a few years"
	cont "ago."

	para "She had a #MON"
	line "that she loved a"
	cont "lot, but when she"
	cont "died, no one could"
	cont "find it."
	
	para "… … …"
	
	para "Hey, now. It's not"
	line "nice to make jokes"
	cont "about the dead"
	cont "like that."
	done

MandarinNorthHouseRockerText3:
	text "There used to be a"
	line "nice old lady that"
	cont "lived in town. She"
	cont "passed a few years"
	cont "ago."

	para "She had a #MON"
	line "that she loved a"
	cont "lot, but when she"
	cont "died, no one could"
	cont "find it."
	
	para "… … …"
	
	para "I just remembered"
	line "what #MON it"
	cont "was. ZORUA. It's a"
	cont "really rare one!"
	done
	
MandarinNorthHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MANDARIN_NORTH, 2
	warp_event  3,  7, MANDARIN_NORTH, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, MandarinNorthHouseRockerScript, -1