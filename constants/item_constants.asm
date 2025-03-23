; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM      ; 0000
	const BRIGHTPOWDER ; 0001
	const TOWN_MAP_RED ; 0002
	const MOON_STONE   ; 0003
	const ESCAPE_ROPE  ; 000E
	const REPEL        ; 000F
	const FIRE_STONE   ; 0011
	const THUNDERSTONE ; 0012
	const WATER_STONE  ; 0013
	const ITEM_19      ; 0014
	const LUCKY_PUNCH  ; 0019
	const X_ACCURACY   ; 001C
	const LEAF_STONE   ; 001D
	const METAL_POWDER ; 001E
	const POKE_DOLL    ; 0020
	const GUARD_SPEC   ; 0024
	const SUPER_REPEL  ; 0025
	const MAX_REPEL    ; 0026
	const DIRE_HIT     ; 0027
	const ITEM_2D      ; 0028
	const X_ATTACK     ; 002C
	const ITEM_32      ; 002D
	const X_DEFEND     ; 002E
	const X_SPEED      ; 002F
	const X_SP_ATK     ; 0030
	const POKE_FLUTE   ; 0031
	const EXP_SHARE    ; 0032
	const QUICK_CLAW   ; 0039
	const SOFT_SAND    ; 003B
	const SHARP_BEAK   ; 003C
	const POISON_BARB  ; 003D
	const KINGS_ROCK   ; 003E
	const SILVERPOWDER ; 0041
	const ITEM_5A      ; 0042
	const AMULET_COIN  ; 0043
	const CLEANSE_TAG  ; 0044
	const MYSTIC_WATER ; 0045
	const TWISTEDSPOON ; 0046
	const BLACK_BELT_I ; 0047
	const ITEM_64      ; 0048
	const BLACKGLASSES ; 0049
	const PINK_BOW     ; 004B
	const STICK        ; 004C
	const SMOKE_BALL   ; 004D
	const NEVERMELTICE ; 004E
	const MAGNET       ; 004F
	const EVERSTONE    ; 0052
	const SPELL_TAG    ; 0053
	const MIRACLE_SEED ; 0055
	const THICK_CLUB   ; 0056
	const FOCUS_BAND   ; 0057
	const ITEM_78      ; 0058
	const HARD_STONE   ; 005D
	const LUCKY_EGG    ; 005E
	const ITEM_87      ; 0061
	const ITEM_88      ; 0062
	const CHARCOAL     ; 0064
	const SCOPE_LENS   ; 0066
	const ITEM_8D      ; 0067
	const ITEM_8E      ; 0068
	const METAL_COAT   ; 0069
	const DRAGON_FANG  ; 006A
	const ITEM_91      ; 006B
	const LEFTOVERS    ; 006C
	const ITEM_93      ; 006D
	const ITEM_94      ; 006E
	const ITEM_95      ; 006F
	const DRAGON_SCALE ; 0070
	const BERSERK_GENE ; 0071
	const ITEM_99      ; 0072
	const ITEM_9A      ; 0073
	const ITEM_9B      ; 0074
	const FLOWER_MAIL  ; 0076
	const ITEM_A2      ; 0077
	const LIGHT_BALL   ; 0078
	const NORMAL_BOX   ; 0079
	const GORGEOUS_BOX ; 007A
	const SUN_STONE    ; 007B
	const POLKADOT_BOW ; 007C
	const ITEM_AB      ; 007D
	const UP_GRADE     ; 007E
	const ITEM_B0      ; 007F
	const ITEM_B3      ; 0080
	const SURF_MAIL    ; 0082
	const LITEBLUEMAIL ; 0083
	const PORTRAITMAIL ; 0084
	const LOVELY_MAIL  ; 0085
	const EON_MAIL     ; 0086
	const MORPH_MAIL   ; 0087
	const BLUESKY_MAIL ; 0088
	const MUSIC_MAIL   ; 0089
	const MIRAGE_MAIL  ; 008A
	const ITEM_BE      ; 008B
	const ITEM_DC      ; 008C
	const ITEM_C3      ; 008D
	const ITEM_FA      ; 008E
	const SHINY_STONE  ; 008F
	const DUSK_STONE   ; 009A
	const DAWN_STONE   ; 009B
	const ICE_STONE    ; 009C
	const BLK_AUGURITE ; 009D
	const PEAT_BLOCK   ; 009E
	const SWEET_APPLE  ; 009F
	const TART_APPLE   ; 00A0
	const SYRUPY_APPLE ; 00A1
	const GALAR_CUFF   ; 00A2
	const GALAR_WREATH ; 00A3
	const HOLY_ARMOR   ; 00A4 AUSPICIOUS ARMOR
	const CURSED_ARMOR ; 00A5 MALICIOUS ARMOR
	const ELECTIRIZER  ; 00A6
	const MAGMARIZER   ; 00A7
	const PROTECTOR    ; 00A8
	const DUBIOUS_DISC ; 00A9
	const OVAL_STONE   ; 00AA
	const PRISM_SCALE  ; 00AB
	const RAZOR_CLAW   ; 00AC
	const RAZOR_FANG   ; 00AD
	const REAPER_CLOTH ; 00AE
	const LINKING_CORD ; 00AF
	const FAIRYFEATHER ; 00B0
	const QUICK_POWDER ; 00B1
	const EVIOLITE     ; 00B2
	const SOUL_DEW     ; 00B3
	const SOOTHE_BELL  ; 00B4
	const MIRROR_HERB  ; 00B5
	const MENTAL_HERB  ; 00B6
	const POWER_HERB   ; 00B7
	const WHITE_HERB   ; 00B8
	const FULL_INCENSE ; 00B9
	const LAX_INCENSE  ; 00BA
	const LUCK_INCENSE ; 00BB
	const ODD_INCENSE  ; 00BC
	const PURE_INCENSE ; 00BD
	const ROCK_INCENSE ; 00BE
	const ROSE_INCENSE ; 00BF
	const SEA_INCENSE  ; 00C0
	const WAVE_INCENSE ; 00C1
	const MACHO_BRACE  ; 00C2
	const POWER_ANKLET ; 00C3
	const POWER_BAND   ; 00C4
	const POWER_BELT   ; 00C5
	const POWER_BRACER ; 00C6
	const POWER_LENS   ; 00C7
	const POWER_WEIGHT ; 00C8
	const X_SP_DEF     ; 00D7
	const LEADER_CREST ; 00DB
	const GRASSY_BLOCK ; 00DD
	const FIERY_BLOCK  ; 00DE
	const CHILLY_BLOCK ; 00DF
	const ZAPPY_BLOCK  ; 00E0
	const LOVELY_BLOCK ; 00E1
	const CRUNCHYBLOCK ; 00E2
