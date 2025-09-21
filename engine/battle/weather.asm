BattleWeather_PlayAnimation:
	call SetPlayerTurn
BattleWeatherAbilitySkip:
	xor a ; uses one byte of ROM, compared to two for "ld a, 1"
	ld [wBattleAfterAnim], a
	ld hl, BattleWeather_Animations
	ld a, [wBattleWeather]
	dec a
	ld b, 0
	ld c, a
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld e, a
	ld d, [hl]
	xcall Call_PlayBattleAnim
	ret

BattleWeather_Animations:
	dw RAIN_DANCE
	dw SUNNY_DAY
	dw SANDSTORM
	dw HAIL

BattleWeather_PrintMessage:
	ld a, [wBattleWeather]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jmp StdBattleTextbox

BattleWeather_Messages:
; entries correspond to WEATHER_* constants
        dw BattleText_RainContinuesToFall
        dw BattleText_TheSunlightIsStrong
        dw BattleText_TheSandstormRages
        dw BattleText_HailContinuesToFall

BattleWeather_EndedMessages:
; entries correspond to WEATHER_* constants
        dw BattleText_TheRainStopped
        dw BattleText_TheSunlightFaded
        dw BattleText_TheSandstormSubsided
        dw BattleText_TheHailStopped

