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
	ld a, [wCurSpecies]
	call GetItemIndexFromID
	ld b, h
	ld c, l
	ld a, BANK(ItemIconPointers)
	ld hl, ItemIconPointers
	call LoadDoubleIndirectPointer
	jr nz, .ok
	ld a, BANK(NoBerryIcon)
	ld hl, NoBerryIcon
.ok
	ld de, vTiles2 tile $1f
	lb bc, BANK(NoBerryIcon), $9
	call DecompressRequest2bpp
	call LoadItemIconPalette
	call SetDefaultBGPAndOBP
	call WaitBGMap
	ret

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
    dw MailIcon ; GLITTER_MAIL
    dw MailIcon ; TROPIC_MAIL
    dw MailIcon ; BREEZE_MAIL
    dw MailIcon ; POSTCARD
    dw MailIcon ; ROCKET_MAIL
    dw MailIcon ; GOLD_MAIL
.IndirectEnd:
	
KeyItemIconPointers:
	dw SkateboardIcon ; BICYCLE
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
	dw GSBallIcon ; GS_BALL_KEY
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
	dw MasterBallIcon ; MASTER_BALL
	dw UltraBallIcon ; ULTRA_BALL
	dw GreatBallIcon ; GREAT_BALL
	dw PokeBallIcon ; POKE_BALL
	dw SafariBallIcon ; SAFARI_BALL
	dw NetBallIcon ; NET_BALL
	dw DiveBallIcon ; DIVE_BALL
	dw NestBallIcon ; NEST_BALL
	dw RepeatBallIcon ; REPEAT_BALL
	dw TimerBallIcon ; TIMER_BALL
	dw LuxuryBallIcon ; LUXURY_BALL
	dw PremierBallIcon ; PREMIER_BALL
	dw FastBallIcon ; FAST_BALL
	dw LevelBallIcon ; LEVEL_BALL
	dw LureBallIcon ; LURE_BALL
	dw HeavyBallIcon ; HEAVY_BALL
	dw LoveBallIcon ; LOVE_BALL
	dw FriendBallIcon ; FRIEND_BALL
	dw MoonBallIcon ; MOON_BALL
	dw ParkBallIcon ; PARK_BALL
	dw SportBallIcon ; SPORT_BALL
	dw DuskBallIcon ; DUSK_BALL
	dw HealBallIcon ; HEAL_BALL
	dw QuickBallIcon ; QUICK_BALL
	dw CherishBallIcon ; CHERISH_BALL
	dw DreamBallIcon ; DREAM_BALL
	dw BeastBallIcon ; BEAST_BALL
	dw StrangeBallIcon ; STRANGE_BALL
	dw PokeBallHIcon ; POKE_BALL_H
	dw GreatBallHIcon ; GREAT_BALL_H
	dw UltraBallHIcon ; ULTRA_BALL_H
	dw HeavyBallHIcon ; HEAVY_BALL_H
	dw LeadenBallIcon ; LEADEN_BALL
	dw GigatonBallIcon ; GIGATON_BALL
	dw FeatherBallIcon ; FEATHER_BALL
	dw WingBallIcon ; WING_BALL
	dw JetBallIcon ; JET_BALL
	dw OriginBallIcon ; ORIGIN_BALL
	dw RocketBallIcon ; ROCKET_BALL
	dw GSBallIcon ; GS_BALL
.IndirectEnd:
	
