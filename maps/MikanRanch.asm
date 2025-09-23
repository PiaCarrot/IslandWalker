	object_const_def
	const MIKAN_RANCH_MILTANK_1
	const MIKAN_RANCH_MILTANK_2
	const MIKAN_RANCH_MILTANK_3
	const MIKAN_RANCH_TAUROS
	const MIKAN_RANCH_RANCHER

MikanRanch_MapScripts:
	def_scene_scripts

	def_callbacks
	
MikanRanchRancherScript:
	jumptextfaceplayer MikanRanchRancherText
	
MikanRanchRancherText:
	text "Howdy! Welcome to"
	line "MIKAN RANCH. Our"
	cont "mission is sharin'"
	cont "the joy of MOOMOO"
	cont "MILK right here on"
	cont "MIKAN ISLAND!"
	
	para "If you'd like to"
	line "buy a bottle, my"
	cont "sister sells it in"
	cont "the barn."
	done
	
MikanRanchSign:
	jumptext MikanRanchSignText
	
MikanRanchSignText:
	text "MIKAN RANCH"
	para "Proud suppliers of"
	line "MIKAN GYM."
	done
	
MikanRanchBarnSign:
	jumptext MikanRanchBarnSignText
	
MikanRanchBarnSignText:
	text "BARN"
	para "MOOMOO MILK sold"
	line "inside!"
	done
	
MikanRanchMiltankScript:
	opentext
	writetext MikanRanchMiltankText
	cry MILTANK
	waitbutton
	closetext
	end
	
MikanRanchMiltankText:
	text "Mooooo!"
	done
	
MikanRanchTaurosScript:
	opentext
	writetext MikanRanchTaurosText
	cry TAUROS
	waitbutton
	closetext
	end
	
MikanRanchTaurosText:
	text "Mooorrgh!"
	done
	
MikanRanchNugget:
	itemball NUGGET
	
MikanRanchHiddenStick:
	hiddenitem STICK, EVENT_MIKAN_RANCH_HIDDEN_STICK

MikanRanch_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  8, MIKAN_RANCH_BARN, 1
	warp_event  4,  9, MIKAN_RANCH_BARN, 2
	warp_event  9,  9, MIKAN_RANCH_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 11, 10, BGEVENT_READ, MikanRanchSign
	bg_event  5,  7, BGEVENT_READ, MikanRanchBarnSign
	bg_event  4, 14, BGEVENT_ITEM, MikanRanchHiddenStick

	def_object_events
	object_event  5,  5, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, MikanRanchMiltankScript, -1
	object_event 14, 11, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, MikanRanchMiltankScript, -1
	object_event 13,  7, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, MikanRanchMiltankScript, -1
	object_event  5, 12, SPRITE_TAUROS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MikanRanchTaurosScript, -1
	object_event 10, 13, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MikanRanchRancherScript, -1
	object_event  4,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MikanRanchNugget, EVENT_MIKAN_RANCH_NUGGET
