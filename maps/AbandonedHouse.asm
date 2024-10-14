	object_const_def
	const ABANDONED_HOUSE_ZORUA

AbandonedHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, MandarinNorthZoruaCallback
	
MandarinNorthZoruaCallback:
	checkevent EVENT_MANDARIN_NORTH_ZORUA_BATTLE
	iftrue .Done
	checkitem EXCEL_SCOPE
	iffalse .Done
	checkevent EVENT_MANDARIN_NORTH_ZORUA_ILLUSIONED
	iffalse .Done
	opentext
	writetext MandarinNorthExcelScopeReaction
	yesorno
	iffalse .Done
	closetext
	playsound SFX_BOOT_PC
	waitsfx
	appear ABANDONED_HOUSE_ZORUA
	clearevent EVENT_MANDARIN_NORTH_ZORUA_ILLUSIONED
.Done:
	closetext
	endcallback

MandarinNorthExcelScopeReaction:
	text "An odd presence is"
	line "felt."
	
	para "Do you want to use"
	line "the EXCEL SCOPE?"
	done
	
AbandonedHouseZoruaScript:
	special FadeOutMusic
	opentext
	writetext AbandonedHouseZoruaText
	waitbutton
	closetext
	cry SENTRET ; TODO: ZORUA
	loadwildmon SENTRET, 30 ; TODO: ZORUA
	startbattle
	disappear ABANDONED_HOUSE_ZORUA
	setevent EVENT_MANDARIN_NORTH_ZORUA_BATTLE
	setevent EVENT_MANDARIN_NORTH_ZORUA_ILLUSIONED
	reloadmapafterbattle
	end
	
AbandonedHouseZoruaText:
	text "Hee-hee!"
	done

AbandonedHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MANDARIN_NORTH, 1
	warp_event  3,  7, MANDARIN_NORTH, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  1, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, AbandonedHouseZoruaScript, EVENT_MANDARIN_NORTH_ZORUA_ILLUSIONED