BerriesIconPointers:
	dw ApricornIcon  ; 0300
	dw ApricornIcon  ; 0301
	dw ApricornIcon  ; 0302
	dw ApricornIcon  ; 0303
	dw ApricornIcon  ; 0304
	dw ApricornIcon  ; 0305
	dw ApricornIcon  ; 0306
	dw ApricornIcon  ; 0307
	dw PechaBerryIcon   ; 0308
	dw CheriBerryIcon   ; 0309
	dw AspearBerryIcon  ; 030A
	dw RawstBerryIcon   ; 030B
	dw PersimBerryIcon  ; 030C
	dw ChestoBerryIcon  ; 030D
	dw LumBerryIcon     ; 030E
	dw LeppaBerryIcon   ; 030F
	dw OranBerryIcon    ; 0310
	dw SitrusBerryIcon  ; 0311
	dw FigyBerryIcon    ; 0312
	dw WikiBerryIcon    ; 0313
	dw MagoBerryIcon    ; 0314
	dw AguavBerryIcon   ; 0315
	dw IapapaBerryIcon  ; 0316
	dw PomegBerryIcon   ; 0317
	dw KelpsyBerryIcon  ; 0318
	dw QualotBerryIcon  ; 0319
	dw HondewBerryIcon  ; 031A
	dw GrepaBerryIcon   ; 031B
	dw TamatoBerryIcon  ; 031C
	dw OccaBerryIcon    ; 031D
	dw PasshoBerryIcon  ; 031E
	dw WacanBerryIcon   ; 031F
	dw RindoBerryIcon   ; 0320
	dw YacheBerryIcon   ; 0321
	dw ChopleBerryIcon  ; 0322
	dw KebiaBerryIcon   ; 0323
	dw ShucaBerryIcon   ; 0324
	dw CobaBerryIcon    ; 0325
	dw PayapaBerryIcon  ; 0326
	dw TangaBerryIcon   ; 0327
	dw ChartiBerryIcon  ; 0328
	dw KasibBerryIcon   ; 0329
	dw HabanBerryIcon   ; 032A
	dw ColburBerryIcon  ; 032B
	dw BabiriBerryIcon  ; 032C
	dw ChilanBerryIcon  ; 032D
	dw RoseliBerryIcon  ; 032E
	dw LiechiBerryIcon  ; 032F
	dw GanlonBerryIcon  ; 0330
	dw SalacBerryIcon   ; 0331
	dw PetayaBerryIcon  ; 0332
	dw ApicotBerryIcon  ; 0333
	dw LansatBerryIcon  ; 0334
	dw StarfBerryIcon   ; 0335
	dw KeeBerryIcon     ; 0336
	dw MarangaBerryIcon ; 0337
	dw EnigmaBerryIcon  ; 0338
	dw MicleBerryIcon   ; 0339
	dw CustapBerryIcon  ; 033A
	dw JabocaBerryIcon  ; 033B
	dw RowapBerryIcon   ; 033C
	dw EggantBerryIcon  ; 033D
	dw UnyinnBerryIcon  ; 033E
	dw HopoBerryIcon    ; 033F Same as LeppaBerryIcon
	dw PumkinBerryIcon  ; 0340 Same as AspearBerryIcon
	dw CareepBerryIcon  ; 0341 Same as PersimBerryIcon
	dw BitmelBerryIcon  ; 0342 Same as RawstBerryIcon
	dw DrashBerryIcon   ; 0343 Same as PechaBerryIcon
	dw RazzBerryIcon    ; 0344
	dw BlukBerryIcon    ; 0345
	dw NanabBerryIcon   ; 0346
	dw WepearBerryIcon  ; 0347
	dw PinapBerryIcon   ; 0348
	dw CornnBerryIcon   ; 0349
	dw MagostBerryIcon  ; 034A
	dw RabutaBerryIcon  ; 034B
	dw NomelBerryIcon   ; 034C
	dw SpelonBerryIcon  ; 034D
	dw PamtreBerryIcon  ; 034E
	dw WatmelBerryIcon  ; 034F
	dw DurinBerryIcon   ; 0350
	dw BelueBerryIcon   ; 0351
	dw StribBerryIcon   ; 0352
	dw TilotaBerryIcon  ; 0353
	dw NutpeaBerryIcon  ; 0354
	dw KrauBerryIcon    ; 0355
	dw LigarcBerryIcon  ; 0356
	dw TotapoBerryIcon  ; 0357
	dw PinkanBerryIcon  ; 0358
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
	dw NuggetIcon ; NUGGET       ; 001F
	dw LeafIcon ; SILVER_LEAF  ; 0033
	dw LeafIcon ; GOLD_LEAF    ; 003A
	dw TinyMushroomIcon ; TINYMUSHROOM ; 003F
	dw BigMushroomIcon ; BIG_MUSHROOM ; 0040
	dw SlowpokeTailIcon ; SLOWPOKETAIL ; 004A
	dw PearlIcon ; PEARL        ; 0050
	dw BigPearlIcon ; BIG_PEARL    ; 0051
	dw BrightpowderIcon ; STARDUST     ; 005F
	dw StarPieceIcon ; STAR_PIECE   ; 0060
	dw ShardIcon ; BRICK_PIECE  ; 0081
	dw HeartScaleIcon ; HEART_SCALE  ; 00C9
	dw ShardIcon ; BLUE_SHARD   ; 00CA
	dw ShardIcon ; GREEN_SHARD  ; 00CB
	dw ShardIcon ; RED_SHARD    ; 00CC
	dw ShardIcon ; YELLOW_SHARD ; 00CD
	dw ThickClubIcon ; RARE_BONE    ; 00CE
	dw BalmmushroomIcon ; BALMMUSHROOM ; 00CF
	dw BigNuggetIcon ; BIG_NUGGET   ; 00D0
	dw StarPieceIcon ; COMET_SHARD  ; 00D1
	dw PearlStringIcon ; PEARL_STRING ; 00D2
	dw BeachGlassIcon ; BEACH_GLASS  ; 00D3
	dw PrettyShellIcon ; PRETTY_SHELL ; 00D4
	dw TinyBambooIcon ; TINY_BAMBOO  ; 00D5
	dw BigBambooIcon ; BIG_BAMBOO   ; 00D6
	dw SpiderSilkIcon ; SPIDER_SILK  ; 00DC
	dw AncientVaseIcon ; ANCIENT_VASE ; 00E3
	dw AncientCupIcon ; ANCIENT_CUP  ; 00E4
	dw AncientJarIcon ; ANCIENT_JAR  ; 00E5
	dw ShardIcon ; CLAY_SHARD   ; 00E6
	dw GemstoneIcon ; HUGE_CRYSTAL ; 00E7
	dw GemstoneIcon ; LARGE_JADE   ; 00E8
	dw GemstoneIcon ; BIG_EMERALD  ; 00E9
	dw GemstoneIcon ; GIANT_RUBY   ; 00EA
	dw GemstoneIcon ; BIG_SAPPHIRE ; 00EB
	dw GemstoneIcon ; BIG_AMETHYST ; 00EC
	dw GemstoneIcon ; HUGE_TOPAZ   ; 00ED
	dw GemstoneIcon ; LARGE_GARNET ; 00EE
	dw GemstoneIcon ; GIANT_ONYX   ; 00EF
	dw GemstoneIcon ; HUGE_DIAMOND ; 00F0
	dw BottleCapIcon ; SILVER_CAP
	dw BottleCapIcon ; GOLD_CAP
	dw SilverPowderIcon ; GOLD_DUST
	dw GoldStatueIcon ; GOLD_STATUE
	dw HoneyIcon ; HONEY
	dw HoneyIcon ; SWEET_HONEY
	dw CandyTruffleIcon ; CANDYTRUFFLE
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
	RGB 03, 31, 28
	RGB 03, 23, 20
