; wEventFlags bit flags

	const_def
; The first eight flags are reset upon reloading the map
	const EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	const EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	const EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	const EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	const EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	const EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	const EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	const EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
; Johto Gym Leader TM gifts
; HMs (EVENT_GOT_HM07_WATERFALL is with the Johto itemballs)
; Rods
	const EVENT_GOT_OLD_ROD
	const EVENT_GOT_GOOD_ROD
	const EVENT_GOT_SUPER_ROD
; Johto story events
	const EVENT_GOT_A_POKEMON_FROM_IVY
	const EVENT_GOT_CHARMANDER_FROM_IVY
	const EVENT_GOT_SQUIRTLE_FROM_IVY
	const EVENT_GOT_BULBASAUR_FROM_IVY
	const EVENT_GOT_PIKACHU_FROM_IVY
	const EVENT_GOT_EEVEE_FROM_IVY
	const EVENT_GOT_DRATINI_FROM_IVY
	const EVENT_MEET_SECRET_STARTER_REQS
	const EVENT_MET_CROSS_ON_VALENCIA
	const EVENT_GOT_TOWN_MAP
	const EVENT_PASSED_LORELEI_R49
	const EVENT_GOT_BALL_FROM_GUY_TANGELO
	const EVENT_TANGELO_GAVE_GRANDAUGHTER_STASH
	const EVENT_TANGELO_OLD_MAN_GIVEN_STASH
	const EVENT_TANGELO_OLD_MAN_SIDEQUEST_STARTED
; Johto hidden items
	const EVENT_ROUTE_49_HIDDEN_POTION
	const EVENT_ROUTE_49_HIDDEN_STAR_PIECE
	const EVENT_TANGELO_HIDDEN_BIG_MUSHROOM
	const EVENT_TANGELO_HIDDEN_TINY_MUSHROOM

; Crystal-exclusive events in Johto

; Kanto story events

; Kanto hidden items

; Kurt Apricorn events
	const EVENT_GAVE_KURT_RED_APRICORN
	const EVENT_GAVE_KURT_BLU_APRICORN
	const EVENT_GAVE_KURT_YLW_APRICORN
	const EVENT_GAVE_KURT_GRN_APRICORN
	const EVENT_GAVE_KURT_WHT_APRICORN
	const EVENT_GAVE_KURT_BLK_APRICORN
	const EVENT_GAVE_KURT_PNK_APRICORN
; Phone events
	const EVENT_JACK_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_BEVERLY_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_HUEY_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_GOT_PROTEIN_FROM_HUEY
	const EVENT_GOT_HP_UP_FROM_JOEY
	const EVENT_GOT_CARBOS_FROM_VANCE
	const EVENT_GOT_IRON_FROM_PARRY
	const EVENT_GOT_CALCIUM_FROM_ERIN
	const EVENT_KENJI_ON_BREAK
	const EVENT_GAVEN_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_BETH_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_JOSE_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_REENA_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_JOEY_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_WADE_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_RALPH_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_LIZ_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_ANTHONY_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_TODD_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_GINA_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_IRWIN_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_ARNIE_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_ALAN_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const_skip ; unused
	const_skip ; unused
	const EVENT_DANA_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_CHAD_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_DEREK_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_TULLY_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_BRENT_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused
	const EVENT_TIFFANY_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_VANCE_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_WILTON_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_KENJI_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_PARRY_ASKED_FOR_PHONE_NUMBER
	const_skip ; unused in Crystal
	const EVENT_ERIN_ASKED_FOR_PHONE_NUMBER
	const EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	const_skip ; unused
; Ruins of Alph puzzles

