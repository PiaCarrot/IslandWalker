	object_const_def

RaticateRadioB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
RaticateRadioTMThief:
	end
	
RaticateRadioEscapeRope:
	itemball ESCAPE_ROPE
	
RaticateRadioSmokeBall:
	itemball SMOKE_BALL
	
RaticateRadioB1FGrunt1Script:
	end
RaticateRadioB1FGrunt2Script:
	end
RaticateRadioB1FGrunt3Script:
	end
RaticateRadioB1FGrunt4Script:
	end
RaticateRadioB1FGrunt5Script:
	end
RaticateRadioB1FGrunt6Script:
	end
RaticateRadioB1FGrunt7Script:
	end
RaticateRadioB1FGrunt8Script:
	end
RaticateRadioB1FScientistScript:
	end

RaticateRadioB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 39,  0, MANDARIN_NORTH, 7
	warp_event 24,  3, RATICATE_RADIO_B1F, 3
	warp_event 39, 11, RATICATE_RADIO_B1F, 2
	warp_event 32, 23, RATICATE_RADIO_B1F, 5
	warp_event  0,  3, RATICATE_RADIO_B1F, 4
	warp_event 14,  3, RATICATE_RADIO_B1F, 7
	warp_event  0, 39, RATICATE_RADIO_B1F, 6
	warp_event  0, 31, RATICATE_RADIO_B1F, 9
	warp_event 27, 39, RATICATE_RADIO_B1F, 8
	warp_event 20, 19, RATICATE_RADIO_B1F, 11
	warp_event 36, 39, RATICATE_RADIO_B1F, 10
	warp_event 32, 31, RATICATE_RADIO_B2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 38, 33, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, RaticateRadioB1FGrunt1Script, -1
	object_event 33, 36, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, RaticateRadioB1FGrunt2Script, -1
	object_event 15, 26, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, RaticateRadioB1FGrunt3Script, -1
	object_event 25, 23, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, RaticateRadioB1FGrunt4Script, -1
	object_event 36, 21, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, RaticateRadioB1FGrunt5Script, -1
	object_event  2, 18, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, RaticateRadioB1FGrunt6Script, -1
	object_event 15, 35, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, RaticateRadioB1FGrunt7Script, -1
	object_event 23, 37, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, RaticateRadioB1FGrunt8Script, -1
	object_event 11, 31, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, RaticateRadioB1FScientistScript, -1
	object_event 13, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RaticateRadioEscapeRope, EVENT_RATICATE_RADIO_ESCAPE_ROPE
	object_event  8,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RaticateRadioSmokeBall, EVENT_RATICATE_RADIO_SMOKE_BALL
	object_event 20, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_ITEMBALL, 0, RaticateRadioTMThief, EVENT_TM_46_THIEF
	object_event 26, 21, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1 ; Butch
	object_event 26, 20, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1 ; Cassidy
	object_event 33,  3, SPRITE_LOOKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1 ; Looker
	