; ICE_STONE
	RGB 18, 27, 28
	RGB 07, 19, 22
; BLK_AUGURITE
	RGB 17, 17, 17
	RGB 08, 08, 08
; PEAT_BLOCK
	RGB 20, 19, 19
	RGB 14, 13, 13
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
	RGB 30, 13, 24
	RGB 16, 25, 30
; RAZOR_CLAW
	RGB 19, 20, 21
	RGB 16, 17, 18
; RAZOR_FANG
	RGB 19, 20, 21
	RGB 13, 14, 15
; REAPER_CLOTH
	RGB 21, 20, 24
	RGB 19, 16, 21
; LINKING_CORD
	RGB 21, 21, 21
	RGB 09, 09, 09
; FAIRYFEATHER
	RGB 31, 19, 19
	RGB 31, 15, 21
; QUICK_POWDER
	RGB 15, 23, 29
	RGB 19, 19, 19
; EVIOLITE
	RGB 26, 18, 29
	RGB 22, 15, 28
; SOUL_DEW
	RGB 28, 25, 31
	RGB 08, 11, 23
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
	RGB 28, 27, 00
	RGB 28, 09, 09
; LAX_INCENSE
	RGB 31, 28, 20
	RGB 29, 22, 02
; LUCK_INCENSE
	RGB 31, 26, 08
	RGB 11, 23, 29
; ODD_INCENSE
	RGB 28, 21, 28
	RGB 29, 07, 31
; PURE_INCENSE
	RGB 24, 24, 24
	RGB 27, 14, 14
; ROCK_INCENSE
	RGB 21, 17, 08
	RGB 18, 14, 06
; ROSE_INCENSE
	RGB 31, 31, 20
	RGB 29, 07, 25
; SEA_INCENSE
	RGB 21, 25, 28
	RGB 12, 20, 31
; WAVE_INCENSE
	RGB 09, 31, 31
	RGB 08, 18, 25
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
; GLITTER_MAIL
	RGB 25, 25, 13
	RGB 19, 19, 09
; TROPIC_MAIL
	RGB 23, 30, 05
	RGB 31, 31, 18
; BREEZE_MAIL
	RGB 07, 26, 31
	RGB 00, 21, 00
; POSTCARD
	RGB 12, 17, 25
	RGB 30, 26, 19
; ROCKET_MAIL
	RGB 12, 17, 25
	RGB 30, 26, 19
; GOLD_MAIL
	RGB 12, 17, 25
	RGB 30, 26, 19

.IndirectEnd:
	
KeyItemIconPalettes:
; BICYCLE
	RGB 22, 12, 12
	RGB 12, 12, 12
; COIN_CASE
	RGB 24, 21, 07
	RGB 21, 07, 07
; ITEMFINDER
	RGB 08, 17, 25
	RGB 26, 12, 12
; OLD_ROD
	RGB 24, 19, 08
	RGB 19, 13, 01
; GOOD_ROD
	RGB 22, 25, 08
	RGB 25, 11, 07
; SUPER_ROD
	RGB 18, 16, 16
	RGB 10, 10, 17
; RED_SCALE
	RGB 31, 18, 18
	RGB 29, 07, 07
; SECRETPOTION
	RGB 23, 13, 04
	RGB 28, 27, 02
; S_S_TICKET
	RGB 12, 22, 29
	RGB 06, 13, 17
; MYSTERY_EGG
	RGB 29, 26, 18
	RGB 08, 19, 11
; CLEAR_BELL
	RGB 29, 21, 13
	RGB 23, 17, 08
; SILVER_WING
	RGB 21, 24, 30
	RGB 16, 19, 24
; GS_BALL_KEY
	RGB 28, 19, 05
	RGB 15, 14, 16
; BLUE_CARD
	RGB 15, 22, 31
	RGB 07, 13, 31
; CARD_KEY
	RGB 31, 14, 00
	RGB 04, 15, 29
; MACHINE_PART
	RGB 19, 19, 21
	RGB 13, 13, 16
; EGG_TICKET
	RGB 20, 20, 20
	RGB 10, 10, 10
; LOST_ITEM
	RGB 31, 20, 25
	RGB 28, 15, 23
; BASEMENT_KEY
	RGB 20, 21, 23
	RGB 11, 12, 16
; PASS
	RGB 13, 23, 00
	RGB 26, 13, 12
; SQUIRTBOTTLE
	RGB 10, 15, 31
	RGB 22, 18, 08
; RAINBOW_WING
	RGB 29, 09, 08
	RGB 17, 24, 13
; SECRET_STASH
	RGB 20, 20, 20
	RGB 10, 10, 10
; SEA_MAP
	RGB 27, 23, 17
	RGB 22, 18, 13
; BERRY_LOG
	RGB 20, 20, 20
	RGB 10, 10, 10
; EXCEL_SCOPE
	RGB 17, 20, 17
	RGB 13, 20, 27
.IndirectEnd:
	
BallsIconPalettes:
; MASTER_BALL
	RGB 12, 08, 18
	RGB 28, 02, 16
; ULTRA_BALL
	RGB 31, 26, 07
	RGB 07, 07, 08
; GREAT_BALL
	RGB 00, 17, 25
	RGB 30, 10, 06
; POKE_BALL
	RGB 31, 31, 31
	RGB 30, 10, 06
; SAFARI_BALL
	RGB 06, 15, 10
	RGB 21, 21, 09
; NET_BALL
	RGB 00, 22, 25
	RGB 07, 07, 08
; DIVE_BALL
	RGB 16, 25, 30
	RGB 06, 13, 22
