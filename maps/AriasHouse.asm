	object_const_def
	const MIKAN_ISLAND_ARIA
	const MIKAN_ISLAND_LUNA

AriasHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
AriasHouseLunaScript:
	faceplayer 
	opentext
	checkevent EVENT_LUNA_HAS_A_ITEM_FOR_YOU
	iftrue .RollForLunaLoot
	writetext LunaText
	cry CLEFAIRY
	waitbutton
	closetext
	turnobject MIKAN_ISLAND_LUNA, DOWN
	end
	
;Loot Table:
;Nothing 40%
;Stardust 20%
;Star Piece 20%
;Glitter Mail 10%
;Moon Stone 10%
	
.RollForLunaLoot
	applymovement MIKAN_ISLAND_LUNA, LunaSpinHopMovement
	writetext LunaText
	cry CLEFAIRY
	waitbutton
	random 10
	ifequal 0, .Nothing
	ifequal 1, .Nothing
	ifequal 2, .Nothing
	ifequal 3, .Nothing
	ifequal 4, .Stardust
	ifequal 5, .Stardust
	ifequal 6, .StarPiece
	ifequal 7, .StarPiece
	ifequal 8, .GlitterMail
	ifequal 9, .MoonStone
	
.Nothing:
	closetext
	clearevent EVENT_LUNA_HAS_A_ITEM_FOR_YOU
	turnobject MIKAN_ISLAND_LUNA, DOWN
	end

.Stardust:
	verbosegiveitem STARDUST
	iffalse .NoRoom
	closetext
	clearevent EVENT_LUNA_HAS_A_ITEM_FOR_YOU
	turnobject MIKAN_ISLAND_LUNA, DOWN
	end

.GlitterMail:
	verbosegiveitem GLITTER_MAIL
	iffalse .NoRoom
	closetext
	clearevent EVENT_LUNA_HAS_A_ITEM_FOR_YOU
	turnobject MIKAN_ISLAND_LUNA, DOWN
	end

.MoonStone:
	verbosegiveitem MOON_STONE
	iffalse .NoRoom
	closetext
	clearevent EVENT_LUNA_HAS_A_ITEM_FOR_YOU
	turnobject MIKAN_ISLAND_LUNA, DOWN
	end

.StarPiece:
	verbosegiveitem STAR_PIECE
	iffalse .NoRoom
	closetext
	clearevent EVENT_LUNA_HAS_A_ITEM_FOR_YOU
	turnobject MIKAN_ISLAND_LUNA, DOWN
	end
	
.NoRoom:
	writetext LunaNoRoomText
	waitbutton
	closetext
	clearevent EVENT_LUNA_HAS_A_ITEM_FOR_YOU
	turnobject MIKAN_ISLAND_LUNA, DOWN
	end
	
LunaNoRoomText:
	text "You don't have any"
	line "room for it!"
	
	para "LUNA changes her"
	line "mind…"
	done
	
LunaText:
	text "LUNA: Piipii!"
	done
	
AriasHouseAriaScript:
	faceplayer
	opentext
	checkevent EVENT_CISSY_DEFEATED
	iftrue .MainAriaScript
	writetext AriaTooBusyText
	waitbutton
	closetext
	end
	
.MainAriaScript:
	writetext AriaWantsToGossipText
	yesorno
	iftrue .GossipRoulette
	writetext AriaGossipRefusedText
	waitbutton
	closetext
	end
	
.GossipRoulette:
	writetext AriaLetsGossipText
	waitbutton
.GossipRoulette2:
	random 10
	ifequal 0, .Gossip1
	ifequal 1, .Gossip1
	ifequal 2, .Gossip2
	ifequal 3, .Gossip2
	ifequal 4, .Gossip3
	ifequal 5, .Gossip3
	ifequal 6, .Gossip4
	ifequal 7, .Gossip4
	ifequal 8, .Gossip5
	ifequal 9, .Gossip2 ;Troll
	sjump .GossipRoulette2
	
.Gossip1:
	writetext Gossip1Text ; TOPIC 1 (Oswald Orville)
	waitbutton
	closetext
	turnobject MIKAN_ISLAND_ARIA, UP
	cry CLEFAIRY
	opentext
	writetext Gossip1Text2
	waitbutton
	closetext
	applymovement MIKAN_ISLAND_LUNA, LunaSpinHopMovement
	cry CLEFAIRY
	faceplayer
	opentext
	writetext Gossip1Text3
	waitbutton
	writetext GossipEndText
	waitbutton
	closetext
	setevent EVENT_LUNA_HAS_A_ITEM_FOR_YOU
	end
	
.Gossip2:
	writetext Gossip2Text ; TOPIC 2 (Munna)
	waitbutton
	closetext
	turnobject MIKAN_ISLAND_ARIA, UP
	cry CLEFAIRY
	opentext
	writetext LunaText
	waitbutton
	closetext
	faceplayer
	opentext
	writetext Gossip2Text2
	waitbutton
	writetext GossipEndText
	waitbutton
	closetext
	setevent EVENT_LUNA_HAS_A_ITEM_FOR_YOU
	end

