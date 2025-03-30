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
    dw NoItemIcon
    dw BrightpowderIcon
    dw NoItemIcon
    dw MoonStoneIcon
    dw EscapeRopeIcon
    dw RepelIcon
    dw FireStoneIcon
    dw ThunderStoneIcon
    dw WaterStoneIcon
    dw NoItemIcon
    dw LuckyPunchIcon
    dw XAccuracyIcon
    dw LeafStoneIcon
    dw BrightpowderIcon
    dw PokeDollIcon
    dw XAccuracyIcon
    dw RepelIcon
    dw RepelIcon
    dw XAccuracyIcon
    dw NoItemIcon
    dw XAccuracyIcon
    dw NoItemIcon
    dw XAccuracyIcon
    dw XAccuracyIcon
    dw XAccuracyIcon
    dw NoItemIcon
    dw ExpShareIcon
    dw QuickClawIcon
    dw BrightpowderIcon
    dw SharpBeakIcon
    dw PoisonBarbIcon
    dw KingsRockIcon
    dw SilverPowderIcon
    dw NoItemIcon
    dw AmuletCoinIcon
    dw CleanseTagIcon
    dw MysticWaterIcon
    dw TwistedSpoonIcon
    dw BlackbeltIcon
    dw NoItemIcon
    dw BlackGlassesIcon
    dw PinkBowIcon
    dw StickIcon
    dw SmokeBallIcon
    dw NeverMeltIceIcon
    dw MagnetIcon
    dw EverStoneIcon
    dw SpellTagIcon
    dw MiracleSeedIcon
    dw ThickClubIcon
    dw FocusBandIcon
    dw NoItemIcon
    dw HardStoneIcon
    dw LuckyEggIcon
    dw NoItemIcon
    dw NoItemIcon
    dw CharcoalIcon
    dw ScopeLensIcon
    dw NoItemIcon
    dw NoItemIcon
    dw MetalCoatIcon
    dw DragonFangIcon
    dw NoItemIcon
    dw LeftoversIcon
    dw NoItemIcon
    dw NoItemIcon
    dw NoItemIcon
    dw DragonScaleIcon
    dw BerserkGeneIcon
    dw NoItemIcon
    dw NoItemIcon
    dw NoItemIcon
    dw MailIcon
    dw NoItemIcon
    dw MailIcon
    dw GorgeousBoxIcon
    dw GorgeousBoxIcon
    dw SunStoneIcon
    dw PolkadotBowIcon
    dw NoItemIcon
    dw UpGradeIcon
    dw NoItemIcon
    dw NoItemIcon
    dw MailIcon
    dw MailIcon
    dw MailIcon
    dw MailIcon
    dw MailIcon
    dw MailIcon
    dw MailIcon
    dw MailIcon
    dw MailIcon
    dw NoItemIcon
    dw NoItemIcon
    dw NoItemIcon
    dw NoItemIcon
    dw ShinyStoneIcon
    dw DuskStoneIcon
    dw DawnStoneIcon
    dw IceStoneIcon
    dw BlkAuguriteIcon
    dw PeatBlockIcon
    dw SweetAppleIcon
    dw SweetAppleIcon
    dw SweetAppleIcon
    dw GalarCuffIcon
    dw GalarWreathIcon
    dw HolyArmorIcon
    dw CursedArmorIcon
    dw ElectirizerIcon
    dw MagmarizerIcon
    dw ProtectorIcon
    dw DubiousDiscIcon
    dw OvalStoneIcon
    dw PrismScaleIcon
    dw RazorClawIcon
    dw RazorFangIcon
    dw ReaperClothIcon
    dw LinkingCordIcon
    dw FairyFeatherIcon
    dw BrightpowderIcon
    dw EvioliteIcon
    dw SoulDewIcon
    dw SootheBellIcon
    dw MirrorHerbIcon
    dw HerbIcon
    dw HerbIcon
    dw HerbIcon
    dw FullIncenseIcon
    dw LaxIncenseIcon
    dw LuckIncenseIcon
    dw OddIncenseIcon
    dw PureIncenseIcon
    dw RockIncenseIcon
    dw RoseIncenseIcon
    dw SeaIncenseIcon
    dw WaveIncenseIcon
    dw MachoBraceIcon
    dw PowerAnkletIcon
    dw PowerBandIcon
    dw PowerBeltIcon
    dw PowerBracerIcon
    dw PowerLensIcon
    dw PowerWeightIcon
    dw XAccuracyIcon
    dw LeaderCrestIcon
    dw BlockIcon
    dw BlockIcon
    dw BlockIcon
    dw BlockIcon
    dw BlockIcon
    dw BlockIcon
    dw LightBallIcon
    dw XAccuracyIcon

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