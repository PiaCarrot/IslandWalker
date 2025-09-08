ItemDescriptions:
	indirect_table 2, 1
	indirect_entries NUM_ITEM_POCKET, ItemDescriptions1
	indirect_entries FIRST_KEY_ITEM - 1; sparse Table
	indirect_entries (FIRST_KEY_ITEM - 1) + NUM_KEY_ITEM_POCKET, ItemDescriptionsKeyItems
	indirect_entries FIRST_BALL_ITEM - 1 ; sparse Table
	indirect_entries (FIRST_BALL_ITEM - 1) + NUM_BALL_ITEM_POCKET, ItemDescriptionsBalls
	indirect_entries FIRST_BERRY_ITEM - 1 ; sparse Table
	indirect_entries (FIRST_BERRY_ITEM - 1) + NUM_BERRY_ITEM_POCKET, ItemDescriptionsBerries
	indirect_entries FIRST_MEDICINE_ITEM - 1 ; sparse Table
	indirect_entries (FIRST_MEDICINE_ITEM - 1) + NUM_MEDICINE_ITEM_POCKET, ItemDescriptionsMedicine
	indirect_entries FIRST_VALUABLE_ITEM - 1 ; sparse Table
	indirect_entries (FIRST_VALUABLE_ITEM - 1) + NUM_VALUABLE_ITEM_POCKET, ItemDescriptionsValuable
	indirect_table_end

ItemDescriptions1:
; entries correspond to item ids (see constants/item_constants.asm)
	dw BrightpowderDesc ; 0001
	dw QuestionMarkDesc ; 0002
	dw MoonStoneDesc    ; 0003
	dw EscapeRopeDesc   ; 000E
	dw RepelDesc        ; 000F
	dw FireStoneDesc    ; 0011
	dw ThunderStoneDesc ; 0012
	dw WaterStoneDesc   ; 0013
	dw QuestionMarkDesc ; 0014
	dw LuckyPunchDesc   ; 0019
	dw XAccuracyDesc    ; 001C
	dw LeafStoneDesc    ; 001D
	dw MetalPowderDesc  ; 001E
	dw PokeDollDesc     ; 0020
	dw GuardSpecDesc    ; 0024
	dw SuperRepelDesc   ; 0025
	dw MaxRepelDesc     ; 0026
	dw DireHitDesc      ; 0027
	dw QuestionMarkDesc ; 0028
	dw XAttackDesc      ; 002C
	dw QuestionMarkDesc ; 002D
	dw XDefendDesc      ; 002E
	dw XSpeedDesc       ; 002F
	dw XSpAtkDesc       ; 0030
	dw QuestionMarkDesc ; 0031
	dw ExpShareDesc     ; 0032
	dw QuickClawDesc    ; 0039
	dw SoftSandDesc     ; 003B
	dw SharpBeakDesc    ; 003C
	dw PoisonBarbDesc   ; 003D
	dw KingsRockDesc    ; 003E
	dw SilverPowderDesc ; 0041
	dw QuestionMarkDesc ; 0042
	dw AmuletCoinDesc   ; 0043
	dw CleanseTagDesc   ; 0044
	dw MysticWaterDesc  ; 0045
	dw TwistedSpoonDesc ; 0046
	dw BlackbeltDesc    ; 0047
	dw QuestionMarkDesc ; 0048
	dw BlackGlassesDesc ; 0049
	dw PinkBowDesc      ; 004B
	dw StickDesc        ; 004C
	dw SmokeBallDesc    ; 004D
	dw NeverMeltIceDesc ; 004E
	dw MagnetDesc       ; 004F
	dw EverStoneDesc    ; 0052
	dw SpellTagDesc     ; 0053
	dw MiracleSeedDesc  ; 0055
	dw ThickClubDesc    ; 0056
	dw FocusBandDesc    ; 0057
	dw QuestionMarkDesc ; 0058
	dw HardStoneDesc    ; 005D
	dw LuckyEggDesc     ; 005E
	dw QuestionMarkDesc ; 0061
	dw QuestionMarkDesc ; 0062
	dw CharcoalDesc     ; 0064
	dw ScopeLensDesc    ; 0066
	dw QuestionMarkDesc ; 0067
	dw QuestionMarkDesc ; 0068
	dw MetalCoatDesc    ; 0069
	dw DragonFangDesc   ; 006A
	dw QuestionMarkDesc ; 006B
	dw LeftoversDesc    ; 006C
	dw QuestionMarkDesc ; 006D
	dw QuestionMarkDesc ; 006E
	dw QuestionMarkDesc ; 006F
	dw DragonScaleDesc  ; 0070
	dw BerserkGeneDesc  ; 0071
	dw QuestionMarkDesc ; 0072
	dw QuestionMarkDesc ; 0073
	dw QuestionMarkDesc ; 0074
	dw FlowerMailDesc   ; 0076
	dw QuestionMarkDesc ; 0077
	dw LightBallDesc    ; 0078
	dw NormalBoxDesc    ; 0079
	dw GorgeousBoxDesc  ; 007A
	dw SunStoneDesc     ; 007B
	dw PolkadotBowDesc  ; 007C
	dw QuestionMarkDesc ; 007D
	dw UpGradeDesc      ; 007E
	dw QuestionMarkDesc ; 007F
	dw QuestionMarkDesc ; 0080
	dw SurfMailDesc     ; 0082
	dw LiteBlueMailDesc ; 0083
	dw PortraitMailDesc ; 0084
	dw LovelyMailDesc   ; 0085
	dw EonMailDesc      ; 0086
	dw MorphMailDesc    ; 0087
	dw BlueSkyMailDesc  ; 0088
	dw MusicMailDesc    ; 0089
	dw MirageMailDesc   ; 008A
	dw QuestionMarkDesc ; 008B
	dw QuestionMarkDesc ; 008C
	dw QuestionMarkDesc ; 008D
	dw QuestionMarkDesc ; 008E
	dw ShinyStoneDesc     ; 008F
	dw DuskStoneDesc      ; 009A
	dw DawnStoneDesc      ; 009B
	dw IceStoneDesc       ; 009C
	dw BlkAuguriteDesc    ; 009D
	dw PeatBlockDesc      ; 009E
	dw SweetAppleDesc     ; 009F
	dw TartAppleDesc      ; 00A0
	dw SyrupyAppleDesc    ; 00A1
	dw GalarCuffDesc      ; 00A2
	dw GalarWreathDesc    ; 00A3
	dw HolyArmorDesc      ; 00A4 Auspicious Armor
	dw CursedArmorDesc    ; 00A5 Malicious Armor
	dw ElectirizerDesc    ; 00A6
	dw MagmarizerDesc     ; 00A7
	dw ProtectorDesc      ; 00A8
	dw DubiousDiscDesc    ; 00A9
	dw OvalStoneDesc      ; 00AA
	dw PrismScaleDesc     ; 00AB
	dw RazorClawDesc      ; 00AC
	dw RazorFangDesc      ; 00AD
	dw ReaperClothDesc    ; 00AE
	dw LinkingCordDesc    ; 00AF
	dw FairyFeatherDesc   ; 00B0
	dw QuickPowderDesc    ; 00B1
	dw EvioliteDesc       ; 00B2
	dw SoulDewDesc        ; 00B3
	dw SootheBellDesc     ; 00B4
	dw MirrorHerbDesc     ; 00B5
	dw MentalHerbDesc     ; 00B6
	dw PowerHerbDesc      ; 00B7
	dw WhiteHerbDesc      ; 00B8
	dw FullIncenseDesc    ; 00B9
	dw LaxIncenseDesc     ; 00BA
	dw LuckIncenseDesc    ; 00BB
	dw OddIncenseDesc     ; 00BC
	dw PureIncenseDesc    ; 00BD
	dw RockIncenseDesc    ; 00BE
	dw RoseIncenseDesc    ; 00BF
	dw SeaIncenseDesc     ; 00C0
	dw WaveIncenseDesc    ; 00C1
	dw MachoBraceDesc     ; 00C2
	dw PowerAnkletDesc    ; 00C3
	dw PowerBandDesc      ; 00C4
	dw PowerBeltDesc      ; 00C5
	dw PowerBracerDesc    ; 00C6
	dw PowerLensDesc      ; 00C7
	dw PowerWeightDesc    ; 00C8
	dw XSpAtkDesc         ; 00D7
	dw LeaderCrestDesc    ; 00DB
	dw BlockDesc    ; 00DB
	dw BlockDesc    ; 00DB
	dw BlockDesc    ; 00DB
	dw BlockDesc    ; 00DB
	dw BlockDesc    ; 00DB
	dw BlockDesc    ; 00DB
	dw AuroraOrbDesc    ; 00DB
	dw XEvadeDesc    ; 00DB
	dw GlitterMailDesc ; 0084
	dw TropicMailDesc ; 0084
	dw BreezeMailDesc ; 0084
	dw PostcardDesc ; 0084
	dw RocketMailDesc ; 0084
	dw GoldMailDesc ; 0084
	dw ZigZagMailDesc ; 0084