.Gossip3:
	writetext Gossip3Text ; TOPIC 3 (Constellations)
	waitbutton
	closetext
	showemote EMOTE_SLEEP, MIKAN_ISLAND_LUNA, 15
	opentext
	writetext GossipEndText
	waitbutton
	closetext
	setevent EVENT_LUNA_HAS_A_ITEM_FOR_YOU
	end

.Gossip4:
	writetext Gossip4Text ; TOPIC 4 (Millenium Comet)
	waitbutton
	closetext
	turnobject MIKAN_ISLAND_ARIA, UP
	cry CLEFAIRY
	opentext
	writetext Gossip4Text2
	waitbutton
	faceplayer
	writetext GossipEndText
	waitbutton
	closetext
	setevent EVENT_LUNA_HAS_A_ITEM_FOR_YOU
	end

.Gossip5:
	writetext Gossip5Text ; TOPIC 5 (Litleonids) Shortest one
	waitbutton
	closetext
	turnobject MIKAN_ISLAND_ARIA, UP
	cry CLEFAIRY
	opentext
	writetext Gossip5Text2
	waitbutton
	faceplayer
	writetext GossipEndText
	waitbutton
	closetext
	setevent EVENT_LUNA_HAS_A_ITEM_FOR_YOU
	end

AriaTooBusyText:
	text "ARIA: I'm too busy"
	line "to talk! I am"
	cont "finishing a report"
	cont "for my job. Come"
	cont "back later!"
	done
	
AriaWantsToGossipText:
	text "Hello!"
	para "I'm so bored! It's"
	line "gossip time! Wanna"
	cont "chat with me?"
	done
	
AriaGossipRefusedText:
	text "ARIA: Oh, boo!"
	line "You're no fun!"
	done
	
AriaLetsGossipText:
	text "ARIA: Yay! Let's"
	line "see…"
	done
	
Gossip1Text:
	text "ARIA: Ever heard"
	line "of PROF. OSWALD"
	cont "ORVILLE? His diss-"
	cont "ertation titled:"
	cont "“CHARIOTS OF THE"
	cont "POKéMON GODS” is"
	cont "simply amazing!"

	para "Some people call"
	line "him a scifi author"
	cont "but he insists"
	cont "what he writes"
	cont "about is absolute"
	cont "fact!"

	para "Get this, CLEFAIRY"
	line "come from space!"
	cont "Isn't that amazing?"
	cont "PROF. ORVILLE says"
	cont "so! I've asked LUNA"
	cont "if she's an alien,"
	cont "but she won't tell"
	cont "me…"
	
	para "Watch this… LUNA!"
	done

Gossip1Text2:
	text "LUNA: Pii?"

	para "ARIA: My friend"
	line "here wants to know"
	cont "if you're from"
	cont "space!"

	para "LUNA: Piipii? Pii…"
	done

Gossip1Text3:
	text "ARIA: Hmm… Wonder"
	line "if she's trying to"
	cont "tell us something."
	done

GossipEndText:
	text "ARIA: Well, that's"
	line "all I have to say"
	cont "about this topic!"

	para "Thanks for talking"
	line "with me!"
	done
	
Gossip2Text:
	text "I read about a"
	line "tasty rumor of a"
	cont "UFO online! Get"
	cont "this, this girl in"
	cont "KANTO claims to"
	cont "have seen a flying"
	cont "#MON. Round,"
	cont "with a pink body"
	cont "and flower petals"
	cont "printed on it!"
	cont "Totally out of"
	cont "this world, right?"
	cont "Many are skeptics,"
	cont "but you should"
	cont "believe everyone"
	cont "who seems sincere"
	cont "I think!"
	cont "Like, why would"
	cont "she lie about"
	cont "something like"
	cont "that?"

	para "Well, anyway, I"
	line "sent an email to"
	cont "the poster and"
	cont "she replied like,"
	cont "right away! Crazy,"
	cont "right? It's almost"
	cont "like some people"
	cont "live on the"
	cont "internet or"
	cont "something! Haha."
	cont "She said that she"
	cont "was sleeping and"
	cont "when she woke up"
	cont "she saw the UFO"
	cont "right next to her!"
	cont "It sprayed out a"
	cont "pink mist and flew"
	cont "out the window!"

	para "She said she"
	line "wasn't really"
	cont "scared because it"
	cont "was super cute,"
	cont "which I can totes"
	cont "relate! Get this,"
	cont "though! She said"
	cont "that she can't"
	cont "remember what she"
	cont "was dreaming of on"
	cont "that night…"
	cont "Isn't that creepy?"
	cont "Imagine if you"
	cont "woke up and saw"
	cont "a GENGAR by your"
	cont "bedside using"
	cont "DREAM EATER! Kyaa!"

	para "Oh, I'm gonna"
	line "have a hard time"
	cont "sleeping now…"
	cont "LUNA, won't you"
	cont "go to bed with me"
	cont "tonight?"
	done

Gossip2Text2:
	text "ARIA: That's very"
	line "reassuring!"
	done
	
