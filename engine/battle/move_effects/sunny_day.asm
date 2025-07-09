BattleCommand_StartSun:
	ld a, WEATHER_SUN
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	ld hl, SunGotBrightText
	jmp AnimateCurrentMoveText
