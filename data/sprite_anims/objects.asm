SpriteAnimObjects:
; entries correspond to SPRITE_ANIM_OBJ_* constants (see constants/sprite_anim_constants.asm)
	table_width 3, SpriteAnimObjects
	; frameset, sequence, tile
; SPRITE_ANIM_OBJ_PARTY_MON
	db SPRITE_ANIM_FRAMESET_PARTY_MON,                 SPRITE_ANIM_FUNC_PARTY_MON,                   SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_GS_TITLE_TRAIL
	db SPRITE_ANIM_FRAMESET_GS_TITLE_TRAIL,            SPRITE_ANIM_FUNC_GS_TITLE_TRAIL,              SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_NAMING_SCREEN_CURSOR
	db SPRITE_ANIM_FRAMESET_TEXT_ENTRY_CURSOR,         SPRITE_ANIM_FUNC_NAMING_SCREEN_CURSOR,        SPRITE_ANIM_DICT_TEXT_CURSOR
; SPRITE_ANIM_OBJ_GAMEFREAK_LOGO
	db SPRITE_ANIM_FRAMESET_GAMEFREAK_LOGO,            SPRITE_ANIM_FUNC_GAMEFREAK_LOGO,              SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_GS_GAMEFREAK_LOGO_STAR
	db SPRITE_ANIM_FRAMESET_GS_GAMEFREAK_LOGO_STAR,    SPRITE_ANIM_FUNC_GS_GAMEFREAK_LOGO_STAR,      SPRITE_ANIM_DICT_GS_SPLASH
; SPRITE_ANIM_OBJ_GS_GAMEFREAK_LOGO_SPARKLE
	db SPRITE_ANIM_FRAMESET_GS_GAMEFREAK_LOGO_SPARKLE, SPRITE_ANIM_FUNC_GS_GAMEFREAK_LOGO_SPARKLE,   SPRITE_ANIM_DICT_GS_SPLASH
; SPRITE_ANIM_OBJ_SLOTS_GOLEM
	db SPRITE_ANIM_FRAMESET_SLOTS_GOLEM,               SPRITE_ANIM_FUNC_SLOTS_GOLEM,                 SPRITE_ANIM_DICT_SLOTS
; SPRITE_ANIM_OBJ_SLOTS_CHANSEY
	db SPRITE_ANIM_FRAMESET_SLOTS_CHANSEY,             SPRITE_ANIM_FUNC_SLOTS_CHANSEY,               SPRITE_ANIM_DICT_SLOTS
; SPRITE_ANIM_OBJ_SLOTS_EGG
	db SPRITE_ANIM_FRAMESET_SLOTS_EGG,                 SPRITE_ANIM_FUNC_SLOTS_EGG,                   SPRITE_ANIM_DICT_SLOTS
; SPRITE_ANIM_OBJ_COMPOSE_MAIL_CURSOR
	db SPRITE_ANIM_FRAMESET_TEXT_ENTRY_CURSOR,         SPRITE_ANIM_FUNC_MAIL_CURSOR,                 SPRITE_ANIM_DICT_TEXT_CURSOR
; SPRITE_ANIM_OBJ_RED_WALK
	db SPRITE_ANIM_FRAMESET_RED_WALK,                  SPRITE_ANIM_FUNC_NULL,                        SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_UNUSED_CURSOR
	db SPRITE_ANIM_FRAMESET_STILL_CURSOR,              SPRITE_ANIM_FUNC_UNUSED_CURSOR,               SPRITE_ANIM_DICT_ARROW_CURSOR
; SPRITE_ANIM_OBJ_MEMORY_GAME_CURSOR
	db SPRITE_ANIM_FRAMESET_STILL_CURSOR,              SPRITE_ANIM_FUNC_MEMORY_GAME_CURSOR,          SPRITE_ANIM_DICT_ARROW_CURSOR
; SPRITE_ANIM_OBJ_POKEGEAR_ARROW
	db SPRITE_ANIM_FRAMESET_STILL_CURSOR,              SPRITE_ANIM_FUNC_POKEGEAR_ARROW,              SPRITE_ANIM_DICT_ARROW_CURSOR