DEF NUM_ITEM_POCKET EQU const_value - 1

	const_align 8 ; Key items assume the value of HIGH(FIRST_KEY_ITEM) when storing in bag.
DEF FIRST_KEY_ITEM EQU const_value
	const BICYCLE      ; 0100
	const COIN_CASE    ; 0101
	const ITEMFINDER   ; 0102
	const OLD_ROD      ; 0103
	const GOOD_ROD     ; 0104
	const SUPER_ROD    ; 0105
	const RED_SCALE    ; 0106
	const SECRETPOTION ; 0107
	const S_S_TICKET   ; 0108
	const MYSTERY_EGG  ; 0109
	const CLEAR_BELL   ; 010A
	const SILVER_WING  ; 010B
	const GS_BALL_KEY  ; 010C
	const BLUE_CARD    ; 010D
	const CARD_KEY     ; 010E
	const MACHINE_PART ; 010F
	const EGG_TICKET   ; 0110
	const LOST_ITEM    ; 0111
	const BASEMENT_KEY ; 0112
	const PASS         ; 0113
	const SQUIRTBOTTLE ; 0114
	const RAINBOW_WING ; 0115
	const SECRET_STASH ; 0116
	const SEA_MAP      ; 0117
	const BERRY_LOG    ; 0118
	const EXCEL_SCOPE    ; 0119
DEF NUM_KEY_ITEM_POCKET EQU const_value - FIRST_KEY_ITEM
assert NUM_KEY_ITEM_POCKET <= $ff

	const_align 8 ; Ball items assume the value of HIGH(FIRST_BALL_ITEM) when storing in bag.
