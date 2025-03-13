MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4
	landmark  -8, -16, SpecialMapName
	landmark 44, 124, ValenciaIslandName
	landmark 36, 116, Route49Name
	landmark 20, 116, TangeloIslandName
	landmark 11, 112, AlteringCaveName
	landmark 20, 108, Route50Name
	landmark 28, 108, Route51Name
	landmark 24, 108, TangeloJungleName
	landmark 28, 96, Route52Name
	landmark 28, 76, MikanIslandName
	landmark  20,  76, MikanRanchName
	landmark  28, 68, MikanThicketName
	landmark  40, 76, Route53Name
	landmark  44, 68, Route54Name
	landmark  44, 60, MandarinNorthName
	landmark  42, 58, RaticateRadioName
	landmark  44, 84, SunburstIslandName
	landmark  52, 92, CrystalCaveName
	landmark  52, 108, Route55Name
	landmark  68, 108, PinkanIslandName
	landmark  88, 108, Route56Name
	landmark  100, 108, FukuharaNo4Name
	landmark  108, 100, KinnowIslandName
	landmark  116, 108, KinnowShowboatName
	landmark  124, 92, Route57Name
	landmark  124, 72, OvaleIslandName
	landmark  136, 68, Route58Name
	landmark  148, 68, NavelIslandName
	landmark  148, 92, SevenGrapefruitsName
	landmark  148, 100, Route59Name
	landmark  148, 108, MoroIslandName
	landmark  140, 116, Route60Name
	landmark  132, 124, GoldenIslandName
	landmark  132, 132, Route61Name
	landmark  148, 132, MurcottIslandName
	landmark  132, 140, SatsumaIslandName
	landmark  116, 132, MandarinPortName
	landmark  100, 132, Route62Name
	landmark  100, 140, YamberaName
	landmark  92, 132, MandarinDesertName
	landmark  84, 124, TrovitopolisName
	landmark  92, 116, PokeballFactoryName
	landmark  85, 124, CityHallName
	landmark  68, 132, TrovitaIslandName
	landmark  120, 48, CleopatraIslandName
	landmark  140, 36, Route63Name
	landmark  156, 20, AscorbiaIslandName
	landmark  158, 18, InterpolHqName
	landmark  148, 20, HeartScaleCoveName
	landmark  140, 20, Route64Name
	landmark  124, 28, Route65Name
	landmark  120, 16, ButwalIslandName
	landmark  100, 20, Route66Name
	landmark  92, 36, KumquatIslandName
	landmark  68, 36, Route67Name
	landmark  52, 36, RindIslandName
	landmark  44, 36, MillsweetCampName
	landmark  28, 36, Route68Name
	landmark  12, 36, TrifoliateIslandName
	landmark  12, 28, Route69Name
	landmark  12, 20, VictoryRoadOrangeName
	landmark  28, 20, PummeloIslandName
	landmark  26, 18, PummeloStadiumName
	landmark  44, 20, Route70Name
	landmark  56, 20, TarrocoIslandName
	landmark  68, 20, Route71Name
	landmark  68, 16, RaymondsHideoutName
	landmark  84, 16, HamlinIslandName
	landmark  84, 20, HamlinFieldsName
	landmark  84, 60, ShamoutiIslandName
	landmark  76, 60, ShamoutiBayName
	landmark  76, 68, ShamoutiJungleName
	landmark  92, 68, ShamoutiShrineName
	landmark  76, 76, LightningIslandName
	landmark  92, 76, IceIslandName
	landmark  100, 68, FireIslandName
;	landmark  108, 76, FlyingFortressName
	assert_table_length KANTO_LANDMARK
	landmark  52, 108, PalletTownName
	landmark  52,  92, Route1Name
	landmark  52,  76, ViridianCityName
	landmark  52,  64, Route2Name
	landmark  52,  52, PewterCityName
	landmark  64,  52, Route3Name
	landmark  76,  52, MtMoonName
	landmark  88,  52, Route4Name
	landmark 100,  52, CeruleanCityName
	landmark 100,  44, Route24Name
	landmark 108,  36, Route25Name
	landmark 100,  60, Route5Name
	landmark 108,  76, UndergroundName
	landmark 100,  76, Route6Name
	landmark 100,  84, VermilionCityName
	landmark  88,  60, DiglettsCaveName
	landmark  88,  68, Route7Name
	landmark 116,  68, Route8Name
	landmark 116,  52, Route9Name
	landmark 132,  52, RockTunnelName
	landmark 132,  56, Route10Name
	landmark 132,  60, PowerPlantName
	landmark 132,  68, LavenderTownName
	landmark 140,  68, LavRadioTowerName
	landmark  76,  68, CeladonCityName
	landmark 100,  68, SaffronCityName
	landmark 116,  84, Route11Name
	landmark 132,  80, Route12Name
	landmark 124, 100, Route13Name
	landmark 116, 112, Route14Name
	landmark 104, 116, Route15Name
	landmark  68,  68, Route16Name
	landmark  68,  92, Route17Name
	landmark  80, 116, Route18Name
	landmark  92, 116, FuchsiaCityName
	landmark  92, 128, Route19Name
	landmark  76, 132, Route20Name
	landmark  68, 132, SeafoamIslandsName
	landmark  52, 132, CinnabarIslandName
	landmark  52, 120, Route21Name
	landmark  36,  68, Route22Name
	landmark  28,  52, VictoryRoadName
	landmark  28,  44, Route23Name
	landmark  28,  36, IndigoPlateauName
	landmark  28,  92, Route26Name
	landmark  20, 100, Route27Name
	landmark  12, 100, TohjoFallsName
	landmark  20,  68, Route28Name
	landmark 140, 116, FastShipName
	assert_table_length NUM_LANDMARKS
	
