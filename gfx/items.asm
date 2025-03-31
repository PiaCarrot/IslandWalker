UpdateItemIconAndDescription::
	farcall UpdateItemDescription
	jr UpdateItemIcon

UpdateKeyItemIconAndDescription::
	farcall UpdateKeyItemDescription
	jr UpdateItemIcon

UpdateItemBallIconAndDescription::
	farcall UpdateItemBallDescription
	jr UpdateItemIcon
	
UpdateBerryIconAndDescription::
	farcall UpdateItemBerryDescription
	jr UpdateItemIcon

UpdateMedicineIconAndDescription::
	farcall UpdateItemMedicineDescription
	jr UpdateItemIcon

UpdateValuableIconAndDescription::
	farcall UpdateItemValuableDescription
; fallthrough														
UpdateItemIcon:
	ld a, [wCurSpecies]
	call GetItemIndexFromID
	ld b, h
	ld c, l
	ld a, BANK(ItemIconPointers)
	ld hl, ItemIconPointers
	call LoadDoubleIndirectPointer
	jr nz, .ok
	ld a, BANK(NoItemIcon)
	ld hl, NoItemIcon
.ok
	ld de, vTiles2 tile $1f
	lb bc, BANK(NoItemIcon), $9
	call DecompressRequest2bpp
	call LoadItemIconPalette
	call SetDefaultBGPAndOBP
	call WaitBGMap
	ret
	
ItemIconPointers:
	indirect_table 2, 1
	indirect_entries NUM_ITEM_POCKET, ItemIconPointers1
	indirect_entries FIRST_KEY_ITEM - 1; sparse Table
	indirect_entries (FIRST_KEY_ITEM - 1) + NUM_KEY_ITEM_POCKET, KeyItemIconPointers
	indirect_entries FIRST_BALL_ITEM - 1 ; sparse Table
	indirect_entries (FIRST_BALL_ITEM - 1) + NUM_BALL_ITEM_POCKET, BallsIconPointers
	indirect_entries FIRST_BERRY_ITEM - 1 ; sparse Table
	indirect_entries (FIRST_BERRY_ITEM - 1) + NUM_BERRY_ITEM_POCKET, BerriesIconPointers
	indirect_entries FIRST_MEDICINE_ITEM - 1 ; sparse Table
	indirect_entries (FIRST_MEDICINE_ITEM - 1) + NUM_MEDICINE_ITEM_POCKET, MedicineIconsPointers
	indirect_entries FIRST_VALUABLE_ITEM - 1 ; sparse Table
	indirect_entries (FIRST_VALUABLE_ITEM - 1) + NUM_VALUABLE_ITEM_POCKET, ValuablesIconsPointers
	indirect_table_end
	
ItemIconPointers1:
    dw BrightpowderIcon ; BRIGHTPOWDER
    dw NoItemIcon ; TOWN_MAP_RED
    dw MoonStoneIcon ; MOON_STONE
    dw EscapeRopeIcon ; ESCAPE_ROPE
    dw RepelIcon ; REPEL
    dw FireStoneIcon ; FIRE_STONE
    dw ThunderStoneIcon ; THUNDERSTONE
    dw WaterStoneIcon ; WATER_STONE
    dw NoItemIcon ; ITEM_19
    dw LuckyPunchIcon ; LUCKY_PUNCH
    dw XAccuracyIcon ; X_ACCURACY
    dw LeafStoneIcon ; LEAF_STONE
    dw BrightpowderIcon ; METAL_POWDER
    dw PokeDollIcon ; POKE_DOLL
    dw XAccuracyIcon ; GUARD_SPEC
    dw RepelIcon ; SUPER_REPEL
    dw RepelIcon ; MAX_REPEL
    dw XAccuracyIcon ; DIRE_HIT
    dw NoItemIcon ; ITEM_2D
    dw XAccuracyIcon ; X_ATTACK
    dw NoItemIcon ; ITEM_32
    dw XAccuracyIcon ; X_DEFEND
    dw XAccuracyIcon ; X_SPEED
    dw XAccuracyIcon ; X_SP_ATK
    dw NoItemIcon ; POKE_FLUTE
    dw ExpShareIcon ; EXP_SHARE
    dw QuickClawIcon ; QUICK_CLAW
    dw BrightpowderIcon ; SOFT_SAND
    dw SharpBeakIcon ; SHARP_BEAK
    dw PoisonBarbIcon ; POISON_BARB
    dw KingsRockIcon ; KINGS_ROCK
    dw SilverPowderIcon ; SILVERPOWDER
    dw NoItemIcon ; ITEM_5A
    dw AmuletCoinIcon ; AMULET_COIN
    dw CleanseTagIcon ; CLEANSE_TAG
    dw MysticWaterIcon ; MYSTIC_WATER
    dw TwistedSpoonIcon ; TWISTEDSPOON
    dw BlackbeltIcon ; BLACK_BELT_I
    dw NoItemIcon ; ITEM_64
    dw BlackGlassesIcon ; BLACKGLASSES
    dw PinkBowIcon ; PINK_BOW
    dw StickIcon ; STICK
    dw SmokeBallIcon ; SMOKE_BALL
    dw NeverMeltIceIcon ; NEVERMELTICE
    dw MagnetIcon ; MAGNET
    dw EverStoneIcon ; EVERSTONE
    dw SpellTagIcon ; SPELL_TAG
    dw MiracleSeedIcon ; MIRACLE_SEED
    dw ThickClubIcon ; THICK_CLUB
    dw FocusBandIcon ; FOCUS_BAND
    dw NoItemIcon ; ITEM_78
    dw HardStoneIcon ; HARD_STONE
    dw LuckyEggIcon ; LUCKY_EGG
    dw NoItemIcon ; ITEM_87
    dw NoItemIcon ; ITEM_88
    dw CharcoalIcon ; CHARCOAL
    dw ScopeLensIcon ; SCOPE_LENS
    dw NoItemIcon ; ITEM_8D
    dw NoItemIcon ; ITEM_8E
    dw MetalCoatIcon ; METAL_COAT
    dw DragonFangIcon ; DRAGON_FANG
    dw NoItemIcon ; ITEM_91
    dw LeftoversIcon ; LEFTOVERS
    dw NoItemIcon ; ITEM_93
    dw NoItemIcon ; ITEM_94
    dw NoItemIcon ; ITEM_95
    dw DragonScaleIcon ; DRAGON_SCALE
    dw BerserkGeneIcon ; BERSERK_GENE
    dw NoItemIcon ; ITEM_99
    dw NoItemIcon ; ITEM_9A
    dw NoItemIcon ; ITEM_9B
    dw MailIcon ; FLOWER_MAIL
    dw NoItemIcon ; ITEM_A2
    dw LightBallIcon ; LIGHT_BALL
    dw GorgeousBoxIcon ; NORMAL_BOX
    dw GorgeousBoxIcon ; GORGEOUS_BOX
    dw SunStoneIcon ; SUN_STONE
    dw PolkadotBowIcon ; POLKADOT_BOW
    dw NoItemIcon ; ITEM_AB
    dw UpGradeIcon ; UP_GRADE
    dw NoItemIcon ; ITEM_B0
    dw NoItemIcon ; ITEM_B3
    dw MailIcon ; SURF_MAIL
    dw MailIcon ; LITEBLUEMAIL
    dw MailIcon ; PORTRAITMAIL
    dw MailIcon ; LOVELY_MAIL
    dw MailIcon ; EON_MAIL
    dw MailIcon ; MORPH_MAIL
    dw MailIcon ; BLUESKY_MAIL
    dw MailIcon ; MUSIC_MAIL
    dw MailIcon ; MIRAGE_MAIL
    dw NoItemIcon ; ITEM_BE
    dw NoItemIcon ; ITEM_DC
    dw NoItemIcon ; ITEM_C3
    dw NoItemIcon ; ITEM_FA
    dw ShinyStoneIcon ; SHINY_STONE
    dw DuskStoneIcon ; DUSK_STONE
    dw DawnStoneIcon ; DAWN_STONE
    dw IceStoneIcon ; ICE_STONE
    dw BlkAuguriteIcon ; BLK_AUGURITE
    dw PeatBlockIcon ; PEAT_BLOCK
    dw SweetAppleIcon ; SWEET_APPLE
    dw SweetAppleIcon ; TART_APPLE
    dw SweetAppleIcon ; SYRUPY_APPLE
    dw GalarCuffIcon ; GALAR_CUFF
    dw GalarWreathIcon ; GALAR_WREATH
    dw HolyArmorIcon ; HOLY_ARMOR
    dw CursedArmorIcon ; CURSED_ARMOR
    dw ElectirizerIcon ; ELECTIRIZER
    dw MagmarizerIcon ; MAGMARIZER
    dw ProtectorIcon ; PROTECTOR
    dw DubiousDiscIcon ; DUBIOUS_DISC
    dw OvalStoneIcon ; OVAL_STONE
    dw PrismScaleIcon ; PRISM_SCALE
    dw RazorClawIcon ; RAZOR_CLAW
    dw RazorFangIcon ; RAZOR_FANG
    dw ReaperClothIcon ; REAPER_CLOTH
    dw LinkingCordIcon ; LINKING_CORD
    dw FairyFeatherIcon ; FAIRYFEATHER
    dw BrightpowderIcon ; QUICK_POWDER
    dw EvioliteIcon ; EVIOLITE
    dw SoulDewIcon ; SOUL_DEW
    dw SootheBellIcon ; SOOTHE_BELL
    dw MirrorHerbIcon ; MIRROR_HERB
    dw HerbIcon ; MENTAL_HERB
    dw HerbIcon ; POWER_HERB
    dw HerbIcon ; WHITE_HERB
    dw FullIncenseIcon ; FULL_INCENSE
    dw LaxIncenseIcon ; LAX_INCENSE
    dw LuckIncenseIcon ; LUCK_INCENSE
    dw OddIncenseIcon ; ODD_INCENSE
    dw PureIncenseIcon ; PURE_INCENSE
    dw RockIncenseIcon ; ROCK_INCENSE
    dw RoseIncenseIcon ; ROSE_INCENSE
    dw SeaIncenseIcon ; SEA_INCENSE
    dw WaveIncenseIcon ; WAVE_INCENSE
    dw MachoBraceIcon ; MACHO_BRACE
    dw PowerAnkletIcon ; POWER_ANKLET
    dw PowerBandIcon ; POWER_BAND
    dw PowerBeltIcon ; POWER_BELT
    dw PowerBracerIcon ; POWER_BRACER
    dw PowerLensIcon ; POWER_LENS
    dw PowerWeightIcon ; POWER_WEIGHT
    dw XAccuracyIcon ; X_SP_DEF
    dw LeaderCrestIcon ; LEADER_CREST
    dw BlockIcon ; GRASSY_BLOCK
    dw BlockIcon ; FIERY_BLOCK
    dw BlockIcon ; CHILLY_BLOCK
    dw BlockIcon ; ZAPPY_BLOCK
    dw BlockIcon ; LOVELY_BLOCK
    dw BlockIcon ; CRUNCHYBLOCK
    dw LightBallIcon ; AURORA_ORB
    dw XAccuracyIcon ; X_EVADE
