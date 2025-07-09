BattleCommand_StartRain:
	ld a, WEATHER_RAIN
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	ld hl, DownpourText
	jmp AnimateCurrentMoveText