.IndirectEnd:

ItemDescriptionsKeyItems:
	dw BicycleDesc      ; 0100
	dw CoinCaseDesc     ; 0101
	dw ItemfinderDesc   ; 0102
	dw OldRodDesc       ; 0103
	dw GoodRodDesc      ; 0104
	dw SuperRodDesc     ; 0105
	dw RedScaleDesc     ; 0106
	dw SecretPotionDesc ; 0107
	dw SSTicketDesc     ; 0108
	dw MysteryEggDesc   ; 0109
	dw ClearBellDesc    ; 010A
	dw SilverWingDesc   ; 010B
	dw GSBallDesc       ; 010C
	dw BlueCardDesc     ; 010D
	dw CardKeyDesc      ; 010E
	dw MachinePartDesc  ; 010F
	dw EggTicketDesc    ; 0110
	dw LostItemDesc     ; 0111
	dw BasementKeyDesc  ; 0112
	dw PassDesc         ; 0113
	dw SquirtBottleDesc ; 0114
	dw RainbowWingDesc  ; 0115
	dw SecretStashDesc  ; 0116
	dw SeaMapDesc       ; 0117
	dw BerryLogDesc     ; 0118
	dw ExcelScopeDesc     ; 0119
.IndirectEnd:

ItemDescriptionsBalls:
	dw MasterBallDesc  ; 0200
	dw UltraBallDesc   ; 0201
	dw GreatBallDesc   ; 0202
	dw PokeBallDesc    ; 0203
	dw SafariBallDesc  ; 0204
	dw NetBallDesc     ; 0205
	dw DiveBallDesc    ; 0206
	dw NestBallDesc    ; 0207
	dw RepeatBallDesc  ; 0208
	dw TimerBallDesc   ; 0209
	dw LuxuryBallDesc  ; 020A
	dw PremierBallDesc ; 020B
	dw FastBallDesc    ; 020C
	dw LevelBallDesc   ; 020D
	dw LureBallDesc    ; 020E
	dw HeavyBallDesc   ; 020F
	dw LoveBallDesc    ; 0210
	dw FriendBallDesc  ; 0211
	dw MoonBallDesc    ; 0212
	dw ParkBallDesc    ; 0213
	dw SportBallDesc   ; 0214
	dw DuskBallDesc    ; 0215
	dw HealBallDesc    ; 0216
	dw QuickBallDesc   ; 0217
	dw CherishBallDesc ; 0218
	dw DreamBallDesc   ; 0219
	dw BeastBallDesc   ; 021A
	dw StrangeBallDesc ; 021B
	dw PokeBallHDesc   ; 021C
	dw GreatBallHDesc  ; 021D
	dw UltraBallHDesc  ; 021E
	dw HeavyBallHDesc  ; 021F
	dw LeadenBallDesc  ; 0220
	dw GigatonBallDesc ; 0221
	dw FeatherBallDesc ; 0222
	dw WingBallDesc    ; 0223
	dw JetBallDesc     ; 0224
	dw OriginBallDesc  ; 0225
	dw RocketBallDesc  ; 0226
	dw GSBallDesc      ; 0227
.IndirectEnd:

