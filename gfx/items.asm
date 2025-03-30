UpdateItemIconAndDescription::
	farcall UpdateItemDescription
	ld hl, ItemIconPointers
	ld a, [wCurSpecies]
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, vTiles2 tile $1f
	lb bc, BANK(NoItemIcon), $9
	call DecompressRequest2bpp
	farcall LoadItemIconPalette
	call SetDefaultBGPAndOBP
	call WaitBGMap
	ret
	
ItemIconPointers:
    dw NoItemIcon ; NO ITEM
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