.IndirectEnd:
	
KeyItemIconPointers:
	dw NoItemIcon ; BICYCLE
	dw NoItemIcon ; COIN_CASE
	dw NoItemIcon ; ITEMFINDER
	dw NoItemIcon ; OLD_ROD
	dw NoItemIcon ; GOOD_ROD
	dw NoItemIcon ; SUPER_ROD
	dw NoItemIcon ; RED_SCALE
	dw NoItemIcon ; SECRETPOTION
	dw NoItemIcon ; S_S_TICKET
	dw NoItemIcon ; MYSTERY_EGG
	dw NoItemIcon ; CLEAR_BELL
	dw NoItemIcon ; SILVER_WING
	dw NoItemIcon ; GS_BALL_KEY
	dw NoItemIcon ; BLUE_CARD
	dw NoItemIcon ; CARD_KEY
	dw NoItemIcon ; MACHINE_PART
	dw NoItemIcon ; EGG_TICKET
	dw NoItemIcon ; LOST_ITEM
	dw NoItemIcon ; BASEMENT_KEY
	dw NoItemIcon ; PASS
	dw NoItemIcon ; SQUIRTBOTTLE
	dw NoItemIcon ; RAINBOW_WING
	dw NoItemIcon ; SECRET_STASH
	dw NoItemIcon ; SEA_MAP
	dw NoItemIcon ; BERRY_LOG
	dw NoItemIcon ; EXCEL_SCOPE
.IndirectEnd:
	
BallsIconPointers:
	dw NoItemIcon ; MASTER_BALL
	dw NoItemIcon ; ULTRA_BALL
	dw NoItemIcon ; GREAT_BALL
	dw NoItemIcon ; POKE_BALL
	dw NoItemIcon ; SAFARI_BALL
	dw NoItemIcon ; NET_BALL
	dw NoItemIcon ; DIVE_BALL
	dw NoItemIcon ; NEST_BALL
	dw NoItemIcon ; REPEAT_BALL
	dw NoItemIcon ; TIMER_BALL
	dw NoItemIcon ; LUXURY_BALL
	dw NoItemIcon ; PREMIER_BALL
	dw NoItemIcon ; FAST_BALL
	dw NoItemIcon ; LEVEL_BALL
	dw NoItemIcon ; LURE_BALL
	dw NoItemIcon ; HEAVY_BALL
	dw NoItemIcon ; LOVE_BALL
	dw NoItemIcon ; FRIEND_BALL
	dw NoItemIcon ; MOON_BALL
	dw NoItemIcon ; PARK_BALL
	dw NoItemIcon ; SPORT_BALL
	dw NoItemIcon ; DUSK_BALL
	dw NoItemIcon ; HEAL_BALL
	dw NoItemIcon ; QUICK_BALL
	dw NoItemIcon ; CHERISH_BALL
	dw NoItemIcon ; DREAM_BALL
	dw NoItemIcon ; BEAST_BALL
	dw NoItemIcon ; STRANGE_BALL
	dw NoItemIcon ; POKE_BALL_H
	dw NoItemIcon ; GREAT_BALL_H
	dw NoItemIcon ; ULTRA_BALL_H
	dw NoItemIcon ; HEAVY_BALL_H
	dw NoItemIcon ; LEADEN_BALL
	dw NoItemIcon ; GIGATON_BALL
	dw NoItemIcon ; FEATHER_BALL
	dw NoItemIcon ; WING_BALL
	dw NoItemIcon ; JET_BALL
	dw NoItemIcon ; ORIGIN_BALL
	dw NoItemIcon ; ROCKET_BALL
	dw NoItemIcon ; GS_BALL
.IndirectEnd:
	