; SPRITE_ANIM_OBJ_TRADE_POKE_BALL
	db SPRITE_ANIM_FRAMESET_TRADE_POKE_BALL,           SPRITE_ANIM_FUNC_TRADE_POKE_BALL,             SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_TRADE_POOF
	db SPRITE_ANIM_FRAMESET_TRADE_POOF,                SPRITE_ANIM_FUNC_NULL,                        SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_TRADE_TUBE_BULGE
	db SPRITE_ANIM_FRAMESET_TRADE_TUBE_BULGE,          SPRITE_ANIM_FUNC_TRADE_TUBE_BULGE,            SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_TRADEMON_ICON
	db SPRITE_ANIM_FRAMESET_TRADEMON_ICON,             SPRITE_ANIM_FUNC_TRADEMON_IN_TUBE,            SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_TRADEMON_BUBBLE
	db SPRITE_ANIM_FRAMESET_TRADEMON_BUBBLE,           SPRITE_ANIM_FUNC_TRADEMON_IN_TUBE,            SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_EVOLUTION_BALL_OF_LIGHT
	db SPRITE_ANIM_FRAMESET_EVOLUTION_BALL_OF_LIGHT,   SPRITE_ANIM_FUNC_REVEAL_NEW_MON,              SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_RADIO_TUNING_KNOB
	db SPRITE_ANIM_FRAMESET_RADIO_TUNING_KNOB,         SPRITE_ANIM_FUNC_RADIO_TUNING_KNOB,           SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_MAGNET_TRAIN
	db SPRITE_ANIM_FRAMESET_MAGNET_TRAIN,              SPRITE_ANIM_FUNC_NULL,                        SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_LEAF
	db SPRITE_ANIM_FRAMESET_LEAF,                      SPRITE_ANIM_FUNC_CUT_LEAVES,                  SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_CUT_TREE
	db SPRITE_ANIM_FRAMESET_CUT_TREE,                  SPRITE_ANIM_FUNC_NULL,                        SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_FLY_LEAF
	db SPRITE_ANIM_FRAMESET_LEAF,                      SPRITE_ANIM_FUNC_FLY_LEAF,                    SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_EGG_CRACK
	db SPRITE_ANIM_FRAMESET_EGG_CRACK,                 SPRITE_ANIM_FUNC_NULL,                        SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_GS_INTRO_HO_OH_LUGIA
	db SPRITE_ANIM_FRAMESET_GS_INTRO_HO_OH_LUGIA,      SPRITE_ANIM_FUNC_GS_INTRO_HO_OH_LUGIA,        SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_HEADBUTT
	db SPRITE_ANIM_FRAMESET_HEADBUTT,                  SPRITE_ANIM_FUNC_NULL,                        SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_EGG_HATCH
	db SPRITE_ANIM_FRAMESET_EGG_HATCH_1,               SPRITE_ANIM_FUNC_REVEAL_NEW_MON,              SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_BLUE_WALK
	db SPRITE_ANIM_FRAMESET_BLUE_WALK,                 SPRITE_ANIM_FUNC_NULL,                        SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_GS_INTRO_BUBBLE
	db SPRITE_ANIM_FRAMESET_GS_INTRO_BUBBLE,           SPRITE_ANIM_FUNC_GS_INTRO_BUBBLE,             SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_GS_INTRO_SHELLDER
	db SPRITE_ANIM_FRAMESET_GS_INTRO_SHELLDER,         SPRITE_ANIM_FUNC_GS_INTRO_SHELLDER,           SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_GS_INTRO_MAGIKARP
	db SPRITE_ANIM_FRAMESET_GS_INTRO_MAGIKARP,         SPRITE_ANIM_FUNC_GS_INTRO_MAGIKARP,           SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_UNUSED_INTRO_AERODACTYL
	db SPRITE_ANIM_FRAMESET_UNUSED_INTRO_AERODACTYL,   SPRITE_ANIM_FUNC_UNUSED_INTRO_AERODACTYL,     SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_GS_INTRO_LAPRAS
	db SPRITE_ANIM_FRAMESET_GS_INTRO_LAPRAS,           SPRITE_ANIM_FUNC_GS_INTRO_LAPRAS,             SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_GS_INTRO_NOTE
	db SPRITE_ANIM_FRAMESET_GS_INTRO_NOTE,             SPRITE_ANIM_FUNC_GS_INTRO_NOTE,               SPRITE_ANIM_DICT_GS_INTRO
