	object_const_def
	const MIKAN_RANCH_HOUSE_OWNER

MikanRanchHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
MikanRanchHouseOwnerScript:
	faceplayer
	opentext
	checkevent EVENT_DRAKE_DEFEATED
	iftrue .PaldeanBreedShop
	writetext MikanRanchHouseOwnerText
	waitbutton
	closetext
	end
	
.PaldeanBreedShop ;TODO
	closetext
	end
	
MikanRanchHouseOwnerText:
	text "Howdy! How do you"
	line "like my RANCH?"
	
	para "Please, enjoy your"
	line "stay, partner!"
	done

MikanRanchHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, MIKAN_RANCH, 3
	warp_event  5,  7, MIKAN_RANCH, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MikanRanchHouseOwnerScript, -1
