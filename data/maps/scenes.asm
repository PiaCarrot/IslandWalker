MACRO scene_var
; map, variable
	map_id \1
	dw \2
ENDM

MapScenes::
	scene_var POKECENTER_2F,                               wPokecenter2FSceneID
	scene_var TRADE_CENTER,                                wTradeCenterSceneID
	scene_var COLOSSEUM,                                   wColosseumSceneID
	scene_var TIME_CAPSULE,                                wTimeCapsuleSceneID
	scene_var PLAYERS_HOUSE_1F,                            wPlayersHouse1FSceneID
	scene_var IVYS_LAB,                                    wIvysLabSceneID
	scene_var IVYS_LAB_B1,                                 wIvysLabB1SceneID
	scene_var VALENCIA_ISLAND,                             wValenciaIslandSceneID
	scene_var ROUTE_49,              		               wRoute49SceneID
	db -1 ; end