DEF FIRST_BALL_ITEM EQU const_value
	const MASTER_BALL  ; 0200
	const ULTRA_BALL   ; 0201
	const GREAT_BALL   ; 0202
	const POKE_BALL    ; 0203
	const SAFARI_BALL  ; 0204
	const NET_BALL     ; 0205
	const DIVE_BALL    ; 0206
	const NEST_BALL    ; 0207
	const REPEAT_BALL  ; 0208
	const TIMER_BALL   ; 0209
	const LUXURY_BALL  ; 020A
	const PREMIER_BALL ; 020B
	const FAST_BALL    ; 020C
	const LEVEL_BALL   ; 020D
	const LURE_BALL    ; 020E
	const HEAVY_BALL   ; 020F
	const LOVE_BALL    ; 0210
	const FRIEND_BALL  ; 0211
	const MOON_BALL    ; 0212
	const PARK_BALL    ; 0213
	const SPORT_BALL   ; 0214
	const DUSK_BALL    ; 0215
	const HEAL_BALL    ; 0216
	const QUICK_BALL   ; 0217
	const CHERISH_BALL ; 0218
	const DREAM_BALL   ; 0219
	const BEAST_BALL   ; 021A
	const STRANGE_BALL ; 021B
	const POKE_BALL_H  ; 021C
	const GREAT_BALL_H ; 021D
	const ULTRA_BALL_H ; 021E
	const HEAVY_BALL_H ; 021F
	const LEADEN_BALL  ; 0220
	const GIGATON_BALL ; 0221
	const FEATHER_BALL ; 0222
	const WING_BALL    ; 0223
	const JET_BALL     ; 0224
	const ORIGIN_BALL  ; 0225
	const ROCKET_BALL  ; 0226
	const GS_BALL      ; 0227
DEF NUM_BALL_ITEM_POCKET EQU const_value - FIRST_BALL_ITEM
assert NUM_BALL_ITEM_POCKET <= $ff

	const_align 8 ; Berry items assume the value of HIGH(FIRST_BERRY_ITEM) when storing in bag.