ItemDescriptionsBerries:
	dw RedApricornDesc  ; 0300
	dw BluApricornDesc  ; 0301
	dw YlwApricornDesc  ; 0302
	dw GrnApricornDesc  ; 0303
	dw WhtApricornDesc  ; 0304
	dw BlkApricornDesc  ; 0305
	dw PnkApricornDesc  ; 0306
	dw BrnApricornDesc  ; 0307
	dw PechaBerryDesc   ; 0308
	dw CheriBerryDesc   ; 0309
	dw AspearBerryDesc  ; 030A
	dw RawstBerryDesc   ; 030B
	dw PersimBerryDesc  ; 030C
	dw ChestoBerryDesc  ; 030D
	dw LumBerryDesc     ; 030E
	dw LeppaBerryDesc   ; 030F
	dw OranBerryDesc    ; 0310
	dw SitrusBerryDesc  ; 0311
	dw FigyBerryDesc    ; 0312
	dw WikiBerryDesc    ; 0313
	dw MagoBerryDesc    ; 0314
	dw AguavBerryDesc   ; 0315
	dw IapapaBerryDesc  ; 0316
	dw PomegBerryDesc   ; 0317
	dw KelpsyBerryDesc  ; 0318
	dw QualotBerryDesc  ; 0319
	dw HondewBerryDesc  ; 031A
	dw GrepaBerryDesc   ; 031B
	dw TamatoBerryDesc  ; 031C
	dw OccaBerryDesc    ; 031D
	dw PasshoBerryDesc  ; 031E
	dw WacanBerryDesc   ; 031F
	dw RindoBerryDesc   ; 0320
	dw YacheBerryDesc   ; 0321
	dw ChopleBerryDesc  ; 0322
	dw KebiaBerryDesc   ; 0323
	dw ShucaBerryDesc   ; 0324
	dw CobaBerryDesc    ; 0325
	dw PayapaBerryDesc  ; 0326
	dw TangaBerryDesc   ; 0327
	dw ChartiBerryDesc  ; 0328
	dw KasibBerryDesc   ; 0329
	dw HabanBerryDesc   ; 032A
	dw ColburBerryDesc  ; 032B
	dw BabiriBerryDesc  ; 032C
	dw ChilanBerryDesc  ; 032D
	dw RoseliBerryDesc  ; 032E
	dw LiechiBerryDesc  ; 032F
	dw GanlonBerryDesc  ; 0330
	dw SalacBerryDesc   ; 0331
	dw PetayaBerryDesc  ; 0332
	dw ApicotBerryDesc  ; 0333
	dw LansatBerryDesc  ; 0334
	dw StarfBerryDesc   ; 0335
	dw KeeBerryDesc     ; 0336
	dw MarangaBerryDesc ; 0337
	dw EnigmaBerryDesc  ; 0338
	dw MicleBerryDesc   ; 0339
	dw CustapBerryDesc  ; 033A
	dw JabocaBerryDesc  ; 033B
	dw RowapBerryDesc   ; 033C
	dw EggantBerryDesc  ; 033D
	dw UnyinnBerryDesc  ; 033E
	dw HopoBerryDesc    ; 033F Same as LeppaBerryDesc
	dw PumkinBerryDesc  ; 0340 Same as AspearBerryDesc
	dw CareepBerryDesc  ; 0341 Same as PersimBerryDesc
	dw BitmelBerryDesc  ; 0342 Same as RawstBerryDesc
	dw DrashBerryDesc   ; 0343 Same as PechaBerryDesc
	dw RazzBerryDesc    ; 0344
	dw BlukBerryDesc    ; 0345
	dw NanabBerryDesc   ; 0346
	dw WepearBerryDesc  ; 0347
	dw PinapBerryDesc   ; 0348
	dw CornnBerryDesc   ; 0349
	dw MagostBerryDesc  ; 034A
	dw RabutaBerryDesc  ; 034B
	dw NomelBerryDesc   ; 034C
	dw SpelonBerryDesc  ; 034D
	dw PamtreBerryDesc  ; 034E
	dw WatmelBerryDesc  ; 034F
	dw DurinBerryDesc   ; 0350
	dw BelueBerryDesc   ; 0351
	dw StribBerryDesc   ; 0352
	dw TilotaBerryDesc  ; 0353
	dw NutpeaBerryDesc  ; 0354
	dw KrauBerryDesc    ; 0355
	dw LigarcBerryDesc  ; 0356
	dw TotapoBerryDesc  ; 0357
	dw PinkanBerryDesc  ; 0358
.IndirectEnd:

ItemDescriptionsMedicine:
	dw AntidoteDesc     ; 0004
	dw BurnHealDesc     ; 0005
	dw IceHealDesc      ; 0006
	dw AwakeningDesc    ; 0007
	dw ParlyzHealDesc   ; 0008
	dw FullRestoreDesc  ; 0009
	dw MaxPotionDesc    ; 000A
	dw HyperPotionDesc  ; 000B
	dw SuperPotionDesc  ; 000C
	dw PotionDesc       ; 000D
	dw MaxElixerDesc    ; 0010
	dw HPUpDesc         ; 0015
	dw ProteinDesc      ; 0016
	dw IronDesc         ; 0017
	dw CarbosDesc       ; 0018
	dw CalciumDesc      ; 001A
	dw RareCandyDesc    ; 001B
	dw FullHealDesc     ; 0021
	dw ReviveDesc       ; 0022
	dw MaxReviveDesc    ; 0023
	dw FreshWaterDesc   ; 0029
	dw SodaPopDesc      ; 002A
	dw LemonadeDesc     ; 002B
	dw PPUpDesc         ; 0034
	dw EtherDesc        ; 0035
	dw MaxEtherDesc     ; 0036
	dw ElixerDesc       ; 0037
	dw MoomooMilkDesc   ; 0038
	dw RageCandyBarDesc ; 0054
	dw EnergyPowderDesc ; 0059
	dw EnergyRootDesc   ; 005A
	dw HealPowderDesc   ; 005B
	dw RevivalHerbDesc  ; 005C
	dw ZincDesc         ; 0063
	dw BerryJuiceDesc   ; 0065
	dw SacredAshDesc    ; 0075
	dw PPMaxDesc          ; 00D8
	dw PewterArareDesc    ; 00D9
	dw SeventhTanghuluDesc    ; 00DA
	dw MintDesc
	dw MintDesc
	dw MintDesc
	dw MintDesc
	dw MintDesc
	dw MintDesc
	dw MintDesc
	dw MintDesc
	dw MintDesc
	dw MintDesc
	dw MintDesc
	dw MintDesc
	dw MintDesc
	dw MintDesc
	dw MintDesc
	dw MintDesc
	dw MintDesc
        dw MintDesc
        dw MintDesc
        dw MintDesc
        dw MintDesc
        dw MintDesc
        dw MintDesc
        dw MintDesc
        dw MintDesc
        dw AbilityUpDesc
        dw PinkCureDesc
        dw ExpCandyXSDesc
        dw ExpCandySDesc
        dw ExpCandyMDesc
        dw ExpCandyLDesc
        dw ExpCandyXLDesc
