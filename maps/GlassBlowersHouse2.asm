	object_const_def

GlassBlowersHouse2_MapScripts:
	def_scene_scripts

	def_callbacks
	
GlassBlowersHouse2CrystalScript:
	jumptext GlassBlowersHouse1CrystalText
	
GlassBlowersHouse2CrystalText:
	text "Genuine SUNBURST"
	line "crystalware."
	
	para "I better not break"
	line "it!"
	done
	
GlassBlowersHouse2CrucibleScript:
	jumptext GlassBlowersHouse1CrucibleText
	
GlassBlowersHouse2CrucibleText:
	text "A red-hot crucible"
	line "for heating up the"
	cont "crystal."
	
	para "It looks VERY hot!"
	done
	
GlassBlowersHouse2OvenScript:
	jumptext GlassBlowersHouse1OvenText
	
GlassBlowersHouse2OvenText:
	text "A hot stone oven"
	line "for heating up the"
	cont "crystal."
	
	para "You could probably"
	line "bake bread in it…"
	done
	
GlassBlower2Script:
	faceplayer
	opentext
	writetext Text_MillionDollarSunburstGlass
	special PlaceMoneyTopRight
	yesorno
	iffalse .refused
	writetext Text_ThoughtKidsWereLoaded
	waitbutton
	closetext
	end

.refused
	writetext Text_RefusedToBuySunburstGlass
	waitbutton
	closetext
	end
	
Text_MillionDollarSunburstGlass:
	text "Esteemed customer!"
	line "I have the deal of"
	cont "a lifetime for you"
	cont "right here!"
	
	para "Genuine, locally-"
	line "sourced SUNBURST"
	cont "CRYSTALWARE!"

	para "For the low price"
	line "of ¥10,000,000!"

	para "I'm sure your MOM"
	line "would be delighted"
	cont "with a gift like"
	cont "this!"
	
	para "What do you say?"
	done

Text_ThoughtKidsWereLoaded:
	text "Tch! I thought"
	line "kids these days"
	cont "were loaded…"
	done

Text_RefusedToBuySunburstGlass:
	text "You don't want it?"
	line "Then scram. Shoo!"
	cont "I don't need broke"
	cont "kids in my shop!"
	done

GlassBlowersHouse2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SUNBURST_ISLAND, 4
	warp_event  4,  7, SUNBURST_ISLAND, 4

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_READ, GlassBlowersHouse2CrucibleScript
	bg_event  4,  4, BGEVENT_READ, GlassBlowersHouse2OvenScript

	def_object_events
	object_event  1,  6, SPRITE_GOLD_TROPHY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, GlassBlowersHouse2CrystalScript, -1
	object_event  0,  6, SPRITE_GOLD_TROPHY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, GlassBlowersHouse2CrystalScript, -1
	object_event  2,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GlassBlower2Script, -1