; NEST_BALL
	RGB 30, 26, 12
	RGB 00, 19, 07
; REPEAT_BALL
	RGB 31, 30, 08
	RGB 30, 10, 06
; TIMER_BALL
	RGB 07, 07, 08
	RGB 30, 10, 06
; LUXURY_BALL
	RGB 31, 28, 03
	RGB 31, 08, 00
; PREMIER_BALL
	RGB 31, 31, 31
	RGB 30, 10, 06
; FAST_BALL
	RGB 31, 25, 08
	RGB 31, 15, 00
; LEVEL_BALL
	RGB 31, 27, 04
	RGB 30, 10, 06
; LURE_BALL
	RGB 00, 19, 21
	RGB 30, 10, 06
; HEAVY_BALL
	RGB 07, 07, 08
	RGB 00, 15, 21
; LOVE_BALL
	RGB 31, 25, 26
	RGB 31, 16, 19
; FRIEND_BALL
	RGB 07, 20, 00
	RGB 30, 10, 06
; MOON_BALL
	RGB 30, 24, 08
	RGB 00, 21, 23
; PARK_BALL
	RGB 00, 10, 10
	RGB 14, 20, 05
; SPORT_BALL
	RGB 20, 20, 20
	RGB 10, 10, 10
; DUSK_BALL
	RGB 00, 20, 09
	RGB 25, 00, 01
; HEAL_BALL
	RGB 29, 10, 19
	RGB 10, 17, 24
; QUICK_BALL
	RGB 00, 16, 24
	RGB 30, 29, 07
; CHERISH_BALL
	RGB 31, 06, 04
	RGB 20, 07, 05
; DREAM_BALL
	RGB 31, 16, 23
	RGB 16, 12, 24
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
	RGB 28, 19, 05
	RGB 15, 14, 16
.IndirectEnd:
	
BerryIconPalettes:
; RED_APRICORN
	RGB 31, 08, 06
	RGB 21, 12, 05
; BLU_APRICORN
	RGB 06, 15, 30
	RGB 21, 12, 05
; YLW_APRICORN
	RGB 30, 26, 06
	RGB 21, 12, 05
; GRN_APRICORN
	RGB 07, 24, 12
	RGB 21, 12, 05
; WHT_APRICORN
	RGB 23, 25, 27
	RGB 21, 12, 05
; BLK_APRICORN
	RGB 09, 09, 09
	RGB 21, 12, 05
; PNK_APRICORN
	RGB 31, 18, 23
	RGB 21, 12, 05
; BRN_APRICORN
	RGB 18, 10, 04
	RGB 21, 12, 05
; PECHA_BERRY
	RGB 31, 24, 19
	RGB 29, 18, 14
; CHERI_BERRY
	RGB 29, 12, 10
	RGB 15, 23, 09
; ASPEAR_BERRY
	RGB 30, 28, 10
	RGB 25, 22, 09
; RAWST_BERRY
	RGB 18, 26, 26
	RGB 16, 18, 21
; PERSIM_BERRY
	RGB 31, 25, 19
	RGB 28, 19, 14
; CHESTO_BERRY
	RGB 18, 14, 28
	RGB 21, 21, 13
; LUM_BERRY
	RGB 18, 27, 09
	RGB 10, 20, 09
; LEPPA_BERRY
	RGB 31, 18, 06
	RGB 25, 09, 06
; ORAN_BERRY
	RGB 10, 20, 30
	RGB 13, 13, 23
; SITRUS_BERRY
	RGB 31, 29, 13
	RGB 28, 22, 08
; FIGY_BERRY
	RGB 29, 18, 06
	RGB 23, 13, 08
; WIKI_BERRY
	RGB 19, 14, 29
	RGB 12, 11, 21
; MAGO_BERRY
	RGB 31, 23, 19
	RGB 27, 26, 14
; AGUAV_BERRY
	RGB 23, 26, 10
	RGB 10, 18, 08
; IAPAPA_BERRY
	RGB 29, 25, 18
	RGB 25, 14, 08
; POMEG_BERRY
	RGB 31, 18, 06
	RGB 25, 09, 06
; KELPSY_BERRY
	RGB 14, 21, 31
	RGB 14, 12, 28
; QUALOT_BERRY
	RGB 31, 26, 16
	RGB 29, 19, 14
; HONDEW_BERRY
	RGB 18, 27, 09
	RGB 10, 19, 09
; GREPA_BERRY
	RGB 31, 28, 07
	RGB 27, 23, 09
; TAMATO_BERRY
	RGB 31, 18, 06
	RGB 25, 09, 06
; OCCA_BERRY
	RGB 29, 14, 06
	RGB 23, 12, 04
; PASSHO_BERRY
	RGB 29, 28, 13
	RGB 08, 16, 29
; WACAN_BERRY
	RGB 31, 30, 06
	RGB 08, 21, 12
; RINDO_BERRY
	RGB 10, 27, 12
	RGB 04, 21, 06
; YACHE_BERRY
	RGB 08, 24, 27
	RGB 04, 20, 24
; CHOPLE_BERRY
	RGB 30, 27, 10
	RGB 27, 08, 08
; KEBIA_BERRY
	RGB 10, 29, 12
	RGB 06, 24, 07
; SHUCA_BERRY
	RGB 31, 29, 12
	RGB 12, 23, 04
; COBA_BERRY
	RGB 05, 25, 27
	RGB 06, 14, 21
; PAYAPA_BERRY
	RGB 30, 08, 27
	RGB 24, 05, 19
; TANGA_BERRY
	RGB 07, 21, 07
	RGB 06, 17, 06
