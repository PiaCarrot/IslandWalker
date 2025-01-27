MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4, Landmarks
	landmark  -8, -16, SpecialMapName
	landmark 42, 122, ValenciaIslandName
	landmark 34, 120, Route49Name
	landmark 17, 114, TangeloIslandName
	landmark 11, 112, AlteringCaveName
	landmark 18, 107, Route50Name
	landmark 23, 106, Route51Name
	landmark 17, 103, TangeloJungleName
	landmark 18, 94, Route52Name
	landmark 17, 74, MikanIslandName
	landmark  76,  76, MikanRanchName
	landmark  84, 124, MikanThicketName
	landmark  82, 124, Route53Name
	landmark  82, 124, Route54Name
	landmark  68, 124, MandarinNorthName
	landmark  70, 122, RaticateRadioName
	landmark  52, 120, SunburstIslandName
	landmark  52, 112, CrystalCaveName
	landmark  52, 112, Route55Name
	landmark  52, 112, PinkanIslandName
	landmark  52, 112, Route56Name
	landmark  52, 112, FukuharaNo4Name
	landmark  52, 112, KinnowIslandName
	landmark  52, 112, Route57Name
	landmark  52, 112, OvaleIslandName
	landmark  52, 112, Route58Name
	landmark  52, 112, NavelIslandName
	landmark  52, 112, SevenGrapefruitsName
	landmark  52, 112, Route59Name
	landmark  52, 112, MoroIslandName
	landmark  52, 112, Route60Name
	landmark  52, 112, GoldenIslandName
	landmark  52, 112, Route61Name
	landmark  52, 112, MurcottIslandName
	landmark  52, 112, SatsumaIslandName
	landmark  52, 112, MandarinPortName
	landmark  52, 112, Route62Name
	landmark  52, 112, YamberaName
	landmark  52, 112, MandarinDesertName
	landmark  52, 112, TrovitopolisName
	landmark  52, 112, PokeballFactoryName
	landmark  52, 112, CityHallName
	landmark  52, 112, TrovitaIslandName
	landmark  52, 112, CleopatraIslandName
	landmark  52, 112, Route63Name
	landmark  52, 112, AscorbiaIslandName
	landmark  52, 112, InterpolHqName
	landmark  52, 112, HeartScaleCoveName
	landmark  52, 112, Route64Name
	landmark  52, 112, Route65Name
	landmark  52, 112, ButwalIslandName
	landmark  52, 112, Route66Name
	landmark  52, 112, KumquatIslandName
	landmark  52, 112, Route67Name
	landmark  52, 112, RindIslandName
	landmark  52, 112, MillsweetCampName
	landmark  52, 112, Route68Name
	landmark  52, 112, TrifoliateIslandName
	landmark  52, 112, Route69Name
	landmark  52, 112, VictoryRoadOrangeName
	landmark  52, 112, PummeloIslandName
	landmark  52, 112, PummeloStadiumName
	landmark  52, 112, Route70Name
	landmark  52, 112, TarrocoIslandName
	landmark  52, 112, Route71Name
	landmark  52, 112, RaymondsHideoutName
	landmark  52, 112, HamlinIslandName
	landmark  52, 112, HamlinFieldsName
	landmark  52, 112, ShamoutiIslandName
	landmark  52, 112, ShamoutiBayName
	landmark  52, 112, ShamoutiJungleName
	landmark  52, 112, ShamoutiShrineName
	landmark  52, 112, LightningIslandName
	landmark  52, 112, IceIslandName
	landmark  52, 112, FireIslandName
;	landmark  52, 112, FlyingFortressName
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
Route55Name:     db "@"
PinkanIslandName:     db "@"
Route56Name:     db "@"
FukuharaNo4Name:     db "@"
KinnowIslandName:     db "@"
Route57Name:     db "@"
OvaleIslandName:     db "@"
Route58Name:     db "@"
NavelIslandName:     db "@"
SevenGrapefruitsName:     db "@"
Route59Name:     db "@"
MoroIslandName:     db "@"
Route60Name:     db "@"
GoldenIslandName:     db "@"
Route61Name:     db "@"
MurcottIslandName:     db "@"
SatsumaIslandName:     db "@"
MandarinPortName:     db "@"
Route62Name:     db "@"
YamberaName:     db "@"
MandarinDesertName:     db "@"
TrovitopolisName:     db "@"
PokeballFactoryName:     db "@"
CityHallName:     db "@"
TrovitaIslandName:     db "@"
CleopatraIslandName:     db "@"
Route63Name:     db "@"
AscorbiaIslandName:     db "@"
InterpolHqName:     db "@"
HeartScaleCoveName:     db "@"
Route64Name:     db "@"
Route65Name:     db "@"
ButwalIslandName:     db "@"
Route66Name:     db "@"
KumquatIslandName:     db "@"
Route67Name:     db "@"
RindIslandName:     db "@"
MillsweetCampName:     db "MILLSWEET CAMP@"
Route68Name:     db "ROUTE 68@"
TrifoliateIslandName:     db "@"
Route69Name:     db "@"
VictoryRoadOrangeName:     db "@"
PummeloIslandName:     db "@"
PummeloStadiumName:     db "@"
Route70Name:     db "@"
TarrocoIslandName:     db "@"
Route71Name:     db "@"
RaymondsHideoutName:     db "@"
HamlinIslandName:     db "@"
HamlinFieldsName:     db "@"
ShamoutiIslandName:     db "@"
ShamoutiBayName:     db "@"
ShamoutiJungleName:     db "@"
ShamoutiShrineName:     db "@"
LightningIslandName:     db "@"
IceIslandName:     db "@"
FireIslandName:     db "@"
;FlyingFortressName:     db "@"

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
