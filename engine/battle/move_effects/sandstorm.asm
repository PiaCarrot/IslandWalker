BattleCommand_StartSandstorm:
	ld a, [wBattleWeather]
	cp WEATHER_SANDSTORM
	jmp z, BattleEffect_ButItFailed

	ld a, WEATHER_SANDSTORM
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	ld hl, SandstormBrewedText
	jmp AnimateCurrentMoveText
