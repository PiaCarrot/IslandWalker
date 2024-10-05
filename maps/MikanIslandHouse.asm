	object_const_def
	const MIKAN_ISLAND_FISHING_POLE_CRAFTER

MikanIslandHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
MikanFishPoleCrafterScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_OLD_ROD
	iftrue .AlreadyGotOldRod
	checkevent EVENT_STARTED_OLD_ROD_SIDEQUEST
	iftrue .SidequestSubBranch
	writetext MikanFishingPoleCrafterText1
	waitbutton
	closetext
	setevent EVENT_STARTED_OLD_ROD_SIDEQUEST
	end
	
.AlreadyGotOldRod:
	writetext MikanFishingPoleCrafterText2
	waitbutton
	closetext
	end
	
.SidequestSubBranch: ; The long part lol
	checkevent EVENT_OLD_ROD_SIDEQUEST_GIVEN_BAMBOO
	iftrue .DoIHaveSilk
	checkitem TINY_BAMBOO
	iftrue .GiveTinyBamboo
	writetext MikanFishingPoleCrafterText3
	waitbutton
	closetext
	end
	
.GiveTinyBamboo:
	writetext MikanFishingPoleCrafterText4
	yesorno
	iftrue .TinyBambooText
	closetext
	end
.TinyBambooText
	writetext MikanFishingPoleCrafterText5
	waitbutton
	takeitem TINY_BAMBOO
	setevent EVENT_OLD_ROD_SIDEQUEST_GIVEN_BAMBOO
	writetext MikanFishingPoleCrafterText6
	waitbutton
	closetext
	end
	
.DoIHaveSilk:
	checkitem SPIDER_SILK
	iftrue .GiveSpiderSilk
	writetext MikanFishingPoleCrafterText7
	waitbutton
	closetext
	end	
	
.GiveSpiderSilk:
	writetext MikanFishingPoleCrafterText8
	yesorno
	iftrue .SpiderSilkText
	closetext
	end
.SpiderSilkText
	writetext MikanFishingPoleCrafterText9
	waitbutton
	takeitem SPIDER_SILK
	verbosegiveitem OLD_ROD
	writetext MikanFishingPoleCrafterText10
	waitbutton
	closetext
	setevent EVENT_GOT_OLD_ROD
	end
	
MikanFishingPoleCrafterText1:
	text "Howdy there! I'm"
	line "PAT! But everyone"
	cont "knows me as the"
	cont "BAMBOO ROD maker."
	
	para "I make them for"
	line "everyone, with the"
	cont "hope they'll reel"
	cont "in a big one!"
	
	para "I'd love to give"
	line "one to you, but"
	cont "I'm fresh out of"
	cont "materials."
	
	para "I'll make you one,"
	line "if you get me some"
	cont "things."
	
	para "The first thing I"
	line "need is a piece of"
	cont "TINY BAMBOO."
	
	para "You can find some"
	line "in that thicket"
	cont "behind the GYM."
	
	para "Sometimes the wild"
	line "#MON carry them"
	cont "too."
	done
	
MikanFishingPoleCrafterText2:
	text "How's that BAMBOO"
	line "ROD holding up?"
	
	para "I hope you'll get"
	line "a big catch with"
	cont "it!"
	done
	
MikanFishingPoleCrafterText3:
	text "The first thing I"
	line "need is a piece of"
	cont "TINY BAMBOO."
	
	para "You can find some"
	line "in that thicket"
	cont "behind the GYM."
	
	para "Sometimes the wild"
	line "#MON carry them"
	cont "too."
	done
	
MikanFishingPoleCrafterText4:
	text "Did you bring me"
	line "some TINY BAMBOO?"
	done

MikanFishingPoleCrafterText5:
	text "<PLAYER> gave the"
	line "TINY BAMBOO."
	done
	
MikanFishingPoleCrafterText6:
	text "Great! Now we just"
	line "need a line to go"
	cont "with our ROD!"
	
	para "I need SPIDER SILK"
	line "now. You can find"
	cont "SPIDER SILK from"
	cont "WILD SPINARAK."
	
	para "You might find a"
	line "SPINARAK in the"
	cont "TANGELO JUNGLE at"
	cont "night. My mother"
	cont "outside also sells"
	cont "it, for a modest"
	cont "price."
	done

MikanFishingPoleCrafterText7:
	text "I need SPIDER SILK"
	line "now. You can find"
	cont "SPIDER SILK from"
	cont "WILD SPINARAK."
	
	para "You might find a"
	line "SPINARAK in the"
	cont "TANGELO JUNGLE at"
	cont "night. My mother"
	cont "outside also sells"
	cont "it, for a modest"
	cont "price."
	done

MikanFishingPoleCrafterText8:
	text "Did you bring me"
	line "some SPIDER SILK?"
	done
	
MikanFishingPoleCrafterText9:
	text "Alright! I think"
	line "that's everything!"
	
	para "… … … … … …"
	line "… … … … … …"
	
	para "Here you go!"
	done
	
MikanFishingPoleCrafterText10:
	text "I hope you'll get"
	line "a big catch with"
	cont "it!"
	done

MikanIslandHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MIKAN_ISLAND, 3
	warp_event  3,  7, MIKAN_ISLAND, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2, 4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MikanFishPoleCrafterScript, -1