BerriesIconPointers:
	dw NoItemIcon ; RED_APRICORN ; 0300
	dw NoItemIcon ; BLU_APRICORN ; 0301
	dw NoItemIcon ; YLW_APRICORN ; 0302
	dw NoItemIcon ; GRN_APRICORN ; 0303
	dw NoItemIcon ; WHT_APRICORN ; 0304
	dw NoItemIcon ; BLK_APRICORN ; 0305
	dw NoItemIcon ; PNK_APRICORN ; 0306
	dw NoItemIcon ; BRN_APRICORN ; 0307
	dw NoItemIcon ; PECHA_BERRY  ; 0308
	dw NoItemIcon ; CHERI_BERRY  ; 0309
	dw NoItemIcon ; ASPEAR_BERRY ; 030A
	dw NoItemIcon ; RAWST_BERRY  ; 030B
	dw NoItemIcon ; PERSIM_BERRY ; 030C
	dw NoItemIcon ; CHESTO_BERRY ; 030D
	dw NoItemIcon ; LUM_BERRY    ; 030E
	dw NoItemIcon ; LEPPA_BERRY  ; 030F
	dw NoItemIcon ; ORAN_BERRY   ; 0310
	dw NoItemIcon ; SITRUS_BERRY ; 0311
	dw NoItemIcon ; FIGY_BERRY   ; 0312
	dw NoItemIcon ; WIKI_BERRY   ; 0313
	dw NoItemIcon ; MAGO_BERRY   ; 0314
	dw NoItemIcon ; AGUAV_BERRY  ; 0315
	dw NoItemIcon ; IAPAPA_BERRY ; 0316
	dw NoItemIcon ; POMEG_BERRY  ; 0317
	dw NoItemIcon ; KELPSY_BERRY ; 0318
	dw NoItemIcon ; QUALOT_BERRY ; 0319
	dw NoItemIcon ; HONDEW_BERRY ; 031A
	dw NoItemIcon ; GREPA_BERRY  ; 031B
	dw NoItemIcon ; TAMATO_BERRY ; 031C
	dw NoItemIcon ; OCCA_BERRY   ; 031D
	dw NoItemIcon ; PASSHO_BERRY ; 031E
	dw NoItemIcon ; WACAN_BERRY  ; 031F
	dw NoItemIcon ; RINDO_BERRY  ; 0320
	dw NoItemIcon ; YACHE_BERRY  ; 0321
	dw NoItemIcon ; CHOPLE_BERRY ; 0322
	dw NoItemIcon ; KEBIA_BERRY  ; 0323
	dw NoItemIcon ; SHUCA_BERRY  ; 0324
	dw NoItemIcon ; COBA_BERRY   ; 0325
	dw NoItemIcon ; PAYAPA_BERRY ; 0326
	dw NoItemIcon ; TANGA_BERRY  ; 0327
	dw NoItemIcon ; CHARTI_BERRY ; 0328
	dw NoItemIcon ; KASIB_BERRY  ; 0329
	dw NoItemIcon ; HABAN_BERRY  ; 032A
	dw NoItemIcon ; COLBUR_BERRY ; 032B
	dw NoItemIcon ; BABIRI_BERRY ; 032C
	dw NoItemIcon ; CHILAN_BERRY ; 032D
	dw NoItemIcon ; ROSELI_BERRY ; 032E
	dw NoItemIcon ; LIECHI_BERRY ; 032F
	dw NoItemIcon ; GANLON_BERRY ; 0330
	dw NoItemIcon ; SALAC_BERRY  ; 0331
	dw NoItemIcon ; PETAYA_BERRY ; 0332
	dw NoItemIcon ; APICOT_BERRY ; 0333
	dw NoItemIcon ; LANSAT_BERRY ; 0334
	dw NoItemIcon ; STARF_BERRY  ; 0335
	dw NoItemIcon ; KEE_BERRY    ; 0336
	dw NoItemIcon ; MARANGABERRY ; 0337
	dw NoItemIcon ; ENIGMA_BERRY ; 0338
	dw NoItemIcon ; MICLE_BERRY  ; 0339
	dw NoItemIcon ; CUSTAP_BERRY ; 033A
	dw NoItemIcon ; JABOCA_BERRY ; 033B
	dw NoItemIcon ; ROWAP_BERRY  ; 033C
	dw NoItemIcon ; EGGANT_BERRY ; 033D
	dw NoItemIcon ; UNYINN_BERRY ; 033E EREADER GINEMA BERRY
	dw NoItemIcon ; HOPO_BERRY   ; 033F
	dw NoItemIcon ; PUMKIN_BERRY ; 0340
	dw NoItemIcon ; CAREEP_BERRY ; 0341 EREADER TOUGA BERRY
	dw NoItemIcon ; BITMEL_BERRY ; 0342 EREADER YAGO BERRY
	dw NoItemIcon ; DRASH_BERRY  ; 0343
	dw NoItemIcon ; RAZZ_BERRY   ; 0344
	dw NoItemIcon ; BLUK_BERRY   ; 0345
	dw NoItemIcon ; NANAB_BERRY  ; 0346
	dw NoItemIcon ; WEPEAR_BERRY ; 0347
	dw NoItemIcon ; PINAP_BERRY  ; 0348
	dw NoItemIcon ; CORNN_BERRY  ; 0349
	dw NoItemIcon ; MAGOST_BERRY ; 034A
	dw NoItemIcon ; RABUTA_BERRY ; 034B
	dw NoItemIcon ; NOMEL_BERRY  ; 034C
	dw NoItemIcon ; SPELON_BERRY ; 034D
	dw NoItemIcon ; PAMTRE_BERRY ; 034E
	dw NoItemIcon ; WATMEL_BERRY ; 034F
	dw NoItemIcon ; DURIN_BERRY  ; 0350
	dw NoItemIcon ; BELUE_BERRY  ; 0351
	dw NoItemIcon ; STRIB_BERRY  ; 0352
	dw NoItemIcon ; TILOTA_BERRY ; 0353 EREADER CHILAN BERRY
	dw NoItemIcon ; NUTPEA_BERRY ; 0354
	dw NoItemIcon ; KRAU_BERRY   ; 0355 EREADER KUO BERRY
	dw NoItemIcon ; LIGARC_BERRY ; 0356 EREADER NINIKU BERRY
	dw NoItemIcon ; TOTAPO_BERRY ; 0357 EREADER TOPO BERRY
	dw NoItemIcon ; PINKAN_BERRY ; 0358
.IndirectEnd:

MedicineIconsPointers:
	dw AntidoteIcon ; ANTIDOTE     ; 0004
	dw AntidoteIcon ; BURN_HEAL    ; 0005
	dw AntidoteIcon ; ICE_HEAL     ; 0006
	dw AntidoteIcon ; AWAKENING    ; 0007
	dw AntidoteIcon ; PARLYZ_HEAL  ; 0008
	dw MaxPotionIcon ; FULL_RESTORE ; 0009
	dw MaxPotionIcon ; MAX_POTION   ; 000A
	dw PotionIcon ; HYPER_POTION ; 000B
	dw PotionIcon ; SUPER_POTION ; 000C
	dw PotionIcon ; POTION       ; 000D
	dw EtherIcon ; MAX_ELIXIR   ; 0010
	dw HPUpIcon ; HP_UP        ; 0015
	dw VitaminIcon ; PROTEIN      ; 0016
	dw VitaminIcon ; IRON         ; 0017
	dw VitaminIcon ; CARBOS       ; 0018
	dw VitaminIcon ; CALCIUM      ; 001A
	dw RareCandyIcon ; RARE_CANDY   ; 001B
	dw FullHealIcon ; FULL_HEAL    ; 0021
	dw ReviveIcon ; REVIVE       ; 0022
	dw MaxReviveIcon ; MAX_REVIVE   ; 0023
	dw FreshWaterIcon ; FRESH_WATER  ; 0029
	dw SodaPopIcon ; SODA_POP     ; 002A
	dw LemonadeIcon ; LEMONADE     ; 002B
	dw PPUpIcon ; PP_UP        ; 0034
	dw EtherIcon ; ETHER        ; 0035
	dw EtherIcon ; MAX_ETHER    ; 0036
	dw EtherIcon ; ELIXIR       ; 0037
	dw MoomooMilkIcon ; MOOMOO_MILK  ; 0038
	dw RagecandybarIcon ; RAGECANDYBAR ; 0054
	dw SilverPowderIcon ; ENERGYPOWDER ; 0059
	dw EnergyRootIcon ; ENERGY_ROOT  ; 005A
	dw SilverPowderIcon ; HEAL_POWDER  ; 005B
	dw RevivalHerbIcon ; REVIVAL_HERB ; 005C
	dw VitaminIcon ; ZINC         ; 0063
	dw BerryJuiceIcon ; BERRY_JUICE  ; 0065
	dw BrightpowderIcon ; SACRED_ASH   ; 0075
	dw PPMaxIcon ; PP_MAX       ; 00D8
	dw PewterArareIcon ; PEWTER_ARARE ; 00D9
	dw SeventhHeavenIcon ; SEVENTH_HEAVEN
	dw MintIcon ; LONELY_MINT
	dw MintIcon ; ADAMANT_MINT
	dw MintIcon ; NAUGHTY_MINT
	dw MintIcon ; BRAVE_MINT
	dw MintIcon ; BOLD_MINT
	dw MintIcon ; IMPISH_MINT
	dw MintIcon ; LAX_MINT
	dw MintIcon ; RELAXED_MINT
	dw MintIcon ; MODEST_MINT
	dw MintIcon ; MILD_MINT
	dw MintIcon ; RASH_MINT
	dw MintIcon ; QUIET_MINT
	dw MintIcon ; CALM_MINT
	dw MintIcon ; GENTLE_MINT
	dw MintIcon ; CAREFUL_MINT
	dw MintIcon ; SASSY_MINT
	dw MintIcon ; TIMID_MINT
	dw MintIcon ; HASTY_MINT
	dw MintIcon ; JOLLY_MINT
	dw MintIcon ; NAIVE_MINT
	dw MintIcon ; SERIOUS_MINT
	dw MintIcon ; HARDY_MINT
	dw MintIcon ; DOCILE_MINT
	dw MintIcon ; BASHFUL_MINT
	dw MintIcon ; QUIRKY_MINT
	dw AbilityUpIcon ; ABILITY_UP
	dw AntidoteIcon ; PINK_CURE
