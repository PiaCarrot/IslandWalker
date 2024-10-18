	object_const_def
	const GLASS_BLOWER_1_HOUSE_GLASSWARE_1
	const GLASS_BLOWER_1_HOUSE_GLASSWARE_2
	const GLASS_BLOWER_1_HOUSE_GLASSBLOWER

GlassBlowersHouse1_MapScripts:
	def_scene_scripts

	def_callbacks
	
GlassBlowersHouse1CrystalScript:
	jumptext GlassBlowersHouse1CrystalText
	
GlassBlowersHouse1CrystalText:
	text "Wow! It's a CRYSTAL"
	line "# BALL."
	
	para "I better not break"
	line "it!"
	done
	
GlassBlowersHouse1CrucibleScript:
	jumptext GlassBlowersHouse1CrucibleText
	
GlassBlowersHouse1CrucibleText:
	text "A red-hot crucible"
	line "for heating up the"
	cont "crystal."
	
	para "It looks VERY hot!"
	done
	
GlassBlowersHouse1OvenScript:
	jumptext GlassBlowersHouse1OvenText
	
GlassBlowersHouse1OvenText:
	text "A hot stone oven"
	line "for heating up the"
	cont "crystal."
	
	para "You could probably"
	line "bake bread in it…"
	done
	
GlassBlower1Script:
	checkevent EVENT_GOT_CHARCOAL_FROM_GLASSBLOWER
	iftrue .AlreadyGotCharcoal
	opentext
	writetext GlassBlower1Text1
	waitbutton
	closetext
	faceplayer
	showemote EMOTE_SAD, GLASS_BLOWER_1_HOUSE_GLASSBLOWER, 15
	opentext
	writetext GlassBlower1Text2
	waitbutton
	verbosegiveitem CHARCOAL
	iffalse .NoRoom
	closetext
	setevent EVENT_GOT_CHARCOAL_FROM_GLASSBLOWER
	turnobject GLASS_BLOWER_1_HOUSE_GLASSBLOWER, LEFT
	end
.AlreadyGotCharcoal
	opentext
	writetext AlreadyGotCharcoalText
	waitbutton
	closetext
	end
.NoRoom
	writetext NoRoomForCharcoalText
	waitbutton
	closetext
	end
	
GlassBlower1Text1:
	text "YEEEOWCH!"
	done
	
GlassBlower1Text2:
	text "I burned myself."
	line "This popped out of"
	cont "the crucible. You"
	cont "can have it."
	done
	
AlreadyGotCharcoalText:
	text "I bet a FIRE-type"
	line "#MON could use"
	cont "that."
	done
	
NoRoomForCharcoalText:
	text "You have no room"
	line "for it."
	done

GlassBlowersHouse1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SUNBURST_ISLAND, 3
	warp_event  4,  7, SUNBURST_ISLAND, 3

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_READ, GlassBlowersHouse1CrucibleScript
	bg_event  4,  4, BGEVENT_READ, GlassBlowersHouse1OvenScript

	def_object_events
	object_event  1,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, GlassBlowersHouse1CrystalScript, -1
	object_event  0,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, GlassBlowersHouse1CrystalScript, -1
	object_event  1,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GlassBlower1Script, -1
