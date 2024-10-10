	object_const_def

MikanIslandRoute53Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks
	
MikanIslandRoute53Gate2FBinoculars:
	opentext
	readvar VAR_FACING
	ifequal UP, .UseBinoculars
	writetext MikanIslandRoute53Gate2FBinocularsWrongWayText
	waitbutton
	closetext
	end
.UseBinoculars
	checktime MORN | DAY
	iftrue .day_morn
	checktime EVE
	iftrue .eve
	checktime NITE
	iftrue .nite
.day_morn
	writetext MikanIslandRoute53Gate2FBinocularsDayText
	waitbutton
	closetext
	end
.eve
	writetext MikanIslandRoute53Gate2FBinocularsEveText
	waitbutton
	closetext
	end
.nite
	writetext MikanIslandRoute53Gate2FBinocularsNiteText
	waitbutton
	closetext
	end
	
MikanIslandRoute53Gate2FBinocularsDayText:
	text "Huh? There's a big"
	line "clearing in the"
	cont "bamboo THICKET."
	done
	
MikanIslandRoute53Gate2FBinocularsEveText:
	text "The sun is setting,"
	line "but a clearing can"
	cont "be seen in the"
	cont "bamboo THICKET."
	done
	
MikanIslandRoute53Gate2FBinocularsNiteText:
	text "It's really dark"
	line "out there, but the"
	cont "soft glow of some"
	cont "homes can be seen"
	cont "in the bamboo"
	cont "THICKET."
	done
	
MikanIslandRoute53Gate2FBinocularsWrongWayText:
	text "I can't see any-"
	line "thing from this"
	cont "side."
	done
	
Charlie:
	faceplayer
	opentext
	trade NPC_TRADE_KYLE
	waitbutton
	closetext
	end

MikanIslandRoute53Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  2, MIKAN_ISLAND_ROUTE_53_GATE_1F, 5

	def_coord_events

	def_bg_events
	bg_event  4,  3, BGEVENT_READ, MikanIslandRoute53Gate2FBinoculars
	bg_event  7,  3, BGEVENT_READ, MikanIslandRoute53Gate2FBinoculars

	def_object_events
	object_event  2,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, Charlie, -1