.IndirectEnd:

ValuablesIconsPointers:
	dw NoItemIcon ; NUGGET       ; 001F
	dw NoItemIcon ; SILVER_LEAF  ; 0033
	dw NoItemIcon ; GOLD_LEAF    ; 003A
	dw NoItemIcon ; TINYMUSHROOM ; 003F
	dw NoItemIcon ; BIG_MUSHROOM ; 0040
	dw NoItemIcon ; SLOWPOKETAIL ; 004A
	dw NoItemIcon ; PEARL        ; 0050
	dw NoItemIcon ; BIG_PEARL    ; 0051
	dw NoItemIcon ; STARDUST     ; 005F
	dw NoItemIcon ; STAR_PIECE   ; 0060
	dw NoItemIcon ; BRICK_PIECE  ; 0081
	dw NoItemIcon ; HEART_SCALE  ; 00C9
	dw NoItemIcon ; BLUE_SHARD   ; 00CA
	dw NoItemIcon ; GREEN_SHARD  ; 00CB
	dw NoItemIcon ; RED_SHARD    ; 00CC
	dw NoItemIcon ; YELLOW_SHARD ; 00CD
	dw NoItemIcon ; RARE_BONE    ; 00CE
	dw NoItemIcon ; BALMMUSHROOM ; 00CF
	dw NoItemIcon ; BIG_NUGGET   ; 00D0
	dw NoItemIcon ; COMET_SHARD  ; 00D1
	dw NoItemIcon ; PEARL_STRING ; 00D2
	dw NoItemIcon ; BEACH_GLASS  ; 00D3
	dw NoItemIcon ; PRETTY_SHELL ; 00D4
	dw NoItemIcon ; TINY_BAMBOO  ; 00D5
	dw NoItemIcon ; BIG_BAMBOO   ; 00D6
	dw NoItemIcon ; SPIDER_SILK  ; 00DC
	dw NoItemIcon ; ANCIENT_VASE ; 00E3
	dw NoItemIcon ; ANCIENT_CUP  ; 00E4
	dw NoItemIcon ; ANCIENT_JAR  ; 00E5
	dw NoItemIcon ; CLAY_SHARD   ; 00E6
	dw NoItemIcon ; HUGE_CRYSTAL ; 00E7
	dw NoItemIcon ; LARGE_JADE   ; 00E8
	dw NoItemIcon ; BIG_EMERALD  ; 00E9
	dw NoItemIcon ; GIANT_RUBY   ; 00EA
	dw NoItemIcon ; BIG_SAPPHIRE ; 00EB
	dw NoItemIcon ; BIG_AMETHYST ; 00EC
	dw NoItemIcon ; HUGE_TOPAZ   ; 00ED
	dw NoItemIcon ; LARGE_GARNET ; 00EE
	dw NoItemIcon ; GIANT_ONYX   ; 00EF
	dw NoItemIcon ; HUGE_DIAMOND ; 00F0
	dw NoItemIcon ; SILVER_CAP
	dw NoItemIcon ; GOLD_CAP
	dw NoItemIcon ; GOLD_DUST
	dw NoItemIcon ; GOLD_STATUE
	dw NoItemIcon ; HONEY
	dw NoItemIcon ; SWEET_HONEY
	dw NoItemIcon ; CANDYTRUFFLE
.IndirectEnd:

LoadItemIconPalette:
	ld a, [wCurSpecies]
	call GetItemIndexFromID
	ld b, h
	ld c, l
	ld a, BANK(ItemIconPalettes)
	ld hl, ItemIconPalettes
	call LoadIndirectPointer
	jr nz, .ok
	ld a, BANK(NoItemPalette)
	ld hl, NoItemPalette
.ok
	ld de, wBGPals1 palette 7 + 2
	ld bc, 4
	jmp FarCopyColorWRAM
	
ItemIconPalettes:
	indirect_table 4, 1
	indirect_entries NUM_ITEM_POCKET, ItemIconPalettes1
	indirect_entries FIRST_KEY_ITEM - 1; sparse Table
	indirect_entries (FIRST_KEY_ITEM - 1) + NUM_KEY_ITEM_POCKET, KeyItemIconPalettes
	indirect_entries FIRST_BALL_ITEM - 1 ; sparse Table
	indirect_entries (FIRST_BALL_ITEM - 1) + NUM_BALL_ITEM_POCKET, BallsIconPalettes
	indirect_entries FIRST_BERRY_ITEM - 1 ; sparse Table
	indirect_entries (FIRST_BERRY_ITEM - 1) + NUM_BERRY_ITEM_POCKET, BerryIconPalettes
	indirect_entries FIRST_MEDICINE_ITEM - 1 ; sparse Table
	indirect_entries (FIRST_MEDICINE_ITEM - 1) + NUM_MEDICINE_ITEM_POCKET, MedicineIconPalettes
	indirect_entries FIRST_VALUABLE_ITEM - 1 ; sparse Table
	indirect_entries (FIRST_VALUABLE_ITEM - 1) + NUM_VALUABLE_ITEM_POCKET, ValuablesIconPalettes
	indirect_table_end

NoItemPalette:
	; NO ITEM
	RGB 20, 20, 20
	RGB 10, 10, 10

ItemIconPalettes1:
; BRIGHTPOWDER
	RGB 21, 28, 21
	RGB 09, 14, 09
; TOWN_MAP_RED
	RGB 20, 20, 20
	RGB 10, 10, 10
; MOON_STONE
	RGB 21, 24, 22
	RGB 13, 16, 14
; ESCAPE_ROPE
	RGB 27, 24, 14
	RGB 18, 15, 05
; REPEL
	RGB 10, 22, 10
	RGB 23, 06, 02
; FIRE_STONE
	RGB 27, 25, 02
	RGB 30, 18, 06
; THUNDERSTONE
	RGB 26, 29, 15
	RGB 09, 18, 09
; WATER_STONE
	RGB 18, 22, 27
	RGB 12, 10, 25
; ITEM_19
	RGB 20, 20, 20
	RGB 10, 10, 10
; LUCKY_PUNCH
	RGB 27, 14, 07
	RGB 17, 17, 17
; X_ACCURACY
	RGB 25, 14, 23
	RGB 20, 10, 18
; LEAF_STONE
	RGB 15, 20, 15
	RGB 11, 13, 07
; METAL_POWDER
	RGB 25, 18, 26
	RGB 19, 19, 19
; POKE_DOLL
	RGB 30, 22, 26
	RGB 26, 18, 22
; GUARD_SPEC
	RGB 13, 26, 14
	RGB 09, 20, 09
; SUPER_REPEL
	RGB 18, 18, 21
	RGB 17, 10, 10
; MAX_REPEL
	RGB 23, 21, 13
	RGB 17, 14, 10
; DIRE_HIT
	RGB 28, 23, 11
	RGB 22, 16, 06
; ITEM_2D
	RGB 20, 20, 20
	RGB 10, 10, 10
