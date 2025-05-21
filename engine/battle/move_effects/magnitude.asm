BattleCommand_GetMagnitude:
	push bc
	call BattleRandom
	ld b, a
	ld hl, MagnitudePower
.loop
	ld a, [hli]
	cp b
	jr nc, .ok
	inc hl
	inc hl
	jr .loop

.ok
	ld d, [hl]
	push de
	inc hl
	ld a, [hl]
	ld [wTextDecimalByte], a
	ld hl, MagnitudeText
	farcall DelayedMoveText
	pop de
	pop bc
	ret

INCLUDE "data/moves/magnitude_power.asm"