.IndirectEnd:

ItemDescriptionsValuable:
	dw NuggetDesc       ; 001F
	dw SilverLeafDesc   ; 0033
	dw GoldLeafDesc     ; 003A
	dw TinyMushroomDesc ; 003F
	dw BigMushroomDesc  ; 0040
	dw SlowpokeTailDesc ; 004A
	dw PearlDesc        ; 0050
	dw BigPearlDesc     ; 0051
	dw StardustDesc     ; 005F
	dw StarPieceDesc    ; 0060
	dw BrickPieceDesc   ; 0081
	dw HeartScaleDesc     ; 00C9
	dw BlueShardDesc      ; 00CA
	dw GreenShardDesc     ; 00CB
	dw RedShardDesc       ; 00CC
	dw YellowShardDesc    ; 00CD
	dw RareBoneDesc       ; 00CE
	dw BalmmushroomDesc   ; 00CF
	dw BigNuggetDesc      ; 00D0
	dw CometShardDesc     ; 00D1
	dw PearlStringDesc    ; 00D2
	dw BeachGlassDesc     ; 00D3
	dw PrettyShellDesc    ; 00D4
	dw TinyBambooDesc     ; 00D5
	dw BigBambooDesc      ; 00D6
	dw SpiderSilkDesc    ; 00DB
	dw AncientPotteryDesc    ; 00DB
	dw AncientPotteryDesc    ; 00DB
	dw AncientPotteryDesc    ; 00DB
	dw ClayShardDesc    ; 00DB
	dw CrystalChunkDesc    ; 00DB
	dw GemstoneDesc    ; 00DB
	dw GemstoneDesc    ; 00DB
	dw GemstoneDesc    ; 00DB
	dw GemstoneDesc    ; 00DB
	dw GemstoneDesc    ; 00DB
	dw GemstoneDesc    ; 00DB
	dw GemstoneDesc    ; 00DB
	dw GemstoneDesc    ; 00DB
	dw GemstoneDesc    ; 00DB
	dw SilverCapDesc
	dw GoldCapDesc
	dw GoldDustDesc
	dw GoldStatueDesc
	dw HoneyDesc
	dw SweetHoneyDesc
	dw CandyTruffleDesc
.IndirectEnd:

BrightpowderDesc:
	db   "Lowers the foe's"
	next "accuracy. (HOLD)@"

MasterBallDesc:
	db   "The best BALL. It"
	next "never misses.@"

UltraBallHDesc:
UltraBallDesc:
	db   "A BALL with a high"
	next "rate of success.@"

GreatBallHDesc:
GreatBallDesc:
	db   "A BALL with a de-"
	next "cent success rate.@"

PokeBallHDesc:
PokeBallDesc:
	db   "An item for catch-"
	next "ing #MON.@"

FastBallDesc:
	db   "A BALL for catch-"
	next "ing fast #MON.@"

LevelBallDesc:
	db   "A BALL for lower-"
	next "level #MON.@"

LureBallDesc:
	db   "A BALL for #MON"
	next "hooked by a ROD.@"

HeavyBallHDesc:
LeadenBallDesc:
GigatonBallDesc:
HeavyBallDesc:
	db   "A BALL for catch-"
	next "ing heavy #MON.@"

LoveBallDesc:
	db   "For catching the"
	next "opposite gender.@"

FriendBallDesc:
	db   "A BALL that makes"
	next "#MON friendly.@"

MoonBallDesc:
	db   "A BALL for MOON"
	next "STONE evolvers.@"

BicycleDesc:
	db   "A collapsible bike"
	next "for fast movement.@"

MoonStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

AntidoteDesc:
	db   "Cures poisoned"
	next "#MON.@"

BurnHealDesc:
	db   "Heals burned"
	next "#MON.@"

IceHealDesc:
	db   "Defrosts frozen"
	next "#MON.@"

AwakeningDesc:
	db   "Awakens sleeping"
	next "#MON.@"

ParlyzHealDesc:
	db   "Heals paralyzed"
	next "#MON.@"

FullRestoreDesc:
	db   "Fully restores HP"
	next "& status.@"

MaxPotionDesc:
	db   "Fully restores"
	next "#MON HP.@"

HyperPotionDesc:
	db   "Restores #MON"
	next "HP by 200.@"

SuperPotionDesc:
	db   "Restores #MON"
	next "HP by 50.@"

PotionDesc:
	db   "Restores #MON"
	next "HP by 20.@"

EscapeRopeDesc:
	db   "Use for escaping"
	next "from caves, etc.@"

RepelDesc:
	db   "Repels weak #-"
	next "MON for 100 steps.@"

MaxElixerDesc:
	db   "Fully restores the"
	next "PP of one #MON.@"

FireStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

ThunderStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

WaterStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

HPUpDesc:
	db   "Raises the HP of"
	next "one #MON.@"

ProteinDesc:
	db   "Raises ATTACK of"
	next "one #MON.@"

IronDesc:
	db   "Raises DEFENSE of"
	next "one #MON.@"

CarbosDesc:
	db   "Raises SPEED of"
	next "one #MON.@"

LuckyPunchDesc:
	db   "Ups critical hit"
	next "ratio of CHANSEY.@"

CalciumDesc:
	db   "Raises SPCL.ATK"
	next "of one #MON.@"

RareCandyDesc:
	db   "Raises level of a"
	next "#MON by one.@"