; X_ATTACK
	RGB 28, 16, 15
	RGB 20, 09, 09
; ITEM_32
	RGB 20, 20, 20
	RGB 10, 10, 10
; X_DEFEND
	RGB 15, 16, 28
	RGB 09, 09, 20
; X_SPEED
	RGB 13, 25, 25
	RGB 09, 19, 19
; X_SP_ATK
	RGB 25, 25, 13
	RGB 19, 19, 09
; POKE_FLUTE
	RGB 20, 20, 20
	RGB 10, 10, 10
; EXP_SHARE
	RGB 21, 23, 21
	RGB 13, 15, 13
; QUICK_CLAW
	RGB 27, 24, 13
	RGB 25, 19, 10
; SOFT_SAND
	RGB 25, 21, 14
	RGB 19, 12, 19
; SHARP_BEAK
	RGB 30, 27, 11
	RGB 17, 12, 04
; POISON_BARB
	RGB 26, 26, 26
	RGB 24, 18, 24
; KINGS_ROCK
	RGB 28, 26, 11
	RGB 20, 18, 04
; SILVERPOWDER
	RGB 24, 24, 24
	RGB 13, 23, 13
; ITEM_5A
	RGB 20, 20, 20
	RGB 10, 10, 10
; AMULET_COIN
	RGB 31, 30, 06
	RGB 30, 22, 06
; CLEANSE_TAG
	RGB 23, 10, 10
	RGB 18, 18, 18
; MYSTIC_WATER
	RGB 19, 27, 31
	RGB 11, 11, 26
; TWISTEDSPOON
	RGB 19, 21, 21
	RGB 13, 16, 16
; BLACK_BELT_I
	RGB 12, 11, 12
	RGB 09, 08, 09
; ITEM_64
	RGB 20, 20, 20
	RGB 10, 10, 10
; BLACKGLASSES
	RGB 12, 11, 12
	RGB 09, 08, 09
; PINK_BOW
	RGB 31, 18, 23
	RGB 28, 12, 17
; STICK
	RGB 22, 22, 17
	RGB 15, 23, 01
; SMOKE_BALL
	RGB 24, 18, 26
	RGB 18, 12, 20
; NEVERMELTICE
	RGB 20, 26, 28
	RGB 14, 20, 24
; MAGNET
	RGB 18, 20, 18
	RGB 27, 07, 07
; EVERSTONE
	RGB 22, 25, 26
	RGB 13, 17, 19
; SPELL_TAG
	RGB 18, 18, 18
	RGB 31, 16, 16
; MIRACLE_SEED
	RGB 29, 29, 11
	RGB 24, 24, 06
; THICK_CLUB
	RGB 26, 26, 21
	RGB 19, 19, 16
; FOCUS_BAND
	RGB 23, 10, 10
	RGB 28, 21, 06
; ITEM_78
	RGB 20, 20, 20
	RGB 10, 10, 10
; HARD_STONE
	RGB 22, 21, 21
	RGB 10, 09, 09
; LUCKY_EGG
	RGB 27, 29, 30
	RGB 20, 21, 22
; ITEM_87
	RGB 20, 20, 20
	RGB 10, 10, 10
; ITEM_88
	RGB 20, 20, 20
	RGB 10, 10, 10
; CHARCOAL
	RGB 17, 17, 17
	RGB 08, 08, 08
; SCOPE_LENS
	RGB 18, 20, 22
	RGB 29, 24, 09
; ITEM_8D
	RGB 20, 20, 20
	RGB 10, 10, 10
; ITEM_8E
	RGB 20, 20, 20
	RGB 10, 10, 10
; METAL_COAT
	RGB 22, 24, 24
	RGB 13, 16, 16
; DRAGON_FANG
	RGB 23, 20, 19
	RGB 16, 13, 12
; ITEM_91
	RGB 20, 20, 20
	RGB 10, 10, 10
; LEFTOVERS
	RGB 28, 10, 10
	RGB 15, 18, 04
; ITEM_93
	RGB 20, 20, 20
	RGB 10, 10, 10
; ITEM_94
	RGB 20, 20, 20
	RGB 10, 10, 10
; ITEM_95
	RGB 20, 20, 20
	RGB 10, 10, 10
; DRAGON_SCALE
	RGB 19, 27, 31
	RGB 13, 21, 25
; BERSERK_GENE
	RGB 31, 22, 16
	RGB 17, 14, 18
; ITEM_99
	RGB 20, 20, 20
	RGB 10, 10, 10
; ITEM_9A
	RGB 20, 20, 20
	RGB 10, 10, 10
; ITEM_9B
	RGB 20, 20, 20
	RGB 10, 10, 10
; FLOWER_MAIL
	RGB 20, 31, 11
	RGB 31, 19, 00
; ITEM_A2
	RGB 20, 20, 20
	RGB 10, 10, 10
; LIGHT_BALL
	RGB 28, 27, 05
	RGB 20, 20, 02
; NORMAL_BOX
	RGB 31, 29, 23
	RGB 31, 24, 17
; GORGEOUS_BOX
	RGB 27, 23, 20
	RGB 20, 16, 12
; SUN_STONE
	RGB 30, 16, 09
	RGB 24, 12, 05
; POLKADOT_BOW
	RGB 31, 18, 23
	RGB 28, 12, 17
; ITEM_AB
	RGB 20, 20, 20
	RGB 10, 10, 10
; UP_GRADE
	RGB 20, 26, 20
	RGB 31, 27, 00
; ITEM_B0
	RGB 20, 20, 20
	RGB 10, 10, 10
; ITEM_B3
	RGB 20, 20, 20
	RGB 10, 10, 10
; SURF_MAIL
	RGB 15, 20, 31
	RGB 31, 12, 00
; LITEBLUEMAIL
	RGB 24, 17, 31
	RGB 08, 11, 31
; PORTRAITMAIL
	RGB 31, 25, 17
	RGB 28, 12, 05
; LOVELY_MAIL
	RGB 19, 26, 31
	RGB 31, 09, 31
; EON_MAIL
	RGB 31, 19, 28
	RGB 12, 22, 00
; MORPH_MAIL
	RGB 19, 17, 23
	RGB 31, 12, 00
; BLUESKY_MAIL
	RGB 07, 26, 31
	RGB 31, 11, 11
; MUSIC_MAIL
	RGB 21, 31, 21
	RGB 31, 12, 00
; MIRAGE_MAIL
	RGB 07, 26, 31
	RGB 00, 21, 00
; ITEM_BE
	RGB 20, 20, 20
	RGB 10, 10, 10
; ITEM_DC
	RGB 20, 20, 20
	RGB 10, 10, 10
; ITEM_C3
	RGB 20, 20, 20
	RGB 10, 10, 10
; ITEM_FA
	RGB 20, 20, 20
	RGB 10, 10, 10
; SHINY_STONE
	RGB 24, 28, 20
	RGB 31, 27, 01
; DUSK_STONE
	RGB 21, 15, 21
	RGB 14, 10, 15
; DAWN_STONE
	RGB 20, 20, 20
	RGB 10, 10, 10
; ICE_STONE
	RGB 18, 27, 28
	RGB 07, 19, 22
; BLK_AUGURITE
	RGB 17, 17, 17
	RGB 08, 08, 08
; PEAT_BLOCK
	RGB 20, 20, 20
	RGB 10, 10, 10
; SWEET_APPLE
	RGB 31, 05, 05
	RGB 20, 03, 03
; TART_APPLE
	RGB 23, 20, 09
	RGB 15, 22, 09
; SYRUPY_APPLE
	RGB 31, 15, 06
	RGB 31, 21, 04
; GALAR_CUFF
	RGB 28, 11, 04
	RGB 23, 17, 06
; GALAR_WREATH
	RGB 28, 11, 04
	RGB 04, 17, 02
; HOLY_ARMOR
	RGB 21, 07, 06
	RGB 23, 21, 14
; CURSED_ARMOR
	RGB 09, 10, 20
	RGB 13, 11, 17
; ELECTIRIZER
	RGB 31, 31, 02
	RGB 20, 19, 00
