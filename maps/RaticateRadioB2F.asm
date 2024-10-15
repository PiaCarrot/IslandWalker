	object_const_def

RaticateRadioB2F_MapScripts:
	def_scene_scripts

	def_callbacks
	
lol:
	jumptext loltext
	
loltext:
	text "Join us, fleshbag."
	done

RaticateRadioB2FHiddenBlackglasses:
	hiddenitem BLACKGLASSES, EVENT_RATICATE_RADIO_B2F_HIDDEN_BLACKGLASSES

RaticateRadioB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 13, RATICATE_RADIO_B1F, 12
	warp_event  0,  5, RATICATE_RADIO_B1F, 2

	def_coord_events

	def_bg_events
	bg_event 13,  5, BGEVENT_ITEM, RaticateRadioB2FHiddenBlackglasses

	def_object_events
	object_event  5,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1 ; Butch
	object_event  7,  4, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1 ; Cassidy
	object_event  6,  6, SPRITE_LOOKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1 ; Looker
	object_event  9,  4, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  4, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8,  5, SPRITE_POLIWAG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  5, SPRITE_GRIMER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6,  2, SPRITE_DROWZEE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, lol, -1 ; SPRITE_DROWZEE
	