Gossip3Text:
	text "ARIA: Have you"
	line "heard of the many"
	cont "constellations we"
	cont "astronomers have"
	cont "observed?"

	para "Usually if we"
	line "can make out the"
	cont "shape of a"
	cont "POKéMON in the"
	cont "stars, and then"
	cont "corroborated by"
	cont "others, it can be"
	cont "officially named"
	cont "a constellation!"

	para "As of right now,"
	line "the official"
	cont "constellations are"
	cont "the following:"

	para "TEDDIURSA and"
	line "URSARING are"
	cont "right next to"
	cont "each other, like"
	cont "child and mother."
	cont "Isn't that"
	cont "heartwarming?"
	cont "It's said that if"
	cont "the crescent moon"
	cont "lines up with"
	cont "TEDDIURSA's"
	cont "forehead, you'll"
	cont "have the most"
	cont "amazing dreams!"

	para "MILOTIC surrounds"
	line "those two as if to"
	cont "provide comfort"
	cont "to them. Though"
	cont "it looks to me as"
	cont "though MILOTIC is"
	cont "about to have a"
	cont "big meal. Scary!"

	para "The SEVIPER BEARER"
	line "constellation"
	cont "looks like a"
	cont "MACHOKE holding"
	cont "a SEVIPER… Dunno"
	cont "how that one got"
	cont "approved."

	para "Next to that one"
	line "is the GLIGAR"
	cont "constellation."
	cont "It looks like the"
	cont "letter 'S'!"

	para "The KYOGRE"
	line "constellation is"
	cont "by far the"
	cont "largest of them,"
	cont "crossing over the"
	cont "milky way as if"
	cont "it's swimming"
	cont "across the"
	cont "galaxy."

	para "GARDEVOIR stands"
	line "elegantly. It's"
	cont "very impressive!"

	para "And last but not"
	line "least is the one"
	cont "I discovered!"
	cont "The PIKACHU STAR!"
	cont "It took a lot of"
	cont "convincing but"
	cont "this red star"
	cont "looks like"
	cont "PIKACHU's cheek!"

	para "I'm sure there's"
	line "plenty more to be"
	cont "discovered but"
	cont "that's all of the"
	cont "ones we know of."

	para "Ah… I'm tired…"
	line "Sorry, I talked a"
	cont "lot about"
	cont "constellations…"
	done
	
Gossip4Text:
	text "ARIA: So there's a"
	line "comet that only"
	cont "comes once every"
	cont "thousand years!"
	cont "It's called the"
	cont "MILLENIUM COMET!"

	para "Get this…"
	line "I got to check it"
	cont "out on my"
	cont "telescope about"
	cont "a year ago!"

	para "Here's where it"
	line "gets crazy! When"
	cont "the comet flys by"
	cont "the planet, a"
	cont "certain #MON"
	cont "absorbs energy"
	cont "from it and"
	cont "awakens!"

	para "There was a news"
	line "report from the"
	cont "HOENN SPACE"
	cont "STATION around"
	cont "that time."

	para "It's said to be a"
	line "miraculous #MON"
	cont "that can grant"
	cont "wishes. Well, I"
	cont "say they better be"
	cont "miraculous if it"
	cont "only wakes up once"
	cont "a millenia!"

	para "If you could have"
	line "any wish granted"
	cont "what would it be?"
	cont "If it was me, I'd"
	cont "wish to be able to"
	cont "travel through"
	cont "space! I wonder"
	cont "what we would"
	cont "discover if we"
	cont "were able to go"
	cont "anywhere in the"
	cont "stars!"

	para "Would you wish for"
	line "the same thing,"
	cont "LUNA?"
	done

Gossip4Text2:
	text "LUNA: Pii…"

	para "ARIA: Hmm, not"
	line "quite? I wonder…"
	done
	
Gossip5Text:
	text "ARIA: So there's a"
	line "meteor shower that"
	cont "occurs sometimes."
	cont "The meteors are"
	cont "called LITLEONIDS!"
	cont "I guess they're"
	cont "named after some"
	cont "POKéMON from the"
	cont "KALOS region. The"
	cont "last time it"
	cont "occurred was when"
	cont "the MILLENIUM"
	cont "COMET passed by"
	cont "a year ago. Yeah,"
	cont "it was quite a"
	cont "sight…"

	para "The last meteor"
	line "shower to occur"
	cont "was a little over"
	cont "a decade before."
	cont "Hmm, probably"
	cont "around when you"
	cont "were born…? Maybe"
	cont "you came to the"
	cont "ORANGE ISLANDS"
	cont "from space, my"
	cont "friend! Haha,"
	cont "just kidding."
	done

Gossip5Text2:
	text "LUNA: Pii!"

	para "ARIA: Hmm? what"
	line "does that mean,"
	cont "LUNA?"
	done
	
LunaSpinHopMovement:
	turn_head DOWN
	step_sleep 4
	turn_head LEFT
	step_sleep 4
	turn_head UP
	step_sleep 4
	turn_head RIGHT
	step_sleep 4
	turn_head DOWN
	step_sleep 16
	step_end

AriasHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MIKAN_ISLAND, 9
	warp_event  3,  7, MIKAN_ISLAND, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, AriasHouseAriaScript, -1
	object_event  2,  3, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, AriasHouseLunaScript, -1