XAccuracyDesc:
	db   "Raises accuracy."
	next "(1 BTL)@"

LeafStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

MetalPowderDesc:
	db   "Raises DEFENSE of"
	next "DITTO. (HOLD)@"

NuggetDesc:
	db   "Made of pure gold."
	next "Sell high.@"

PokeDollDesc:
	db   "Use to escape from"
	next "a wild #MON.@"

FullHealDesc:
	db   "Eliminates all"
	next "status problems.@"

ReviveDesc:
	db   "Restores a fainted"
	next "#MON to 1/2 HP.@"

MaxReviveDesc:
	db   "Fully restores a"
	next "fainted #MON.@"

GuardSpecDesc:
	db   "Prevents stats"
	next "reduction. (1 BTL)@"

SuperRepelDesc:
	db   "Repels weak #-"
	next "MON for 200 steps.@"

MaxRepelDesc:
	db   "Repels weak #-"
	next "MON for 250 steps.@"

DireHitDesc:
	db   "Ups critical hit"
	next "ratio. (1 BTL)@"

FreshWaterDesc:
	db   "Restores #MON"
	next "HP by 50.@"

SodaPopDesc:
	db   "Restores #MON"
	next "HP by 60.@"

LemonadeDesc:
	db   "Restores #MON"
	next "HP by 80.@"

XAttackDesc:
	db   "Raises ATTACK."
	next "(1 BTL)@"

XDefendDesc:
	db   "Raises DEFENSE."
	next "(1 BTL)@"

XSpeedDesc:
	db   "Raises SPEED."
	next "(1 BTL)@"

XSpAtkDesc:
	db   "Raises SPECIAL"
	next "ATTACK. (1 BTL)@"

XSpDefDesc:
	db   "Raises SPECIAL"
	next "DEFENSE. (1 BTL)@"

CoinCaseDesc:
	db   "Holds up to 9,999"
	next "game coins.@"

ItemfinderDesc:
	db   "Checks for unseen"
	next "items in the area.@"

ExpShareDesc:
	db   "Shares battle EXP."
	next "Points. (HOLD)@"

OldRodDesc:
	db   "Use by water to"
	next "fish for #MON.@"

GoodRodDesc:
	db   "A good ROD for"
	next "catching #MON.@"

SilverLeafDesc:
	db   "A strange, silver-"
	next "colored leaf.@"

SuperRodDesc:
	db   "The best ROD for"
	next "catching #MON.@"

PPUpDesc:
	db   "Raises max PP of"
	next "a selected move.@"

PPMaxDesc:
	db   "Raise PP of a move"
	next "to its maximum.@"

EtherDesc:
	db   "Restores PP of one"
	next "move by 10.@"

MaxEtherDesc:
	db   "Fully restores PP"
	next "of one move.@"

ElixerDesc:
	db   "Restores PP of all"
	next "moves by 10.@"

RedScaleDesc:
	db   "A scale from the"
	next "red GYARADOS.@"

SecretPotionDesc:
	db   "Fully heals any"
	next "#MON.@"

SSTicketDesc:
	db   "A ticket for the"
	next "S.S.AQUA.@"

MysteryEggDesc:
	db   "An EGG obtained"
	next "from MR.#MON.@"

ClearBellDesc:
	db   "Makes a gentle"
	next "ringing.@"

SilverWingDesc:
	db   "A strange, silver-"
	next "colored feather.@"

MoomooMilkDesc:
	db   "Restores #MON"
	next "HP by 100.@"

QuickClawDesc:
	db   "Raises 1st strike"
	next "ratio. (HOLD)@"

DrashBerryDesc:
PechaBerryDesc:
	db   "A self-cure for"
	next "poison. (HOLD)@"

GoldLeafDesc:
	db   "A strange, gold-"
	next "colored leaf.@"

SoftSandDesc:
	db   "Powers up ground-"
	next "type moves. (HOLD)@"

SharpBeakDesc:
	db   "Powers up flying-"
	next "type moves. (HOLD)@"

CheriBerryDesc:
	db   "A self-cure for"
	next "paralysis. (HOLD)@"

PumkinBerryDesc:
AspearBerryDesc:
	db   "A self-cure for"
	next "freezing. (HOLD)@"

BitmelBerryDesc:
RawstBerryDesc:
	db   "A self-heal for a"
	next "burn. (HOLD)@"

PoisonBarbDesc:
	db   "Powers up poison-"
	next "type moves. (HOLD)@"

RazorFangDesc:
KingsRockDesc:
	db   "May make the foe"
	next "flinch. (HOLD)@"

CareepBerryDesc:
PersimBerryDesc:
	db   "A self-cure for"
	next "confusion. (HOLD)@"

ChestoBerryDesc:
	db   "A self-awakening"
	next "for sleep. (HOLD)@"

RedApricornDesc:
	db   "A red APRICORN.@"

TinyMushroomDesc:
	db   "An ordinary mush-"
	next "room. Sell low.@"

BigMushroomDesc:
	db   "A rare mushroom."
	next "Sell high.@"

SilverPowderDesc:
	db   "Powers up bug-type"
	next "moves. (HOLD)@"

BluApricornDesc:
	db   "A blue APRICORN.@"

LuckIncenseDesc:
AmuletCoinDesc:
	db   "Doubles monetary"
	next "earnings. (HOLD)@"

YlwApricornDesc:
	db   "A yellow APRICORN.@"

GrnApricornDesc:
	db   "A green APRICORN.@"

PureIncenseDesc:
CleanseTagDesc:
	db   "Helps repel wild"
	next "#MON. (HOLD)@"

SeaIncenseDesc:
WaveIncenseDesc:
MysticWaterDesc:
	db   "Powers up water-"
	next "type moves. (HOLD)@"

OddIncenseDesc:
TwistedSpoonDesc:
	db   "Powers up psychic-"
	next "type moves. (HOLD)@"

WhtApricornDesc:
	db   "A white APRICORN.@"

BlackbeltDesc:
	db   "Boosts fighting-"
	next "type moves. (HOLD)@"

BlkApricornDesc:
	db   "A black APRICORN."
	next "@"

PnkApricornDesc:
	db   "A pink APRICORN."
	next "@"