DEF FIRST_BERRY_ITEM EQU const_value
	const RED_APRICORN ; 0300
	const BLU_APRICORN ; 0301
	const YLW_APRICORN ; 0302
	const GRN_APRICORN ; 0303
	const WHT_APRICORN ; 0304
	const BLK_APRICORN ; 0305
	const PNK_APRICORN ; 0306
	const BRN_APRICORN ; 0307
	const PECHA_BERRY  ; 0308
	const CHERI_BERRY  ; 0309
	const ASPEAR_BERRY ; 030A
	const RAWST_BERRY  ; 030B
	const PERSIM_BERRY ; 030C
	const CHESTO_BERRY ; 030D
	const LUM_BERRY    ; 030E
	const LEPPA_BERRY  ; 030F
	const ORAN_BERRY   ; 0310
	const SITRUS_BERRY ; 0311
	const FIGY_BERRY   ; 0312
	const WIKI_BERRY   ; 0313
	const MAGO_BERRY   ; 0314
	const AGUAV_BERRY  ; 0315
	const IAPAPA_BERRY ; 0316
	const POMEG_BERRY  ; 0317
	const KELPSY_BERRY ; 0318
	const QUALOT_BERRY ; 0319
	const HONDEW_BERRY ; 031A
	const GREPA_BERRY  ; 031B
	const TAMATO_BERRY ; 031C
	const OCCA_BERRY   ; 031D
	const PASSHO_BERRY ; 031E
	const WACAN_BERRY  ; 031F
	const RINDO_BERRY  ; 0320
	const YACHE_BERRY  ; 0321
	const CHOPLE_BERRY ; 0322
	const KEBIA_BERRY  ; 0323
	const SHUCA_BERRY  ; 0324
	const COBA_BERRY   ; 0325
	const PAYAPA_BERRY ; 0326
	const TANGA_BERRY  ; 0327
	const CHARTI_BERRY ; 0328
	const KASIB_BERRY  ; 0329
	const HABAN_BERRY  ; 032A
	const COLBUR_BERRY ; 032B
	const BABIRI_BERRY ; 032C
	const CHILAN_BERRY ; 032D
	const ROSELI_BERRY ; 032E
	const LIECHI_BERRY ; 032F
	const GANLON_BERRY ; 0330
	const SALAC_BERRY  ; 0331
	const PETAYA_BERRY ; 0332
	const APICOT_BERRY ; 0333
	const LANSAT_BERRY ; 0334
	const STARF_BERRY  ; 0335
	const KEE_BERRY    ; 0336
	const MARANGABERRY ; 0337
	const ENIGMA_BERRY ; 0338
	const MICLE_BERRY  ; 0339
	const CUSTAP_BERRY ; 033A
	const JABOCA_BERRY ; 033B
	const ROWAP_BERRY  ; 033C
	const EGGANT_BERRY ; 033D
	const UNYINN_BERRY ; 033E EREADER GINEMA BERRY
	const HOPO_BERRY   ; 033F
	const PUMKIN_BERRY ; 0340
	const CAREEP_BERRY ; 0341 EREADER TOUGA BERRY
	const BITMEL_BERRY ; 0342 EREADER YAGO BERRY
	const DRASH_BERRY  ; 0343
	const RAZZ_BERRY   ; 0344
	const BLUK_BERRY   ; 0345
	const NANAB_BERRY  ; 0346
	const WEPEAR_BERRY ; 0347
	const PINAP_BERRY  ; 0348
	const CORNN_BERRY  ; 0349
	const MAGOST_BERRY ; 034A
	const RABUTA_BERRY ; 034B
	const NOMEL_BERRY  ; 034C
	const SPELON_BERRY ; 034D
	const PAMTRE_BERRY ; 034E
	const WATMEL_BERRY ; 034F
	const DURIN_BERRY  ; 0350
	const BELUE_BERRY  ; 0351
	const STRIB_BERRY  ; 0352
	const TILOTA_BERRY ; 0353 EREADER CHILAN BERRY
	const NUTPEA_BERRY ; 0354
	const KRAU_BERRY   ; 0355 EREADER KUO BERRY
	const LIGARC_BERRY ; 0356 EREADER NINIKU BERRY
	const TOTAPO_BERRY ; 0357 EREADER TOPO BERRY
	const PINKAN_BERRY ; 0358
DEF NUM_BERRY_ITEM_POCKET EQU const_value - FIRST_BERRY_ITEM
assert NUM_BERRY_ITEM_POCKET <= $ff

	const_align 8 ; Medicine items assume the value of HIGH(FIRST_MEDICINE_ITEM) when storing in bag.
DEF FIRST_MEDICINE_ITEM EQU const_value
	const ANTIDOTE     ; 0004
	const BURN_HEAL    ; 0005
	const ICE_HEAL     ; 0006
	const AWAKENING    ; 0007
	const PARLYZ_HEAL  ; 0008
	const FULL_RESTORE ; 0009
	const MAX_POTION   ; 000A
	const HYPER_POTION ; 000B
	const SUPER_POTION ; 000C
	const POTION       ; 000D
	const MAX_ELIXIR   ; 0010
	const HP_UP        ; 0015
	const PROTEIN      ; 0016
	const IRON         ; 0017
	const CARBOS       ; 0018
	const CALCIUM      ; 001A
	const RARE_CANDY   ; 001B
	const FULL_HEAL    ; 0021
	const REVIVE       ; 0022
	const MAX_REVIVE   ; 0023
	const FRESH_WATER  ; 0029
	const SODA_POP     ; 002A
	const LEMONADE     ; 002B
	const PP_UP        ; 0034
	const ETHER        ; 0035
	const MAX_ETHER    ; 0036
	const ELIXIR       ; 0037
	const MOOMOO_MILK  ; 0038
	const RAGECANDYBAR ; 0054
	const ENERGYPOWDER ; 0059
	const ENERGY_ROOT  ; 005A
	const HEAL_POWDER  ; 005B
	const REVIVAL_HERB ; 005C
	const ZINC         ; 0063
	const BERRY_JUICE  ; 0065
	const SACRED_ASH   ; 0075
	const PP_MAX       ; 00D8
	const PEWTER_ARARE ; 00D9
	const SEVENTH_HEAVEN
	const LONELY_MINT
	const ADAMANT_MINT
	const NAUGHTY_MINT
	const BRAVE_MINT
	const BOLD_MINT
	const IMPISH_MINT
	const LAX_MINT
	const RELAXED_MINT
	const MODEST_MINT
	const MILD_MINT
	const RASH_MINT
	const QUIET_MINT
	const CALM_MINT
	const GENTLE_MINT
	const CAREFUL_MINT
	const SASSY_MINT
	const TIMID_MINT
	const HASTY_MINT
	const JOLLY_MINT
	const NAIVE_MINT
	const SERIOUS_MINT
	const HARDY_MINT
	const DOCILE_MINT
	const BASHFUL_MINT
	const QUIRKY_MINT
	const ABILITY_UP
