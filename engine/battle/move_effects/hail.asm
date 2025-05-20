BattleCommand_StartHail:
	ld a, [wBattleWeather]
	cp WEATHER_HAIL
	jmp z, AnimateFailedMove

	ld a, WEATHER_HAIL
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	ld hl, ItStartedToHailText
	jr AnimateCurrentMoveText