; CHARTI_BERRY
	RGB 31, 29, 05
	RGB 21, 19, 06
; KASIB_BERRY
	RGB 31, 13, 25
	RGB 22, 06, 18
; HABAN_BERRY
	RGB 31, 15, 15
	RGB 26, 04, 04
; COLBUR_BERRY
	RGB 30, 13, 28
	RGB 24, 05, 22
; BABIRI_BERRY
	RGB 13, 21, 06
	RGB 11, 15, 07
; CHILAN_BERRY
	RGB 29, 26, 15
	RGB 26, 21, 08
; ROSELI_BERRY
	RGB 25, 07, 08
	RGB 07, 11, 18
; LIECHI_BERRY
	RGB 31, 21, 09
	RGB 26, 14, 06
; GANLON_BERRY
	RGB 19, 18, 25
	RGB 14, 13, 20
; SALAC_BERRY
	RGB 15, 23, 14
	RGB 09, 17, 09
; PETAYA_BERRY
	RGB 30, 20, 15
	RGB 20, 17, 12
; APICOT_BERRY
	RGB 13, 16, 23
	RGB 10, 13, 20
; LANSAT_BERRY
	RGB 29, 22, 18
	RGB 25, 15, 11
; STARF_BERRY
	RGB 17, 25, 10
	RGB 10, 18, 07
; KEE_BERRY
	RGB 31, 22, 15
	RGB 26, 12, 08
; MARANGABERRY
	RGB 23, 22, 06
	RGB 16, 15, 06
; ENIGMA_BERRY
	RGB 25, 23, 20
	RGB 16, 16, 16
; MICLE_BERRY
	RGB 08, 25, 08
	RGB 07, 21, 07
; CUSTAP_BERRY
	RGB 30, 19, 12
	RGB 29, 08, 06
; JABOCA_BERRY
	RGB 25, 23, 05
	RGB 15, 12, 06
; ROWAP_BERRY
	RGB 05, 21, 22
	RGB 02, 15, 16
; EGGANT_BERRY
	RGB 15, 19, 27
	RGB 21, 29, 11
; UNYINN_BERRY
	RGB 31, 30, 15
	RGB 22, 20, 11
; HOPO_BERRY
	RGB 29, 28, 12
	RGB 06, 17, 13
; PUMKIN_BERRY
	RGB 31, 30, 15
	RGB 31, 15, 05
; CAREEP_BERRY
	RGB 31, 05, 06
	RGB 20, 26, 14
; BITMEL_BERRY
	RGB 25, 30, 16
	RGB 16, 25, 10
; DRASH_BERRY
	RGB 31, 21, 23
	RGB 14, 23, 09
; RAZZ_BERRY
	RGB 27, 11, 06
	RGB 08, 21, 08
; BLUK_BERRY
	RGB 14, 10, 23
	RGB 08, 19, 08
; NANAB_BERRY
	RGB 31, 27, 16
	RGB 31, 22, 21
; WEPEAR_BERRY
	RGB 18, 27, 09
	RGB 11, 20, 09
; PINAP_BERRY
	RGB 31, 29, 07
	RGB 15, 28, 11
; CORNN_BERRY
	RGB 23, 17, 26
	RGB 15, 26, 10
; MAGOST_BERRY
	RGB 31, 23, 19
	RGB 12, 25, 10
; RABUTA_BERRY
	RGB 14, 23, 11
	RGB 08, 17, 05
; NOMEL_BERRY
	RGB 30, 30, 12
	RGB 24, 24, 05
; SPELON_BERRY
	RGB 28, 13, 12
	RGB 25, 11, 10
; PAMTRE_BERRY
	RGB 17, 15, 23
	RGB 20, 18, 13
; WATMEL_BERRY
	RGB 30, 21, 18
	RGB 17, 24, 09
; DURIN_BERRY
	RGB 14, 22, 08
	RGB 09, 19, 06
; BELUE_BERRY
	RGB 19, 15, 28
	RGB 10, 19, 06
; STRIB_BERRY
	RGB 16, 26, 10
	RGB 11, 20, 05
; TILOTA_BERRY
	RGB 19, 23, 11
	RGB 31, 05, 06
; NUTPEA_BERRY
	RGB 31, 30, 15
	RGB 23, 21, 11
; KRAU_BERRY
	RGB 29, 28, 19
	RGB 21, 28, 13
; LIGARC_BERRY
	RGB 17, 21, 28
	RGB 08, 11, 19
; TOTAPO_BERRY
	RGB 30, 21, 20
	RGB 10, 20, 08
; PINKAN_BERRY
	RGB 29, 11, 14
	RGB 05, 16, 04
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
; NUGGET
	RGB 31, 25, 09
	RGB 19, 14, 02
; SILVER_LEAF
	RGB 19, 24, 22
	RGB 12, 16, 15
; GOLD_LEAF
	RGB 31, 25, 08
	RGB 27, 18, 01
; TINYMUSHROOM
	RGB 31, 14, 11
	RGB 26, 07, 04
; BIG_MUSHROOM
	RGB 31, 14, 11
	RGB 26, 07, 04
; SLOWPOKETAIL
	RGB 31, 23, 24
	RGB 28, 14, 16
; PEARL
	RGB 19, 25, 24
	RGB 15, 17, 17
; BIG_PEARL
	RGB 19, 25, 24
	RGB 15, 17, 17
; STARDUST
	RGB 27, 14, 14
	RGB 12, 19, 26
; STAR_PIECE
	RGB 30, 20, 20
	RGB 27, 14, 14