DEF NUM_MEDICINE_ITEM_POCKET EQU const_value - FIRST_MEDICINE_ITEM
assert NUM_MEDICINE_ITEM_POCKET <= $ff

	const_align 8 ; Valuable items assume the value of HIGH(FIRST_VALUABLE_ITEM) when storing in bag.
DEF FIRST_VALUABLE_ITEM EQU const_value
	const NUGGET       ; 001F
	const SILVER_LEAF  ; 0033
	const GOLD_LEAF    ; 003A
	const TINYMUSHROOM ; 003F
	const BIG_MUSHROOM ; 0040
	const SLOWPOKETAIL ; 004A
	const PEARL        ; 0050
	const BIG_PEARL    ; 0051
	const STARDUST     ; 005F
	const STAR_PIECE   ; 0060
	const BRICK_PIECE  ; 0081
	const HEART_SCALE  ; 00C9
	const BLUE_SHARD   ; 00CA
	const GREEN_SHARD  ; 00CB
	const RED_SHARD    ; 00CC
	const YELLOW_SHARD ; 00CD
	const RARE_BONE    ; 00CE
	const BALMMUSHROOM ; 00CF
	const BIG_NUGGET   ; 00D0
	const COMET_SHARD  ; 00D1
	const PEARL_STRING ; 00D2
	const BEACH_GLASS  ; 00D3
	const PRETTY_SHELL ; 00D4
	const TINY_BAMBOO  ; 00D5
	const BIG_BAMBOO   ; 00D6
	const SPIDER_SILK  ; 00DC
	const ANCIENT_VASE ; 00E3
	const ANCIENT_CUP  ; 00E4
	const ANCIENT_JAR  ; 00E5
	const CLAY_SHARD   ; 00E6
	const HUGE_CRYSTAL ; 00E7
	const LARGE_JADE   ; 00E8
	const BIG_EMERALD  ; 00E9
	const GIANT_RUBY   ; 00EA
	const BIG_SAPPHIRE ; 00EB
	const BIG_AMETHYST ; 00EC
	const HUGE_TOPAZ   ; 00ED
	const LARGE_GARNET ; 00EE
	const GIANT_ONYX   ; 00EF
	const HUGE_DIAMOND ; 00F0
DEF NUM_VALUABLE_ITEM_POCKET EQU const_value - FIRST_VALUABLE_ITEM
assert NUM_VALUABLE_ITEM_POCKET <= $ff

DEF NUM_ITEMS EQU const_value - 1

DEF __tmhm_value__ = 1

MACRO add_tmnum
	DEF \1_TMNUM EQU __tmhm_value__
	DEF __tmhm_value__ += 1
ENDM

MACRO add_tm
; Defines three constants:
; - TM_\1: the item id, starting at $bf
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
	const TM_\1
	DEF TM{02d:__tmhm_value__}_MOVE = \1
	add_tmnum \1
ENDM

	const_align 8 ; TMHM items assume the value of HIGH(FIRST_TMHM_ITEM) when storing in bag.
