	object_const_def

TangeloIslandNorthHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
TangeloNorthHouseOfficerScript:
	faceplayer
	opentext
	random 2
	ifequal 0, .Text1
	ifequal 1, .Text2
	closetext
	end
	
.Text1:
	writetext TangeloNorthHouseOfficerJennyText1
	waitbutton
	closetext
	end
.Text2:
	writetext TangeloNorthHouseOfficerJennyText2
	waitbutton
	closetext
	end
	
TangeloNorthHouseOfficerJennyText1:
	text "TANGELO ISLAND is"
	line "on the far western"
	cont "side of the ORANGE"
	cont "ARCHIPELAGO."

	para "Only by boat or by"
	line "using a strong WA-"
	cont "TER #MON can"
	cont "you explore it."
	done

TangeloNorthHouseOfficerJennyText2:
	text "There are several"
	line "islands that have"
	cont "not been explored"
	cont "properly."

	para "Some just aren't"
	line "habitable. Some"
	cont "are protected so"
	cont "wild #MON can"
	cont "live freely."
	
	para "Since you have a"
	line "#DEX, access to"
	cont "those reserves are"
	cont "permitted."
	done
	
TangeloIslandNorthHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, TANGELO_ISLAND, 2
	warp_event  3,  7, TANGELO_ISLAND, 2

	def_coord_events

	def_bg_events

	def_object_events
	person_event SPRITE_OFFICER, 3, 2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, TangeloNorthHouseOfficerScript, -1