; BRICK_PIECE
	RGB 31, 22, 10
	RGB 25, 12, 02
; HEART_SCALE
	RGB 26, 26, 30
	RGB 30, 26, 26
; BLUE_SHARD
	RGB 21, 22, 31
	RGB 14, 11, 25
; GREEN_SHARD
	RGB 19, 31, 17
	RGB 11, 25, 14
; RED_SHARD
	RGB 31, 19, 18
	RGB 25, 11, 14
; YELLOW_SHARD
	RGB 31, 29, 11
	RGB 25, 21, 08
; RARE_BONE
	RGB 26, 26, 21
	RGB 19, 19, 16
; BALMMUSHROOM
	RGB 31, 31, 10
	RGB 29, 19, 05
; BIG_NUGGET
	RGB 31, 25, 09
	RGB 19, 14, 02
; COMET_SHARD
	RGB 16, 21, 29
	RGB 09, 10, 22
; PEARL_STRING
	RGB 19, 25, 24
	RGB 15, 17, 17
; BEACH_GLASS
	RGB 14, 28, 28
	RGB 10, 20, 26
; PRETTY_SHELL
	RGB 31, 28, 26
	RGB 17, 16, 14
; TINY_BAMBOO
	RGB 16, 20, 09
	RGB 21, 11, 10
; BIG_BAMBOO
	RGB 16, 20, 09
	RGB 21, 11, 10
; SPIDER_SILK
	RGB 23, 23, 23
	RGB 14, 14, 14
; ANCIENT_VASE
	RGB 31, 22, 10
	RGB 25, 12, 02
; ANCIENT_CUP
	RGB 31, 22, 10
	RGB 25, 12, 02
; ANCIENT_JAR
	RGB 31, 22, 10
	RGB 25, 12, 02
; CLAY_SHARD
	RGB 31, 22, 10
	RGB 25, 12, 02
; HUGE_CRYSTAL
	RGB 16, 21, 22
	RGB 05, 15, 20
; LARGE_JADE
	RGB 26, 28, 20
	RGB 14, 21, 14
; BIG_EMERALD
	RGB 01, 21, 16
	RGB 00, 14, 09
; GIANT_RUBY
	RGB 31, 20, 20
	RGB 20, 09, 10
; BIG_SAPPHIRE
	RGB 20, 20, 31
	RGB 09, 10, 20
; BIG_AMETHYST
	RGB 21, 17, 24
	RGB 10, 04, 15
; HUGE_TOPAZ
	RGB 28, 21, 03
	RGB 21, 14, 05
; LARGE_GARNET
	RGB 31, 02, 01
	RGB 11, 01, 00
; GIANT_ONYX
	RGB 08, 09, 09
	RGB 04, 05, 05
; HUGE_DIAMOND
	RGB 27, 30, 31
	RGB 19, 25, 27
; SILVER_CAP
	RGB 19, 24, 22
	RGB 12, 16, 15
; GOLD_CAP
	RGB 31, 25, 08
	RGB 27, 18, 01
; GOLD_DUST
	RGB 31, 25, 09
	RGB 19, 14, 02
; GOLD_STATUE
	RGB 31, 25, 09
	RGB 19, 14, 02
; HONEY
	RGB 31, 23, 09
	RGB 29, 18, 00
; SWEET_HONEY
	RGB 31, 16, 09
	RGB 29, 18, 00