BrnApricornDesc:
	db   "A brown APRICORN."
	next "@"

BlackGlassesDesc:
	db   "Powers up dark-"
	next "type moves. (HOLD)@"

SlowpokeTailDesc:
	db   "Very tasty. Sell"
	next "high.@"

PinkBowDesc:
	db   "Powers up normal-"
	next "type moves. (HOLD)@"

StickDesc:
	db   "An ordinary stick."
	next "Sell low.@"

SmokeBallDesc:
	db   "Escape from wild"
	next "#MON. (HOLD)@"

NeverMeltIceDesc:
	db   "Powers up ice-type"
	next "moves. (HOLD)@"

MagnetDesc:
	db   "Boosts electric-"
	next "type moves. (HOLD)@"

LumBerryDesc:
	db   "Cures all status"
	next "problems. (HOLD)@"

PearlDesc:
	db   "A beautiful pearl."
	next "Sell low.@"

BigPearlDesc:
	db   "A big, beautiful"
	next "pearl. Sell high.@"

EverStoneDesc:
	db   "Stops evolution."
	next "(HOLD)@"

SpellTagDesc:
	db   "Powers up ghost-"
	next "type moves. (HOLD)@"

RageCandyBarDesc:
	db   "Restores #MON"
	next "HP by 20.@"

GSBallDesc:
	db   "The mysterious"
	next "BALL.@"

BlueCardDesc:
	db   "Card to save"
	next "points.@"

RoseIncenseDesc:
MiracleSeedDesc:
	db   "Powers up grass-"
	next "type moves. (HOLD)@"

ThickClubDesc:
	db   "A bone of some"
	next "sort. Sell low.@"

FocusBandDesc:
	db   "May prevent faint-"
	next "ing. (HOLD)@"

EnergyPowderDesc:
	db   "Restores #MON"
	next "HP by 50. Bitter.@"

EnergyRootDesc:
	db   "Restores #MON"
	next "HP by 200. Bitter.@"

HealPowderDesc:
	db   "Cures all status"
	next "problems. Bitter.@"

RevivalHerbDesc:
	db   "Revives fainted"
	next "#MON. Bitter.@"

RockIncenseDesc:
HardStoneDesc:
	db   "Powers up rock-"
	next "type moves. (HOLD)@"

LuckyEggDesc:
	db   "Earns extra EXP."
	next "points. (HOLD)@"

CardKeyDesc:
	db   "Opens shutters in"
	next "the RADIO TOWER.@"

MachinePartDesc:
	db   "A machine part for"
	next "the POWER PLANT.@"

EggTicketDesc:
	db   "May use at Golden-"
	next "rod trade corner.@"

LostItemDesc:
	db   "The # DOLL lost"
	next "by the COPYCAT.@"

StardustDesc:
	db   "Pretty, red sand."
	next "Sell high.@"

StarPieceDesc:
	db   "A hunk of red gem."
	next "Sell very high.@"

BasementKeyDesc:
	db   "Opens doors.@"

PassDesc:
	db   "A ticket for the"
	next "MAGNET TRAIN.@"

ZincDesc:
	db   "Raises SPCL.DEF"
	next "of one #MON.@"

CharcoalDesc:
	db   "Powers up fire-"
	next "type moves. (HOLD)@"

BerryJuiceDesc:
	db   "Restores #MON"
	next "HP by 20.@"

RazorClawDesc:
ScopeLensDesc:
	db   "Raises critical"
	next "hit ratio. (HOLD)@"

MetalCoatDesc:
	db   "Powers up steel-"
	next "type moves. (HOLD)@"

DragonFangDesc:
	db   "Powers up dragon-"
	next "type moves. (HOLD)@"

LeftoversDesc:
	db   "Restores HP during"
	next "battle. (HOLD)@"

HopoBerryDesc:
LeppaBerryDesc:
	db   "A self-restore"
	next "for PP. (HOLD)@"

DragonScaleDesc:
	db   "A rare dragon-type"
	next "item.@"

BerserkGeneDesc:
	db   "Boosts ATTACK but"
	next "causes confusion.@"

SacredAshDesc:
	db   "Fully revives all"
	next "fainted #MON.@"

TropicMailDesc:
FlowerMailDesc:
	db   "Flower-print MAIL."
	next "(HOLD)@"

LightBallDesc:
	db   "An odd, electrical"
	next "orb. (HOLD)@"

AuroraOrbDesc:
	db   "A beautiful, cold"
	next "orb. (HOLD)@"

NormalBoxDesc:
	db   "Open it and see"
	next "what's inside.@"

GorgeousBoxDesc:
	db   "Open it and see"
	next "what's inside.@"

SunStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

PolkadotBowDesc:
	db   "Powers up normal-"
	next "type moves. (HOLD)@"

UpGradeDesc:
	db   "A mysterious box"
	next "made by SILPH CO.@"

OranBerryDesc:
	db   "A self-restore"
	next "item. (10HP, HOLD)@"

SitrusBerryDesc:
	db   "A self-restore"
	next "item. (30HP, HOLD)@"

SquirtBottleDesc:
	db   "A bottle used for"
	next "watering plants.@"

SportBallDesc:
	db   "The Bug-Catching"
	next "Contest BALL.@"

RainbowWingDesc:
	db   "A mystical feather"
	next "of rainbow colors.@"

SecretStashDesc:
	db   "A bottle of prized"
	next "SHAMOUTI SAKE.@"

QuestionMarkDesc:
	db   "?@"

BrickPieceDesc:
	db   "A rare chunk of"
	next "tile.@"

SurfMailDesc:
	db   "LAPRAS-print MAIL."
	next "(HOLD)@"

PostcardDesc:
	db   "A postcard from a"
	next "distant land.@"

BreezeMailDesc:
	db   "HOPPIP-print MAIL."
	next "(HOLD)@"

LiteBlueMailDesc:
	db   "DRATINI-print"
	next "MAIL. (HOLD)@"

GlitterMailDesc:
	db   "PIKACHU-print"
	next "MAIL. (HOLD)@"

PortraitMailDesc:
	db   "MAIL featuring the"
	next "holder's likeness.@"

LovelyMailDesc:
	db   "Heart-print MAIL."
	next "(HOLD)@"