ValenciaIslandName:     db "VALENCIA ISLAND@"
Route49Name:     db "ROUTE 49@"
TangeloIslandName:     db "TANGELO ISLAND@"
AlteringCaveName:     db "ALTERING CAVE@"
Route50Name:     db "ROUTE 50@"
Route51Name:     db "ROUTE 51@"
TangeloJungleName:     db "TANGELO JUNGLE@"
Route52Name:     db "ROUTE 52@"
MikanIslandName:     db "MIKAN ISLAND@"
MikanRanchName:     db "MIKAN RANCH@"
MikanThicketName:     db "MIKAN THICKET@"
Route53Name:     db "ROUTE 53@"
Route54Name:     db "ROUTE 54@"
MandarinNorthName:     db "MANDARIN NORTH@"
RaticateRadioName:     db "RATICATE RADIO@"
SunburstIslandName:     db "SUNBURST ISLAND@"
CrystalCaveName:     db "CRYSTAL CAVE@"
Route55Name:     db "ROUTE 55@"
PinkanIslandName:     db "PINKAN ISLAND@"
Route56Name:     db "ROUTE 56@"
FukuharaNo4Name:     db "FUKUHARA NO.4@"
KinnowIslandName:     db "KINNOW ISLAND@"
KinnowShowboatName:     db "KINNOW SHOWBOAT@"
Route57Name:     db "ROUTE 57@"
OvaleIslandName:     db "OVALE ISLAND@"
Route58Name:     db "ROUTE 58@"
NavelIslandName:     db "NAVEL ISLAND@"
SevenGrapefruitsName:     db "SEVEN GRAPEFRUITS@"
Route59Name:     db "ROUTE 59@"
MoroIslandName:     db "MORO ISLAND@"
Route60Name:     db "ROUTE 60@"
GoldenIslandName:     db "GOLDEN ISLAND@"
Route61Name:     db "ROUTE 61@"
MurcottIslandName:     db "MURCOTT ISLAND@"
SatsumaIslandName:     db "SATSUMA ISLAND@"
MandarinPortName:     db "MANDARIN PORT@"
Route62Name:     db "ROUTE 62@"
YamberaName:     db "YAMBERA VILLAGE@"
MandarinDesertName:     db "MANDARIN DESERT@"
TrovitopolisName:     db "TROVITOPOLIS@"
PokeballFactoryName:     db "#BALL FACTORY@"
CityHallName:     db "CITY HALL@"
TrovitaIslandName:     db "TROVITA ISLAND@"
CleopatraIslandName:     db "CLEOPATRA ISLAND@"
Route63Name:     db "ROUTE 63@"
AscorbiaIslandName:     db "ASCORBIA ISLAND@"
InterpolHqName:     db "INTERPOL HQ@"
HeartScaleCoveName:     db "HEART SCALE COVE@"
Route64Name:     db "ROUTE 64@"
Route65Name:     db "ROUTE 65@"
ButwalIslandName:     db "BUTWAL ISLAND@"
Route66Name:     db "ROUTE 66@"
KumquatIslandName:     db "KUMQUAT ISLAND@"
Route67Name:     db "ROUTE 67@"
RindIslandName:     db "RIND ISLAND@"
MillsweetCampName:     db "MILLSWEET CAMP@"
Route68Name:     db "ROUTE 68@"
TrifoliateIslandName:     db "TRIFOLIATE ISLAND@"
Route69Name:     db "ROUTE 69@"
VictoryRoadOrangeName:     db "VICTORY ROAD@"
PummeloIslandName:     db "PUMMELO ISLAND@"
PummeloStadiumName:     db "PUMMELO STADIUM@"
Route70Name:     db "ROUTE 70@"
TarrocoIslandName:     db "TARROCO ISLAND@"
Route71Name:     db "ROUTE 71@"
RaymondsHideoutName:     db "RAYMOND'S HIDEOUT@"
HamlinIslandName:     db "HAMLIN ISLAND@"
HamlinFieldsName:     db "HAMLIN FIELDS@"
ShamoutiIslandName:     db "SHAMOUTI ISLAND@"
ShamoutiBayName:     db "SHAMOUTI BAY@"
ShamoutiJungleName:     db "SHAMOUTI JUNGLE@"
ShamoutiShrineName:     db "SHAMOUTI SHRINE@"
LightningIslandName:     db "LIGHTNING ISLAND@"
IceIslandName:     db "ICE ISLAND@"
FireIslandName:     db "FIRE ISLAND@"
;FlyingFortressName:     db "FLYING FORTRESS@"