; CANDYTRUFFLE
	RGB 31, 28, 25
	RGB 27, 21, 14
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
SkateboardIcon: INCBIN "gfx/items/skateboard.2bpp.lz"
MasterBallIcon: INCBIN "gfx/items/master_ball.2bpp.lz"
UltraBallIcon: INCBIN "gfx/items/ultra_ball.2bpp.lz"
GreatBallIcon: INCBIN "gfx/items/great_ball.2bpp.lz"
PokeBallIcon: INCBIN "gfx/items/poke_ball.2bpp.lz"
SafariBallIcon: INCBIN "gfx/items/safari_ball.2bpp.lz"
NetBallIcon: INCBIN "gfx/items/net_ball.2bpp.lz"
DiveBallIcon: INCBIN "gfx/items/dive_ball.2bpp.lz"
NestBallIcon: INCBIN "gfx/items/nest_ball.2bpp.lz"
RepeatBallIcon: INCBIN "gfx/items/repeat_ball.2bpp.lz"
TimerBallIcon: INCBIN "gfx/items/timer_ball.2bpp.lz"
LuxuryBallIcon: INCBIN "gfx/items/luxury_ball.2bpp.lz"
PremierBallIcon: INCBIN "gfx/items/premier_ball.2bpp.lz"
FastBallIcon: INCBIN "gfx/items/fast_ball.2bpp.lz"
LevelBallIcon: INCBIN "gfx/items/level_ball.2bpp.lz"
LureBallIcon: INCBIN "gfx/items/lure_ball.2bpp.lz"
HeavyBallIcon: INCBIN "gfx/items/heavy_ball.2bpp.lz"
LoveBallIcon: INCBIN "gfx/items/love_ball.2bpp.lz"
FriendBallIcon: INCBIN "gfx/items/friend_ball.2bpp.lz"
MoonBallIcon: INCBIN "gfx/items/moon_ball.2bpp.lz"
ParkBallIcon: INCBIN "gfx/items/park_ball.2bpp.lz"
SportBallIcon: INCBIN "gfx/items/sport_ball.2bpp.lz"
DuskBallIcon: INCBIN "gfx/items/dusk_ball.2bpp.lz"
HealBallIcon: INCBIN "gfx/items/heal_ball.2bpp.lz"
QuickBallIcon: INCBIN "gfx/items/quick_ball.2bpp.lz"
CherishBallIcon: INCBIN "gfx/items/cherish_ball.2bpp.lz"
DreamBallIcon: INCBIN "gfx/items/dream_ball.2bpp.lz"
BeastBallIcon: INCBIN "gfx/items/beast_ball.2bpp.lz"
StrangeBallIcon:
PokeBallHIcon:
GreatBallHIcon:
UltraBallHIcon:
HeavyBallHIcon:
LeadenBallIcon:
GigatonBallIcon:
FeatherBallIcon:
WingBallIcon:
JetBallIcon:
OriginBallIcon:
RocketBallIcon: INCBIN "gfx/items/rocket_ball.2bpp.lz"
GSBallIcon: INCBIN "gfx/items/gs_ball.2bpp.lz"
NuggetIcon: INCBIN "gfx/items/nugget.2bpp.lz"
LeafIcon: INCBIN "gfx/items/leaf.2bpp.lz"
TinyMushroomIcon: INCBIN "gfx/items/tinymushroom.2bpp.lz"
BigMushroomIcon: INCBIN "gfx/items/big_mushroom.2bpp.lz"
SlowpokeTailIcon: INCBIN "gfx/items/slowpoketail.2bpp.lz"
PearlIcon: INCBIN "gfx/items/pearl.2bpp.lz"
BigPearlIcon: INCBIN "gfx/items/big_pearl.2bpp.lz"
StarPieceIcon: INCBIN "gfx/items/star_piece.2bpp.lz"
ShardIcon: INCBIN "gfx/items/brick_piece.2bpp.lz"
HeartScaleIcon: INCBIN "gfx/items/heart_scale.2bpp.lz"
BalmmushroomIcon: INCBIN "gfx/items/balmmushroom.2bpp.lz"
BigNuggetIcon: INCBIN "gfx/items/big_nugget.2bpp.lz"
PearlStringIcon: INCBIN "gfx/items/pearl_string.2bpp.lz"
BeachGlassIcon: INCBIN "gfx/items/beach_glass.2bpp.lz"
PrettyShellIcon: INCBIN "gfx/items/pretty_shell.2bpp.lz"
TinyBambooIcon: INCBIN "gfx/items/tiny_bamboo.2bpp.lz"
BigBambooIcon: INCBIN "gfx/items/big_bamboo.2bpp.lz"
GemstoneIcon: INCBIN "gfx/items/gemstone.2bpp.lz"
BottleCapIcon: INCBIN "gfx/items/bottle_cap.2bpp.lz"
HoneyIcon: INCBIN "gfx/items/sweet_honey.2bpp.lz"
CandyTruffleIcon: INCBIN "gfx/items/candy_truffle.2bpp.lz"
SpiderSilkIcon: INCBIN "gfx/items/spider_silk.2bpp.lz"
AncientVaseIcon: INCBIN "gfx/items/ancient_vase.2bpp.lz"
AncientCupIcon: INCBIN "gfx/items/ancient_cup.2bpp.lz"
AncientJarIcon: INCBIN "gfx/items/ancient_jar.2bpp.lz"
GoldStatueIcon: INCBIN "gfx/items/gold_statue.2bpp.lz"