; MAGMARIZER
	RGB 29, 13, 13
	RGB 22, 06, 06
; PROTECTOR
	RGB 27, 11, 04
	RGB 17, 09, 06
; DUBIOUS_DISC
	RGB 21, 19, 23
	RGB 31, 04, 29
; OVAL_STONE
	RGB 25, 27, 29
	RGB 20, 21, 22
; PRISM_SCALE
	RGB 20, 20, 20
	RGB 10, 10, 10
; RAZOR_CLAW
	RGB 19, 20, 21
	RGB 16, 17, 18
; RAZOR_FANG
	RGB 19, 20, 21
	RGB 13, 14, 15
; REAPER_CLOTH
	RGB 20, 20, 20
	RGB 10, 10, 10
; LINKING_CORD
	RGB 21, 21, 21
	RGB 09, 09, 09
; FAIRYFEATHER
	RGB 20, 20, 20
	RGB 10, 10, 10
; QUICK_POWDER
	RGB 15, 23, 29
	RGB 19, 19, 19
; EVIOLITE
	RGB 26, 18, 29
	RGB 22, 15, 28
; SOUL_DEW
	RGB 20, 20, 20
	RGB 10, 10, 10
; SOOTHE_BELL
	RGB 19, 25, 24
	RGB 15, 17, 17
; MIRROR_HERB
	RGB 28, 30, 15
	RGB 02, 20, 19
; MENTAL_HERB
	RGB 18, 28, 28
	RGB 07, 18, 18
; POWER_HERB
	RGB 29, 07, 07
	RGB 22, 06, 06
; WHITE_HERB
	RGB 28, 26, 28
	RGB 18, 15, 18
; FULL_INCENSE
	RGB 20, 20, 20
	RGB 10, 10, 10
; LAX_INCENSE
	RGB 20, 20, 20
	RGB 10, 10, 10
; LUCK_INCENSE
	RGB 20, 20, 20
	RGB 10, 10, 10
; ODD_INCENSE
	RGB 20, 20, 20
	RGB 10, 10, 10
; PURE_INCENSE
	RGB 20, 20, 20
	RGB 10, 10, 10
; ROCK_INCENSE
	RGB 20, 20, 20
	RGB 10, 10, 10
; ROSE_INCENSE
	RGB 20, 20, 20
	RGB 10, 10, 10
; SEA_INCENSE
	RGB 20, 20, 20
	RGB 10, 10, 10
; WAVE_INCENSE
	RGB 20, 20, 20
	RGB 10, 10, 10
; MACHO_BRACE
	RGB 25, 25, 08
	RGB 09, 16, 10
; POWER_ANKLET
	RGB 12, 26, 29
	RGB 04, 18, 24
; POWER_BAND
	RGB 29, 28, 12
	RGB 24, 20, 03
; POWER_BELT
	RGB 29, 22, 12
	RGB 22, 14, 07
; POWER_BRACER
	RGB 30, 14, 14
	RGB 23, 10, 10
; POWER_LENS
	RGB 31, 12, 31
	RGB 24, 08, 26
; POWER_WEIGHT
	RGB 12, 29, 15
	RGB 08, 25, 10
; X_SP_DEF
	RGB 11, 22, 22
	RGB 08, 17, 17
; LEADER_CREST
	RGB 31, 25, 11
	RGB 17, 16, 16
; GRASSY_BLOCK
	RGB 13, 26, 14
	RGB 09, 20, 09
; FIERY_BLOCK
	RGB 28, 16, 15
	RGB 20, 09, 09
; CHILLY_BLOCK
	RGB 15, 16, 28
	RGB 09, 09, 20
; ZAPPY_BLOCK
	RGB 25, 25, 13
	RGB 19, 19, 09
; LOVELY_BLOCK
	RGB 25, 14, 23
	RGB 20, 10, 18
; CRUNCHYBLOCK
	RGB 17, 17, 17
	RGB 08, 08, 08
; AURORA_ORB
	RGB 01, 31, 21
	RGB 01, 24, 27
; X_EVADE
	RGB 13, 21, 29
	RGB 21, 13, 31
.IndirectEnd:
	
KeyItemIconPalettes:
; BICYCLE
	RGB 20, 20, 20
	RGB 10, 10, 10
; COIN_CASE
	RGB 20, 20, 20
	RGB 10, 10, 10
; ITEMFINDER
	RGB 20, 20, 20
	RGB 10, 10, 10
; OLD_ROD
	RGB 20, 20, 20
	RGB 10, 10, 10
; GOOD_ROD
	RGB 20, 20, 20
	RGB 10, 10, 10
; SUPER_ROD
	RGB 20, 20, 20
	RGB 10, 10, 10
; RED_SCALE
	RGB 20, 20, 20
	RGB 10, 10, 10
; SECRETPOTION
	RGB 20, 20, 20
	RGB 10, 10, 10
; S_S_TICKET
	RGB 20, 20, 20
	RGB 10, 10, 10
; MYSTERY_EGG
	RGB 20, 20, 20
	RGB 10, 10, 10
; CLEAR_BELL
	RGB 20, 20, 20
	RGB 10, 10, 10
; SILVER_WING
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL_KEY
	RGB 20, 20, 20
	RGB 10, 10, 10
; BLUE_CARD
	RGB 20, 20, 20
	RGB 10, 10, 10
; CARD_KEY
	RGB 20, 20, 20
	RGB 10, 10, 10
; MACHINE_PART
	RGB 20, 20, 20
	RGB 10, 10, 10
; EGG_TICKET
	RGB 20, 20, 20
	RGB 10, 10, 10
; LOST_ITEM
	RGB 20, 20, 20
	RGB 10, 10, 10
; BASEMENT_KEY
	RGB 20, 20, 20
	RGB 10, 10, 10
; PASS
	RGB 20, 20, 20
	RGB 10, 10, 10
; SQUIRTBOTTLE
	RGB 20, 20, 20
	RGB 10, 10, 10
; RAINBOW_WING
	RGB 20, 20, 20
	RGB 10, 10, 10
; SECRET_STASH
	RGB 20, 20, 20
	RGB 10, 10, 10
; SEA_MAP
	RGB 20, 20, 20
	RGB 10, 10, 10
; BERRY_LOG
	RGB 20, 20, 20
	RGB 10, 10, 10
; EXCEL_SCOPE
	RGB 20, 20, 20
	RGB 10, 10, 10
.IndirectEnd:
	
BallsIconPalettes:
; MASTER_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; ULTRA_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GREAT_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; POKE_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; SAFARI_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; NET_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; DIVE_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; NEST_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; REPEAT_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; TIMER_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; LUXURY_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; PREMIER_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; FAST_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; LEVEL_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; LURE_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; HEAVY_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; LOVE_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; FRIEND_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; MOON_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; PARK_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; SPORT_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; DUSK_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; HEAL_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; QUICK_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; CHERISH_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; DREAM_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; BEAST_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; STRANGE_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; POKE_BALL_H
	RGB 20, 20, 20
	RGB 10, 10, 10
; GREAT_BALL_H
	RGB 20, 20, 20
	RGB 10, 10, 10
; ULTRA_BALL_H
	RGB 20, 20, 20
	RGB 10, 10, 10
; HEAVY_BALL_H
	RGB 20, 20, 20
	RGB 10, 10, 10
; LEADEN_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GIGATON_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; FEATHER_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; WING_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; JET_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; ORIGIN_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; ROCKET_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
.IndirectEnd:
	
BerryIconPalettes:
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
.IndirectEnd:

MedicineIconPalettes:
; ANTIDOTE
	RGB 31, 29, 12
	RGB 31, 22, 05
; BURN_HEAL
	RGB 17, 30, 17
	RGB 13, 26, 13
; ICE_HEAL
	RGB 31, 23, 22
	RGB 30, 17, 17
; AWAKENING
	RGB 16, 29, 31
	RGB 11, 24, 26
; PARLYZ_HEAL
	RGB 31, 31, 18
	RGB 27, 27, 11
; FULL_RESTORE
	RGB 22, 22, 16
	RGB 15, 24, 04