; SPRITE_ANIM_OBJ_CELEBI
	db SPRITE_ANIM_FRAMESET_CELEBI_LEFT,               SPRITE_ANIM_FUNC_NULL,                        SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_GS_INTRO_INVISIBLE_NOTE
	db SPRITE_ANIM_FRAMESET_GS_INTRO_INVISIBLE_NOTE,   SPRITE_ANIM_FUNC_GS_INTRO_NOTE,               SPRITE_ANIM_DICT_GS_INTRO
; SPRITE_ANIM_OBJ_GS_INTRO_JIGGLYPUFF
	db SPRITE_ANIM_FRAMESET_GS_INTRO_JIGGLYPUFF,       SPRITE_ANIM_FUNC_GS_INTRO_JIGGLYPUFF,         SPRITE_ANIM_DICT_GS_INTRO
; SPRITE_ANIM_OBJ_GS_INTRO_PIKACHU
	db SPRITE_ANIM_FRAMESET_GS_INTRO_PIKACHU,          SPRITE_ANIM_FUNC_GS_INTRO_PIKACHU,            SPRITE_ANIM_DICT_GS_INTRO
; SPRITE_ANIM_OBJ_GS_INTRO_PIKACHU_TAIL
	db SPRITE_ANIM_FRAMESET_GS_INTRO_PIKACHU_TAIL,     SPRITE_ANIM_FUNC_GS_INTRO_PIKACHU_TAIL,       SPRITE_ANIM_DICT_GS_INTRO
; SPRITE_ANIM_OBJ_GS_INTRO_FIREBALL
	db SPRITE_ANIM_FRAMESET_GS_INTRO_FIREBALL,         SPRITE_ANIM_FUNC_GS_INTRO_FIREBALL,           SPRITE_ANIM_DICT_GS_INTRO_2
; SPRITE_ANIM_OBJ_GS_INTRO_CHIKORITA
	db SPRITE_ANIM_FRAMESET_GS_INTRO_CHIKORITA,        SPRITE_ANIM_FUNC_GS_INTRO_CHIKORITA_TOTODILE, SPRITE_ANIM_DICT_GS_INTRO_2
; SPRITE_ANIM_OBJ_GS_INTRO_CYNDAQUIL
	db SPRITE_ANIM_FRAMESET_GS_INTRO_CYNDAQUIL,        SPRITE_ANIM_FUNC_GS_INTRO_CYNDAQUIL,          SPRITE_ANIM_DICT_GS_INTRO_2
; SPRITE_ANIM_OBJ_GS_INTRO_TOTODILE
	db SPRITE_ANIM_FRAMESET_GS_INTRO_TOTODILE,         SPRITE_ANIM_FUNC_GS_INTRO_CHIKORITA_TOTODILE, SPRITE_ANIM_DICT_GS_INTRO_2
; SPRITE_ANIM_OBJ_PC_CURSOR
	db SPRITE_ANIM_FRAMESET_PC_CURSOR,                 SPRITE_ANIM_FUNC_PC_CURSOR,                   SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_PC_QUICK
	db SPRITE_ANIM_FRAMESET_PC_QUICK,                  SPRITE_ANIM_FUNC_PC_QUICK,                    SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_PC_MODE
	db SPRITE_ANIM_FRAMESET_PC_MODE,                   SPRITE_ANIM_FUNC_PC_MODE,                     SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_PC_MODE2
	db SPRITE_ANIM_FRAMESET_PC_MODE2,                  SPRITE_ANIM_FUNC_NULL,                        SPRITE_ANIM_DICT_DEFAULT
; SPRITE_ANIM_OBJ_PC_PACK
	db SPRITE_ANIM_FRAMESET_PC_PACK,                   SPRITE_ANIM_FUNC_PC_PACK,                     SPRITE_ANIM_DICT_DEFAULT
	assert_table_length NUM_SPRITE_ANIM_OBJS