; Decorations
	const EVENT_DECO_BED_1
	const EVENT_DECO_BED_2
	const EVENT_DECO_BED_3
	const EVENT_DECO_BED_4
	const EVENT_DECO_CARPET_1
	const EVENT_DECO_CARPET_2
	const EVENT_DECO_CARPET_3
	const EVENT_DECO_CARPET_4
	const EVENT_DECO_PLANT_1
	const EVENT_DECO_PLANT_2
	const EVENT_DECO_PLANT_3
	const EVENT_DECO_POSTER_1
	const EVENT_DECO_POSTER_2
	const EVENT_DECO_POSTER_3
	const EVENT_DECO_POSTER_4
	const EVENT_DECO_FAMICOM
	const EVENT_DECO_SNES
	const EVENT_DECO_N64
	const EVENT_DECO_VIRTUAL_BOY
	const EVENT_DECO_PIKACHU_DOLL
	const EVENT_DECO_SURFING_PIKACHU_DOLL
	const EVENT_DECO_CLEFAIRY_DOLL
	const EVENT_DECO_JIGGLYPUFF_DOLL
	const EVENT_DECO_BULBASAUR_DOLL
	const EVENT_DECO_CHARMANDER_DOLL
	const EVENT_DECO_SQUIRTLE_DOLL
	const EVENT_DECO_POLIWAG_DOLL
	const EVENT_DECO_DIGLETT_DOLL
	const EVENT_DECO_STARYU_DOLL
	const EVENT_DECO_MAGIKARP_DOLL
	const EVENT_DECO_ODDISH_DOLL
	const EVENT_DECO_GENGAR_DOLL
	const EVENT_DECO_SHELLDER_DOLL
	const EVENT_DECO_GRIMER_DOLL
	const EVENT_DECO_VOLTORB_DOLL
	const EVENT_DECO_WEEDLE_DOLL
	const EVENT_DECO_UNOWN_DOLL
	const EVENT_DECO_GEODUDE_DOLL
	const EVENT_DECO_MACHOP_DOLL
	const EVENT_DECO_TENTACOOL_DOLL
	const EVENT_PLAYERS_ROOM_POSTER
	const EVENT_DECO_GOLD_TROPHY
	const EVENT_DECO_SILVER_TROPHY
	const EVENT_DECO_BIG_SNORLAX_DOLL
	const EVENT_DECO_BIG_ONIX_DOLL
	const EVENT_DECO_BIG_LAPRAS_DOLL
; More Johto story events

; More Crystal-exclusive events in Johto

; Trainer flags
; Swimmer F

; Bird Keeper

; Boarder

; Sage

; Camper

; Burglar

; Biker

; Psychic

; Firebreather

; Fisher
	
; Twins

; Schoolboy

; Picnicker

; Guitarist
	
; Juggler
	
; Gentleman

; Scientist
	
; Blackbelt

; Beauty

; Johto Gym Leaders

; Kanto Gym Leaders

; PokefanM

; PokefanF

; Kimono Girl

; Pokemaniac

; GruntM

; GruntF

; Lass

; Hiker

; Bug Catcher

; Officer

; CooltrainerM

; CooltrainerF

; ExecutiveF
	
; ExecutiveM

; Sailor

; Super Nerd

; Medium

; Skier

; SwimmerM

; Youngster

; Teacher

; Elite Four and Champion

; Crystal-exclusive trainer flags

; Sprite visibility flags
; When these events are cleared, the sprite becomes visible; when set, the sprite is hidden.
; The map script command macros `disappear` and `appear` set/clear these flags and immediately apply the effect on visibility.
; The map script command macros `setevent` and `clearevent` set/clear these flags, and their effects will be seen when the map is reloaded.
; Johto itemballs
	const EVENT_CHARMANDER_POKEBALL_IN_IVYS_LAB
	const EVENT_SQUIRTLE_POKEBALL_IN_IVYS_LAB
	const EVENT_BULBASAUR_POKEBALL_IN_IVYS_LAB
	const EVENT_ROUTE_49_POTION
	const EVENT_ROUTE_49_FRESHWATER
	const EVENT_OBTAINED_GS_BALL
; Johto people
	const EVENT_ROTOM_OVEN_PURCHASED
	const EVENT_ROTOM_WASH_PURCHASED
	const EVENT_ROTOM_FROST_PURCHASED
	const EVENT_ROTOM_FAN_PURCHASED
	const EVENT_ROTOM_MOW_PURCHASED
	const EVENT_DRATINI_VALENCIA_APPEAR
	const EVENT_ALT_STARTER_VALENCIA_IVY
	const EVENT_MARILL_TANGELO_1
	const EVENT_MARILL_TANGELO_2
	const EVENT_MARILL_TANGELO_3
	const EVENT_TANGELO_ROCKETS_DEFEATED
	const EVENT_GS_BALL_ENCOUNTER
	const EVENT_LAPRAS_OBTAINED
	const EVENT_TRACEY_TANGELO_CENTER_INSIDE
	const EVENT_GS_BALL_IVY
	const EVENT_PLAYERS_HOUSE_MOM_1
	const EVENT_PLAYERS_HOUSE_MOM_2
	const EVENT_TRACEY_BATTLE_TANGELO
; Kanto people

; Kanto itemballs
	
; New to Crystal

; Dummy Event To Silence Errors
	const EVENT_DUMMY_OUT
	const EVENT_MYSTERY_GIFT_DELIVERY_GUY
	const EVENT_INITIALIZED_EVENTS
	const EVENT_PLAYERS_HOUSE_2F_CONSOLE
	const EVENT_PLAYERS_HOUSE_2F_DOLL_1
	const EVENT_PLAYERS_HOUSE_2F_DOLL_2
	const EVENT_PLAYERS_HOUSE_2F_BIG_DOLL
	const EVENT_LISTENED_TO_INITIAL_RADIO

DEF NUM_EVENTS EQU const_value