SECTION "Berry Icons", ROMX
NoBerryIcon: INCBIN "gfx/items/no_item.2bpp.lz"
PechaBerryIcon: INCBIN "gfx/items/pecha_berry.2bpp.lz"
CheriBerryIcon: INCBIN "gfx/items/cheri_berry.2bpp.lz"
AspearBerryIcon: INCBIN "gfx/items/aspear_berry.2bpp.lz"
RawstBerryIcon: INCBIN "gfx/items/rawst_berry.2bpp.lz"
PersimBerryIcon: INCBIN "gfx/items/persim_berry.2bpp.lz"
ChestoBerryIcon: INCBIN "gfx/items/chesto_berry.2bpp.lz"
LumBerryIcon: INCBIN "gfx/items/lum_berry.2bpp.lz"
LeppaBerryIcon: INCBIN "gfx/items/leppa_berry.2bpp.lz"
OranBerryIcon: INCBIN "gfx/items/oran_berry.2bpp.lz"
SitrusBerryIcon: INCBIN "gfx/items/sitrus_berry.2bpp.lz"
FigyBerryIcon: INCBIN "gfx/items/figy_berry.2bpp.lz"
WikiBerryIcon: INCBIN "gfx/items/wiki_berry.2bpp.lz"
MagoBerryIcon: INCBIN "gfx/items/mago_berry.2bpp.lz"
AguavBerryIcon: INCBIN "gfx/items/aguav_berry.2bpp.lz"
IapapaBerryIcon: INCBIN "gfx/items/iapapa_berry.2bpp.lz"
PomegBerryIcon: INCBIN "gfx/items/pomeg_berry.2bpp.lz"
KelpsyBerryIcon: INCBIN "gfx/items/kelpsy_berry.2bpp.lz"
QualotBerryIcon: INCBIN "gfx/items/qualot_berry.2bpp.lz"
HondewBerryIcon: INCBIN "gfx/items/hondew_berry.2bpp.lz"
GrepaBerryIcon: INCBIN "gfx/items/grepa_berry.2bpp.lz"
TamatoBerryIcon: INCBIN "gfx/items/tamato_berry.2bpp.lz"
OccaBerryIcon: INCBIN "gfx/items/occa_berry.2bpp.lz"
PasshoBerryIcon: INCBIN "gfx/items/passho_berry.2bpp.lz"
WacanBerryIcon: INCBIN "gfx/items/wacan_berry.2bpp.lz"
RindoBerryIcon: INCBIN "gfx/items/rindo_berry.2bpp.lz"
YacheBerryIcon: INCBIN "gfx/items/yache_berry.2bpp.lz"
ChopleBerryIcon: INCBIN "gfx/items/chople_berry.2bpp.lz"
KebiaBerryIcon: INCBIN "gfx/items/kebia_berry.2bpp.lz"
ShucaBerryIcon: INCBIN "gfx/items/shuca_berry.2bpp.lz"
CobaBerryIcon: INCBIN "gfx/items/coba_berry.2bpp.lz"
PayapaBerryIcon: INCBIN "gfx/items/payapa_berry.2bpp.lz"
TangaBerryIcon: INCBIN "gfx/items/tanga_berry.2bpp.lz"
ChartiBerryIcon: INCBIN "gfx/items/charti_berry.2bpp.lz"
KasibBerryIcon: INCBIN "gfx/items/kasib_berry.2bpp.lz"
HabanBerryIcon: INCBIN "gfx/items/haban_berry.2bpp.lz"
ColburBerryIcon: INCBIN "gfx/items/colbur_berry.2bpp.lz"
BabiriBerryIcon: INCBIN "gfx/items/babiri_berry.2bpp.lz"
ChilanBerryIcon: INCBIN "gfx/items/chilan_berry.2bpp.lz"
RoseliBerryIcon: INCBIN "gfx/items/roseli_berry.2bpp.lz"
LiechiBerryIcon: INCBIN "gfx/items/liechi_berry.2bpp.lz"
GanlonBerryIcon: INCBIN "gfx/items/ganlon_berry.2bpp.lz"
SalacBerryIcon: INCBIN "gfx/items/salac_berry.2bpp.lz"
PetayaBerryIcon: INCBIN "gfx/items/petaya_berry.2bpp.lz"
ApicotBerryIcon: INCBIN "gfx/items/apicot_berry.2bpp.lz"
LansatBerryIcon: INCBIN "gfx/items/lansat_berry.2bpp.lz"
StarfBerryIcon: INCBIN "gfx/items/starf_berry.2bpp.lz"
KeeBerryIcon: INCBIN "gfx/items/kee_berry.2bpp.lz"
MarangaBerryIcon: INCBIN "gfx/items/maranga_berry.2bpp.lz"
EnigmaBerryIcon: INCBIN "gfx/items/enigma_berry.2bpp.lz"
MicleBerryIcon: INCBIN "gfx/items/micle_berry.2bpp.lz"
CustapBerryIcon: INCBIN "gfx/items/custap_berry.2bpp.lz"
JabocaBerryIcon: INCBIN "gfx/items/jaboca_berry.2bpp.lz"
RowapBerryIcon: INCBIN "gfx/items/rowap_berry.2bpp.lz"
EggantBerryIcon: INCBIN "gfx/items/eggant_berry.2bpp.lz"
UnyinnBerryIcon: INCBIN "gfx/items/unyinn_berry.2bpp.lz"
PumkinBerryIcon: INCBIN "gfx/items/pumkin_berry.2bpp.lz"
CareepBerryIcon: INCBIN "gfx/items/careep_berry.2bpp.lz"
BitmelBerryIcon: INCBIN "gfx/items/bitmel_berry.2bpp.lz"
DrashBerryIcon: INCBIN "gfx/items/drash_berry.2bpp.lz"
RazzBerryIcon: INCBIN "gfx/items/razz_berry.2bpp.lz"
BlukBerryIcon: INCBIN "gfx/items/bluk_berry.2bpp.lz"
NanabBerryIcon: INCBIN "gfx/items/nanab_berry.2bpp.lz"
WepearBerryIcon: INCBIN "gfx/items/wepear_berry.2bpp.lz"
PinapBerryIcon: INCBIN "gfx/items/pinap_berry.2bpp.lz"
CornnBerryIcon: INCBIN "gfx/items/cornn_berry.2bpp.lz"
MagostBerryIcon: INCBIN "gfx/items/magost_berry.2bpp.lz"
RabutaBerryIcon: INCBIN "gfx/items/rabuta_berry.2bpp.lz"
NomelBerryIcon: INCBIN "gfx/items/nomel_berry.2bpp.lz"
SpelonBerryIcon: INCBIN "gfx/items/spelon_berry.2bpp.lz"
PamtreBerryIcon: INCBIN "gfx/items/pamtre_berry.2bpp.lz"
WatmelBerryIcon: INCBIN "gfx/items/watmel_berry.2bpp.lz"
DurinBerryIcon: INCBIN "gfx/items/durin_berry.2bpp.lz"
BelueBerryIcon: INCBIN "gfx/items/belue_berry.2bpp.lz"
StribBerryIcon: INCBIN "gfx/items/strib_berry.2bpp.lz"
TilotaBerryIcon: INCBIN "gfx/items/tilota_berry.2bpp.lz"
NutpeaBerryIcon: INCBIN "gfx/items/nutpea_berry.2bpp.lz"
KrauBerryIcon: INCBIN "gfx/items/krau_berry.2bpp.lz"
LigarcBerryIcon: INCBIN "gfx/items/ligarc_berry.2bpp.lz"
TotapoBerryIcon: INCBIN "gfx/items/totapo_berry.2bpp.lz"
PinkanBerryIcon: INCBIN "gfx/items/pinkan_berry.2bpp.lz"
ApricornIcon: INCBIN "gfx/items/apricorn.2bpp.lz"
HopoBerryIcon: INCBIN "gfx/items/hopo_berry.2bpp.lz"