DEF FIRST_TMHM_ITEM EQU const_value
; see data/moves/tmhm_moves.asm for moves
DEF TM01 EQU const_value
	add_tm FOCUS_PUNCH  ; 0400
	add_tm DRAGON_CLAW  ; 0401
	add_tm WATER_PULSE  ; 0402
	add_tm CALM_MIND    ; 0403
	add_tm ROAR         ; 0404
	add_tm TOXIC        ; 0405
	add_tm HAIL         ; 0406
	add_tm BULK_UP      ; 0407
	add_tm BULLET_SEED  ; 0408
	add_tm HIDDEN_POWER ; 0409
	add_tm SUNNY_DAY    ; 040A
	add_tm TAUNT        ; 040B
	add_tm ICE_BEAM     ; 040C
	add_tm BLIZZARD     ; 040D
	add_tm HYPER_BEAM   ; 040E
	add_tm LIGHT_SCREEN ; 040F
	add_tm PROTECT      ; 0410
	add_tm RAIN_DANCE   ; 0411
	add_tm GIGA_DRAIN   ; 0412
	add_tm SAFEGUARD    ; 0413
	add_tm FRUSTRATION  ; 0414
	add_tm SOLARBEAM    ; 0415
	add_tm IRON_TAIL    ; 0416
	add_tm THUNDERBOLT  ; 0417
	add_tm THUNDER      ; 0418
	add_tm EARTHQUAKE   ; 0419
	add_tm RETURN       ; 041A
	add_tm DIG          ; 041B
	add_tm PSYCHIC_M    ; 041C
	add_tm SHADOW_BALL  ; 041D
	add_tm BRICK_BREAK  ; 041E
	add_tm DOUBLE_TEAM  ; 041F
	add_tm REFLECT      ; 0420
	add_tm SHOCK_WAVE   ; 0421
	add_tm FLAMETHROWER ; 0422
	add_tm SLUDGE_BOMB  ; 0423
	add_tm SANDSTORM    ; 0424
	add_tm FIRE_BLAST   ; 0425
	add_tm ROCK_TOMB    ; 0426
	add_tm AERIAL_ACE   ; 0427
	add_tm TORMENT      ; 0428
	add_tm FACADE       ; 0429
	add_tm SECRET_POWER ; 042A
	add_tm REST         ; 042B
	add_tm ATTRACT      ; 042C
	add_tm THIEF        ; 042D
	add_tm STEEL_WING   ; 042E
	add_tm SKILL_SWAP   ; 042F
	add_tm SNATCH       ; 0430
	add_tm OVERHEAT     ; 0431
DEF NUM_TMS EQU __tmhm_value__ - 1

MACRO add_hm
; Defines three constants:
; - HM_\1: the item id, starting at $f3
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
	const HM_\1
	DEF HM_VALUE = __tmhm_value__ - NUM_TMS
	DEF HM{02d:HM_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF HM01 EQU const_value
	add_hm CUT          ; 0432
	add_hm FLY          ; 0433
	add_hm SURF         ; 0434
	add_hm STRENGTH     ; 0435
	add_hm FLASH        ; 0436
	add_hm ROCK_SMASH   ; 0437
	add_hm WATERFALL    ; 0438
	add_hm DIVE         ; 0439
DEF NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1

assert (NUM_TMS + NUM_HMS) < $ff, "TMs/HMs can't exceed 255 due to GetTMHMNumber."

MACRO add_mt
; Defines two constants:
; - \1_TMNUM: the learnable TM/HM flag, starting at 58
; - MT##_MOVE: alias for the move id, equal to the value of \1
	DEF MT_VALUE = __tmhm_value__ - NUM_TMS - NUM_HMS
	DEF MT{02d:MT_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF MT01 EQU const_value
	add_mt FRENZY_PLANT
	add_mt BLAST_BURN
	add_mt HYDRO_CANNON
DEF NUM_TUTORS = __tmhm_value__ - NUM_TMS - NUM_HMS - 1

DEF NUM_TM_HM_TUTOR EQU NUM_TMS + NUM_HMS + NUM_TUTORS

DEF USE_SCRIPT_VAR EQU $00
DEF ITEM_FROM_MEM  EQU $ffff

; leftovers from red
; DEF SAFARI_BALL    EQU $08 ; MOON_STONE
DEF MOON_STONE_RED EQU $0a ; BURN_HEAL
DEF FULL_HEAL_RED  EQU $34 ; X_SPEED