EonMailDesc:
	db   "EEVEE-print MAIL."
	next "(HOLD)@"

MorphMailDesc:
	db   "DITTO-print MAIL."
	next "(HOLD)@"

BlueSkyMailDesc:
	db   "Sky-print MAIL."
	next "(HOLD)@"

MusicMailDesc:
	db   "NATU-print MAIL."
	next "(HOLD)@"

MirageMailDesc:
	db   "MEW-print MAIL."
	next "(HOLD)@"

WikiBerryDesc:
MagoBerryDesc:
AguavBerryDesc:
IapapaBerryDesc:
FigyBerryDesc:
	db   "A self-restore"
	next "item. (33PC, HOLD)@"

PomegBerryDesc:
	db   "Lowers HP EVs and"
	next "raises friendship.@"

KelpsyBerryDesc:
	db   "Lowers ATK EVs and"
	next "raises friendship.@"

QualotBerryDesc:
	db   "Lowers DEF EVs and"
	next "raises friendship.@"

HondewBerryDesc:
	db   "Lowers SPA EVs and"
	next "raises friendship.@"

GrepaBerryDesc:
	db   "Lowers SPD EVs and"
	next "raises friendship.@"

TamatoBerryDesc:
	db   "Lowers SPE EVs and"
	next "raises friendship.@"

OccaBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive FIRE move.@"

PasshoBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive WATER move.@"

WacanBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive ELECT. move.@"

RindoBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive GRASS move.@"

YacheBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive ICE move.@"

ChopleBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive FIGHT. move.@"

KebiaBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive POISON move.@"

ShucaBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive GROUND move.@"

CobaBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive FLYING move.@"

PayapaBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive PSYCH. move.@"

TangaBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive BUG move.@"

ChartiBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive ROCK move.@"

KasibBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive GHOST move.@"

HabanBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive DRAGON move.@"

ColburBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive DARK move.@"

BabiriBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive STEEL move.@"

ChilanBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive NORMAL move.@"

RoseliBerryDesc:
	db   "1/2 dmg from effe-"
	next "ctive FAIRY move.@"

LiechiBerryDesc:
	db   "Raises ATTACK when"
	next "low HP (HOLD)@"

GanlonBerryDesc:
	db   "Raises DEFENSE"
	next "when low HP (HOLD)@"

SalacBerryDesc:
	db   "Raises SPEED when"
	next "low HP (HOLD)@"

PetayaBerryDesc:
	db   "Raises SP.ATTACK"
	next "when low HP (HOLD)@"

ApicotBerryDesc:
	db   "Raises SP.DEFENSE"
	next "when low HP (HOLD)@"

LansatBerryDesc:
	db   "Raises crit rate"
	next "when low HP (HOLD)@"

StarfBerryDesc:
	db   "Raises random stat"
	next "when low HP (HOLD)@"

KeeBerryDesc:
	db   "Raises DEF if hit"
	next "by physical.@"

MarangaBerryDesc:
	db   "Raises SP.DEF if"
	next "hit by special.@"

EnigmaBerryDesc:
	db   "Restores HP if hit"
	next "super effectively.@"

MicleBerryDesc:
	db   "Raises accuracy if"
	next "low HP next move.@"

CustapBerryDesc:
	db   "Raises priority if"
	next "low HP next move.@"

JabocaBerryDesc:
	db   "Hurts attacker if"
	next "hit by physical.@"

RowapBerryDesc:
	db   "Hurts attacker if"
	next "hit by special.@"

MentalHerbDesc:
EggantBerryDesc:
	db   "A self-cure for"
	next "infatuation.(HOLD)@"

WhiteHerbDesc:
UnyinnBerryDesc:
	db   "Raises a lowered"
	next "stat. (HOLD)@"

RazzBerryDesc:
BlukBerryDesc:
NanabBerryDesc:
WepearBerryDesc:
PinapBerryDesc:
CornnBerryDesc:
MagostBerryDesc:
RabutaBerryDesc:
NomelBerryDesc:
SpelonBerryDesc:
PamtreBerryDesc:
WatmelBerryDesc:
DurinBerryDesc:
BelueBerryDesc:
StribBerryDesc:
TilotaBerryDesc:
NutpeaBerryDesc:
KrauBerryDesc:
LigarcBerryDesc:
TotapoBerryDesc:
	db   "A rare berry."
	next "Sell.@"

PinkanBerryDesc:
	db   "Makes #MON"
	next "turn PINK!@"
	
SafariBallDesc:
	db   "A BALL used in the"
	next "SAFARI ZONE.@"

NetBallDesc:
	db   "A BALL for BUG and"
	next "WATER-types.@"

DiveBallDesc:
	db   "A BALL for #MON"
	next "on ocean floors.@"

NestBallDesc:
	db   "A BALL that works"
	next "on weak #MON.@"

RepeatBallDesc:
	db   "A BALL for #MON"
	next "previously caught.@"

TimerBallDesc:
	db   "More effective as"
	next "battles drag on.@"

LuxuryBallDesc:
	db   "A cozy BALL that"
	next "#MON love.@"

PremierBallDesc:
	db   "A commemorative"
	next "BALL.@"

DuskBallDesc:
	db   "A BALL for #MON"
	next "in dark places.@"

HealBallDesc:
	db   "A BALL that heals"
	next "when caught.@"

QuickBallDesc:
	db   "A BALL best used"
	next "at the start.@"

CherishBallDesc:
	db   "A rare BALL for a"
	next "special occasion.@"

ParkBallDesc:
	db   "A special BALL for"
	next "old friends.@"

DreamBallDesc:
	db   "A BALL for #MON"
	next "that are asleep.@"

BeastBallDesc:
	db   "A BALL with a low"
	next "rate of success.@"

StrangeBallDesc:
	db   "A strange BALL"
	next "lost to time.@"

FeatherBallDesc:
WingBallDesc:
JetBallDesc:
	db   "A BALL for FLYING-"
	next "type #MON.@"

OriginBallDesc:
	db   "A BALL that mimics"
	next "its original.@"

RocketBallDesc:
	db   "A powerful BALL"
	next "that #MON hate.@"
	
ShinyStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

DuskStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

DawnStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

IceStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

BlkAuguriteDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

PeatBlockDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

SweetAppleDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

TartAppleDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

SyrupyAppleDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

GalarCuffDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

GalarWreathDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

HolyArmorDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

CursedArmorDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

ElectirizerDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

MagmarizerDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

ProtectorDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

DubiousDiscDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

OvalStoneDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

PrismScaleDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

ReaperClothDesc:
	db   "Evolves a certain"
	next "kind of #MON.@"

LinkingCordDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"
	
FairyFeatherDesc:
	db   "Powers up FAIRY-"
	next "type moves. (HOLD)@"

QuickPowderDesc:
	db   "Raises SPEED of"
	next "DITTO. (HOLD)@"

EvioliteDesc:
	db   "Boosts defenses of"
	next "unevolved #MON.@"

SoulDewDesc:
	db   "Boosts specials of"
	next "a certain #MON.@"

SootheBellDesc:
	db   "Boosts friendship"
	next "of #MON.@"

MirrorHerbDesc:
	db   "Copy enemy if stat"
	next "increases.(HOLD)@"

PowerHerbDesc:
	db   "Skip charging of a"
	next "attack.(HOLD)@"

FullIncenseDesc:
	db   "Force user to go"
	next "last.(HOLD)@"

LaxIncenseDesc:
	db   "Reduces accuracy"
	next "of foe.(HOLD)@"

MachoBraceDesc:
	db   "Lowers SPEED but"
	next "promotes growth.@"

PowerAnkletDesc:
	db   "Lowers SPEED but"
	next "promotes SPEED.@"

PowerBandDesc:
	db   "Lowers SPEED but"
	next "promotes SP.DEF.@"

PowerBeltDesc:
	db   "Lowers SPEED but"
	next "promotes DEFENSE.@"

PowerBracerDesc:
	db   "Lowers SPEED but"
	next "promotes ATTACK.@"

PowerLensDesc:
	db   "Lowers SPEED but"
	next "promotes SP.ATK.@"

PowerWeightDesc:
	db   "Lowers speed but"
	next "promotes HP.@"

HeartScaleDesc:
	db   "A heart-shaped"
	next "scale. Sell low.@"

BlueShardDesc:
	db   "A tiny blue shard."
	next "Sell low.@"

GreenShardDesc:
	db   "A tiny green"
	next "shard. Sell low.@"

RedShardDesc:
	db   "A tiny red shard."
	next "Sell low.@"

YellowShardDesc:
	db   "A tiny yellow"
	next "shard. Sell low.@"

RareBoneDesc:
	db   "A rare fossil of"
	next "sorts. Sell high.@"

BalmmushroomDesc:
	db   "A very rare mush-"
	next "room. Sell high.@"

BigNuggetDesc:
	db   "Made of pure gold."
	next "Sell very high.@"

CometShardDesc:
	db   "Shard of a comet."
	next "Sell very high.@"

PearlStringDesc:
	db   "Very large pearls."
	next "Sell very high.@"

BeachGlassDesc:
	db   "Round, colored"
	next "glass. Sell.@"

PrettyShellDesc:
	db   "A tropical shell."
	next "Sell high.@"

TinyBambooDesc:
	db   "A small piece of"
	next "bamboo. Sell low.@"

BigBambooDesc:
	db   "A big piece of"
	next "bamboo. Sell.@"
	
SeaMapDesc:
	db   "A map of the"
	next "ORANGE ISLANDS.@"
	
PewterArareDesc:
	db   "PEWTER CITY speci-"
	next "alty. Cure status.@"

SeventhTanghuluDesc:
	db   "A local specialty"
	next "that cures status.@"

LeaderCrestDesc:
	db   "A shard of an old"
	next "blade. Sell.@"
	
SpiderSilkDesc:
	db   "Tough silk that is"
	next "hard to rip. Sell.@"
	
BerryLogDesc:
	db   "Has information on"
	next "various BERRIES.@"
	
ExcelScopeDesc:
	db   "Reveals the unseen"
	next "when prompted.@"

BlockDesc:
	db   "A #BLOCK made"
	next "of BERRIES.@"

AncientPotteryDesc:
	db   "Very old pottery."
	next "Sell high.@"

ClayShardDesc:
	db   "Intricate design."
	next "Sell low.@"

CrystalChunkDesc:
	db   "Crystalline chunk."
	next "Sell high.@"

GemstoneDesc:
	db   "A large jewel."
	next "Sell high.@"

MintDesc:
	db   "A MINT that can"
	next "change NATURE.@"

AbilityUpDesc:
	db   "Changes ABILITY if"
	next "possible.@"

SilverCapDesc:
	db   "A silver bottle"
	next "cap.@"

GoldCapDesc:
	db   "A golden bottle"
	next "cap.@"

GoldDustDesc:
	db   "Fine gold dust."
	next "Sell.@"

GoldStatueDesc:
	db   "Worshipper's idol."
	next "Sell very high.@"

HoneyDesc:
	db   "Can attract wild"
	next "#MON.@"

SweetHoneyDesc:
	db   "Prized for flavor."
	next "Sell high.@"

PinkCureDesc:
	db   "Reverses effect of"
	next "PINKAN BERRY.@"

XEvadeDesc:
	db   "Raises EVASION."
	next "(1 BTL)@"

CandyTruffleDesc:
	db   "A sweet truffle."
	next "Sell low.@"

RocketMailDesc:
	db   "ROCKET-print MAIL."
	next "(HOLD)@"

ZigZagMailDesc:
	db   "ZIGZAGOON-print"
	next "MAIL. (HOLD)@"

GoldMailDesc:
	db   "Expensive MAIL."
	next "(HOLD)@"

ExpCandyXSDesc:
        db   "Grants a tiny"
        next "amount of EXP.@"

ExpCandySDesc:
        db   "Grants a small"
        next "amount of EXP.@"

ExpCandyMDesc:
        db   "Grants a decent"
        next "amount of EXP.@"

ExpCandyLDesc:
        db   "Grants a large"
        next "amount of EXP.@"

ExpCandyXLDesc:
        db   "Grants a huge"
        next "amount of EXP.@"