; MAX_POTION
	RGB 22, 22, 24
	RGB 08, 19, 28
; HYPER_POTION
	RGB 24, 27, 29
	RGB 31, 12, 21
; SUPER_POTION
	RGB 28, 23, 13
	RGB 24, 12, 11
; POTION
	RGB 20, 25, 23
	RGB 16, 12, 21
; MAX_ELIXIR
	RGB 26, 26, 11
	RGB 14, 24, 24
; HP_UP
	RGB 13, 20, 29
	RGB 18, 11, 07
; PROTEIN
	RGB 30, 20, 00
	RGB 18, 11, 07
; IRON
	RGB 06, 20, 00
	RGB 18, 11, 07
; CARBOS
	RGB 05, 20, 30
	RGB 18, 11, 07
; CALCIUM
	RGB 30, 08, 00
	RGB 18, 11, 07
; RARE_CANDY
	RGB 15, 18, 29
	RGB 10, 12, 24
; FULL_HEAL
	RGB 27, 29, 00
	RGB 21, 23, 00
; REVIVE
	RGB 28, 28, 15
	RGB 20, 20, 07
; MAX_REVIVE
	RGB 28, 28, 15
	RGB 20, 20, 07
; FRESH_WATER
	RGB 18, 20, 27
	RGB 08, 16, 06
; SODA_POP
	RGB 13, 23, 28
	RGB 07, 16, 22
; LEMONADE
	RGB 31, 24, 19
	RGB 24, 24, 16
; PP_UP
	RGB 23, 11, 23
	RGB 18, 11, 07
; ETHER
	RGB 20, 24, 24
	RGB 19, 13, 20
; MAX_ETHER
	RGB 25, 25, 27
	RGB 16, 24, 14
; ELIXIR
	RGB 25, 25, 16
	RGB 24, 16, 14
; MOOMOO_MILK
	RGB 28, 28, 22
	RGB 22, 13, 22
; RAGECANDYBAR
	RGB 13, 19, 08
	RGB 20, 08, 06
; ENERGYPOWDER
	RGB 27, 27, 19
	RGB 24, 14, 14
; ENERGY_ROOT
	RGB 28, 25, 16
	RGB 25, 19, 10
; HEAL_POWDER
	RGB 11, 21, 11
	RGB 29, 29, 12
; REVIVAL_HERB
	RGB 22, 28, 14
	RGB 14, 20, 10
; ZINC
	RGB 16, 27, 00
	RGB 18, 11, 07
; BERRY_JUICE
	RGB 21, 23, 12
	RGB 11, 13, 02
; SACRED_ASH
	RGB 19, 19, 19
	RGB 21, 21, 05
; PP_MAX
	RGB 31, 28, 11
	RGB 11, 18, 07
; PEWTER_ARARE
	RGB 28, 21, 07
	RGB 17, 13, 03
; SEVENTH_HEAVEN
	RGB 28, 20, 03
	RGB 23, 11, 02
; LONELY_MINT
	RGB 31, 22, 21
	RGB 31, 09, 09
; ADAMANT_MINT
	RGB 31, 22, 21
	RGB 31, 09, 09
; NAUGHTY_MINT
	RGB 31, 22, 21
	RGB 31, 09, 09
; BRAVE_MINT
	RGB 31, 22, 21
	RGB 31, 09, 09
; BOLD_MINT
	RGB 21, 23, 31
	RGB 12, 14, 31
; IMPISH_MINT
	RGB 21, 23, 31
	RGB 12, 14, 31
; LAX_MINT
	RGB 21, 23, 31
	RGB 12, 14, 31
; RELAXED_MINT
	RGB 21, 23, 31
	RGB 12, 14, 31
; MODEST_MINT
	RGB 24, 28, 29
	RGB 05, 23, 28
; MILD_MINT
	RGB 24, 28, 29
	RGB 05, 23, 28
; RASH_MINT
	RGB 24, 28, 29
	RGB 05, 23, 28
; QUIET_MINT
	RGB 24, 28, 29
	RGB 05, 23, 28
; CALM_MINT
	RGB 30, 25, 28
	RGB 31, 15, 24
; GENTLE_MINT
	RGB 30, 25, 28
	RGB 31, 15, 24
; CAREFUL_MINT
	RGB 30, 25, 28
	RGB 31, 15, 24
; SASSY_MINT
	RGB 30, 25, 28
	RGB 31, 15, 24
; TIMID_MINT
	RGB 23, 31, 19
	RGB 12, 25, 12
; HASTY_MINT
	RGB 23, 31, 19
	RGB 12, 25, 12
; JOLLY_MINT
	RGB 23, 31, 19
	RGB 12, 25, 12
; NAIVE_MINT
	RGB 23, 31, 19
	RGB 12, 25, 12
; SERIOUS_MINT
	RGB 31, 31, 30
	RGB 31, 30, 22
; HARDY_MINT
	RGB 31, 31, 30
	RGB 31, 30, 22
; DOCILE_MINT
	RGB 31, 31, 30
	RGB 31, 30, 22
; BASHFUL_MINT
	RGB 31, 31, 30
	RGB 31, 30, 22
; QUIRKY_MINT
	RGB 31, 31, 30
	RGB 31, 30, 22
; ABILITY_UP
	RGB 13, 21, 29
	RGB 21, 13, 31
; PINK_CURE
	RGB 30, 25, 28
	RGB 31, 15, 24
.IndirectEnd:

ValuablesIconPalettes:
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; GS_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
.IndirectEnd:

SECTION "Item Icons 1", ROMX
NoItemIcon: INCBIN "gfx/items/no_item.2bpp.lz"
BrightpowderIcon: INCBIN "gfx/items/brightpowder.2bpp.lz"
MoonStoneIcon: INCBIN "gfx/items/moon_stone.2bpp.lz"
EscapeRopeIcon: INCBIN "gfx/items/escape_rope.2bpp.lz"
RepelIcon: INCBIN "gfx/items/repel.2bpp.lz"
FireStoneIcon: INCBIN "gfx/items/fire_stone.2bpp.lz"
ThunderStoneIcon: INCBIN "gfx/items/thunderstone.2bpp.lz"
WaterStoneIcon: INCBIN "gfx/items/water_stone.2bpp.lz"
LuckyPunchIcon: INCBIN "gfx/items/lucky_punch.2bpp.lz"
XAccuracyIcon: INCBIN "gfx/items/battle_item.2bpp.lz"
LeafStoneIcon: INCBIN "gfx/items/leaf_stone.2bpp.lz"
PokeDollIcon: INCBIN "gfx/items/poke_doll.2bpp.lz"
ExpShareIcon: INCBIN "gfx/items/exp_share.2bpp.lz"
QuickClawIcon: INCBIN "gfx/items/quick_claw.2bpp.lz"
SharpBeakIcon: INCBIN "gfx/items/sharp_beak.2bpp.lz"
PoisonBarbIcon: INCBIN "gfx/items/poison_barb.2bpp.lz"
KingsRockIcon: INCBIN "gfx/items/kings_rock.2bpp.lz"
SilverPowderIcon: INCBIN "gfx/items/silver_powder.2bpp.lz"
AmuletCoinIcon: INCBIN "gfx/items/amulet_coin.2bpp.lz"
CleanseTagIcon: INCBIN "gfx/items/cleanse_tag.2bpp.lz"
MysticWaterIcon: INCBIN "gfx/items/mystic_water.2bpp.lz"
TwistedSpoonIcon: INCBIN "gfx/items/twistedspoon.2bpp.lz"
BlackbeltIcon: INCBIN "gfx/items/black_belt.2bpp.lz"
BlackGlassesIcon: INCBIN "gfx/items/blackglasses.2bpp.lz"
PinkBowIcon: INCBIN "gfx/items/pink_bow.2bpp.lz"
StickIcon: INCBIN "gfx/items/leek.2bpp.lz"
SmokeBallIcon: INCBIN "gfx/items/smoke_ball.2bpp.lz"
NeverMeltIceIcon: INCBIN "gfx/items/nevermeltice.2bpp.lz"
MagnetIcon: INCBIN "gfx/items/magnet.2bpp.lz"
EverStoneIcon: INCBIN "gfx/items/everstone.2bpp.lz"
SpellTagIcon: INCBIN "gfx/items/spell_tag.2bpp.lz"
MiracleSeedIcon: INCBIN "gfx/items/miracle_seed.2bpp.lz"
ThickClubIcon: INCBIN "gfx/items/bone.2bpp.lz"
FocusBandIcon: INCBIN "gfx/items/muscle_band.2bpp.lz"
HardStoneIcon: INCBIN "gfx/items/hard_stone.2bpp.lz"
LuckyEggIcon: INCBIN "gfx/items/lucky_egg.2bpp.lz"
CharcoalIcon: INCBIN "gfx/items/charcoal.2bpp.lz"
ScopeLensIcon: INCBIN "gfx/items/scope_lens.2bpp.lz"
MetalCoatIcon: INCBIN "gfx/items/metal_coat.2bpp.lz"
DragonFangIcon: INCBIN "gfx/items/dragon_fang.2bpp.lz"
LeftoversIcon: INCBIN "gfx/items/leftovers.2bpp.lz"
DragonScaleIcon: INCBIN "gfx/items/dragon_scale.2bpp.lz"
BerserkGeneIcon: INCBIN "gfx/items/berserk_gene.2bpp.lz"
MailIcon: INCBIN "gfx/items/mail.2bpp.lz"
LightBallIcon: INCBIN "gfx/items/light_ball.2bpp.lz"
GorgeousBoxIcon: INCBIN "gfx/items/wood_box.2bpp.lz"
SunStoneIcon: INCBIN "gfx/items/sun_stone.2bpp.lz"
PolkadotBowIcon: INCBIN "gfx/items/polkadot_bow.2bpp.lz"
UpGradeIcon: INCBIN "gfx/items/upgrade.2bpp.lz"
ShinyStoneIcon: INCBIN "gfx/items/shiny_stone.2bpp.lz"
DuskStoneIcon: INCBIN "gfx/items/dusk_stone.2bpp.lz"
DawnStoneIcon: INCBIN "gfx/items/dawn_stone.2bpp.lz"
IceStoneIcon: INCBIN "gfx/items/ice_stone.2bpp.lz"
BlkAuguriteIcon: INCBIN "gfx/items/black_augurite.2bpp.lz"
PeatBlockIcon: INCBIN "gfx/items/peat_block.2bpp.lz"
SweetAppleIcon: INCBIN "gfx/items/sweet_apple.2bpp.lz"
GalarCuffIcon: INCBIN "gfx/items/galar_cuff.2bpp.lz"
GalarWreathIcon: INCBIN "gfx/items/galar_wreath.2bpp.lz"
HolyArmorIcon: INCBIN "gfx/items/holy_armor.2bpp.lz"
CursedArmorIcon: INCBIN "gfx/items/cursed_armor.2bpp.lz"
ElectirizerIcon: INCBIN "gfx/items/electirizer.2bpp.lz"
MagmarizerIcon: INCBIN "gfx/items/magmarizer.2bpp.lz"
ProtectorIcon: INCBIN "gfx/items/protector.2bpp.lz"
DubiousDiscIcon: INCBIN "gfx/items/dubious_disc.2bpp.lz"
OvalStoneIcon: INCBIN "gfx/items/oval_stone.2bpp.lz"
PrismScaleIcon: INCBIN "gfx/items/prism_scale.2bpp.lz"
RazorClawIcon: INCBIN "gfx/items/razor_claw.2bpp.lz"
RazorFangIcon: INCBIN "gfx/items/razor_fang.2bpp.lz"
ReaperClothIcon: INCBIN "gfx/items/reaper_cloth.2bpp.lz"
LinkingCordIcon: INCBIN "gfx/items/linking_cord.2bpp.lz"
FairyFeatherIcon: INCBIN "gfx/items/fairyfeather.2bpp.lz"
EvioliteIcon: INCBIN "gfx/items/eviolite.2bpp.lz"
SoulDewIcon: INCBIN "gfx/items/soul_dew.2bpp.lz"
SootheBellIcon: INCBIN "gfx/items/soothe_bell.2bpp.lz"
MirrorHerbIcon: INCBIN "gfx/items/mirror_herb.2bpp.lz"
HerbIcon: INCBIN "gfx/items/herb.2bpp.lz"
FullIncenseIcon: INCBIN "gfx/items/full_incense.2bpp.lz"
LaxIncenseIcon: INCBIN "gfx/items/lax_incense.2bpp.lz"
LuckIncenseIcon: INCBIN "gfx/items/luck_incense.2bpp.lz"
OddIncenseIcon: INCBIN "gfx/items/odd_incense.2bpp.lz"
PureIncenseIcon: INCBIN "gfx/items/pure_incense.2bpp.lz"
RockIncenseIcon: INCBIN "gfx/items/rock_incense.2bpp.lz"
RoseIncenseIcon: INCBIN "gfx/items/rose_incense.2bpp.lz"
SeaIncenseIcon: INCBIN "gfx/items/sea_incense.2bpp.lz"
WaveIncenseIcon: INCBIN "gfx/items/wave_incense.2bpp.lz"
MachoBraceIcon: INCBIN "gfx/items/macho_brace.2bpp.lz"
PowerAnkletIcon: INCBIN "gfx/items/power_anklet.2bpp.lz"
PowerBandIcon: INCBIN "gfx/items/power_band.2bpp.lz"
PowerBeltIcon: INCBIN "gfx/items/power_belt.2bpp.lz"
PowerBracerIcon: INCBIN "gfx/items/power_bracer.2bpp.lz"
PowerLensIcon: INCBIN "gfx/items/power_lens.2bpp.lz"
PowerWeightIcon: INCBIN "gfx/items/power_weight.2bpp.lz"
LeaderCrestIcon: INCBIN "gfx/items/leader_crest.2bpp.lz"
BlockIcon: INCBIN "gfx/items/pokeblock.2bpp.lz"
AntidoteIcon: INCBIN "gfx/items/antidote.2bpp.lz"
SeventhHeavenIcon: INCBIN "gfx/items/seventh_heaven.2bpp.lz"
FullHealIcon: INCBIN "gfx/items/full_heal.2bpp.lz"
PotionIcon: INCBIN "gfx/items/potion.2bpp.lz"
MaxPotionIcon: INCBIN "gfx/items/max_potion.2bpp.lz"
ReviveIcon: INCBIN "gfx/items/revive.2bpp.lz"
MaxReviveIcon: INCBIN "gfx/items/max_revive.2bpp.lz"
EtherIcon: INCBIN "gfx/items/ether.2bpp.lz"
VitaminIcon: INCBIN "gfx/items/vitamin.2bpp.lz"
HPUpIcon: INCBIN "gfx/items/hp_up.2bpp.lz"
RagecandybarIcon: INCBIN "gfx/items/ragecandybar.2bpp.lz"
RareCandyIcon: INCBIN "gfx/items/rare_candy.2bpp.lz"
PPUpIcon: INCBIN "gfx/items/pp_up.2bpp.lz"
PPMaxIcon: INCBIN "gfx/items/pp_max.2bpp.lz"
PewterArareIcon: INCBIN "gfx/items/pewtercrunch.2bpp.lz"
MintIcon: INCBIN "gfx/items/mint_leaf.2bpp.lz"
AbilityUpIcon: INCBIN "gfx/items/ability_cap.2bpp.lz"
MoomooMilkIcon: INCBIN "gfx/items/moomoo_milk.2bpp.lz"
SodaPopIcon: INCBIN "gfx/items/soda_pop.2bpp.lz"
EnergyRootIcon: INCBIN "gfx/items/energy_root.2bpp.lz"
LemonadeIcon: INCBIN "gfx/items/lemonade.2bpp.lz"
FreshWaterIcon: INCBIN "gfx/items/fresh_water.2bpp.lz"
RevivalHerbIcon: INCBIN "gfx/items/revival_herb.2bpp.lz"
BerryJuiceIcon: INCBIN "gfx/items/berry_juice.2bpp.lz"