NewBarkTownName:     db "NEW BARK<BSP>TOWN@"
CherrygroveCityName: db "CHERRYGROVE<BSP>CITY@"
VioletCityName:      db "VIOLET CITY@"
AzaleaTownName:      db "AZALEA TOWN@"
GoldenrodCityName:   db "GOLDENROD<BSP>CITY@"
EcruteakCityName:    db "ECRUTEAK<BSP>CITY@"
OlivineCityName:     db "OLIVINE<BSP>CITY@"
CianwoodCityName:    db "CIANWOOD<BSP>CITY@"
MahoganyTownName:    db "MAHOGANY<BSP>TOWN@"
BlackthornCityName:  db "BLACKTHORN<BSP>CITY@"
LakeOfRageName:      db "LAKE OF<BSP>RAGE@"
SilverCaveName:      db "SILVER CAVE@"
SproutTowerName:     db "SPROUT<BSP>TOWER@"
RuinsOfAlphName:     db "RUINS<BSP>OF ALPH@"
UnionCaveName:       db "UNION CAVE@"
SlowpokeWellName:    db "SLOWPOKE<BSP>WELL@"
RadioTowerName:      db "RADIO TOWER@"
PowerPlantName:      db "POWER PLANT@"
NationalParkName:    db "NATIONAL<BSP>PARK@"
TinTowerName:        db "TIN TOWER@"
LighthouseName:      db "LIGHTHOUSE@"
WhirlIslandsName:    db "WHIRL<BSP>ISLANDS@"
MtMortarName:        db "MT.MORTAR@"
DragonsDenName:      db "DRAGON'S<BSP>DEN@"
IcePathName:         db "ICE PATH@"
PalletTownName:      db "PALLET TOWN@"
ViridianCityName:    db "VIRIDIAN<BSP>CITY@"
PewterCityName:      db "PEWTER CITY@"
CeruleanCityName:    db "CERULEAN<BSP>CITY@"
LavenderTownName:    db "LAVENDER<BSP>TOWN@"
VermilionCityName:   db "VERMILION<BSP>CITY@"
CeladonCityName:     db "CELADON<BSP>CITY@"
SaffronCityName:     db "SAFFRON<BSP>CITY@"
FuchsiaCityName:     db "FUCHSIA<BSP>CITY@"
CinnabarIslandName:  db "CINNABAR<BSP>ISLAND@"
IndigoPlateauName:   db "INDIGO<BSP>PLATEAU@"
VictoryRoadName:     db "VICTORY<BSP>ROAD@"
MtMoonName:          db "MT.MOON@"
RockTunnelName:      db "ROCK TUNNEL@"
LavRadioTowerName:   db "LAV<BSP>RADIO TOWER@"
SeafoamIslandsName:  db "SEAFOAM<BSP>ISLANDS@"
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "ROUTE 19@"
Route20Name:         db "ROUTE 20@"
Route21Name:         db "ROUTE 21@"
Route22Name:         db "ROUTE 22@"
Route23Name:         db "ROUTE 23@"
Route24Name:         db "ROUTE 24@"
Route25Name:         db "ROUTE 25@"
Route26Name:         db "ROUTE 26@"
Route27Name:         db "ROUTE 27@"
Route28Name:         db "ROUTE 28@"
Route29Name:         db "ROUTE 29@"
Route30Name:         db "ROUTE 30@"
Route31Name:         db "ROUTE 31@"
Route32Name:         db "ROUTE 32@"
Route33Name:         db "ROUTE 33@"
Route34Name:         db "ROUTE 34@"
Route35Name:         db "ROUTE 35@"
Route36Name:         db "ROUTE 36@"
Route37Name:         db "ROUTE 37@"
Route38Name:         db "ROUTE 38@"
Route39Name:         db "ROUTE 39@"
Route40Name:         db "ROUTE 40@"
Route41Name:         db "ROUTE 41@"
Route42Name:         db "ROUTE 42@"
Route43Name:         db "ROUTE 43@"
Route44Name:         db "ROUTE 44@"
Route45Name:         db "ROUTE 45@"
Route46Name:         db "ROUTE 46@"
DarkCaveName:        db "DARK CAVE@"
IlexForestName:      db "ILEX<BSP>FOREST@"
BurnedTowerName:     db "BURNED<BSP>TOWER@"
FastShipName:        db "FAST SHIP@"
DiglettsCaveName:    db "DIGLETT'S<BSP>CAVE@"
TohjoFallsName:      db "TOHJO FALLS@"
UndergroundName:     db "UNDERGROUND@"
BattleTowerName:     db "BATTLE<BSP>TOWER@"
SpecialMapName:      db "SPECIAL@"
