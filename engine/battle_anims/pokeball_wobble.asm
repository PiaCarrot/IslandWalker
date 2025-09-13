GetPokeBallWobble:
; Returns whether a Poke Ball will wobble in the catch animation.
; Whether a Pokemon is caught is determined beforehand.

        ld a, BANK(wThrownBallWobbleCount) ; aka BANK(wFinalCatchRate)
        call StackCallInWRAMBankA
.Function:
        ld a, [wCriticalCapture]
        and a
        jr z, .normal
        ld a, [wThrownBallWobbleCount]
        and a
        jr nz, .crit_second

        ld a, 1
        ld [wThrownBallWobbleCount], a
        ld c, 0
        ret

.crit_second
        xor a
        ld [wCriticalCapture], a
        ld hl, WobbleProbabilities
        ld a, [wFinalCatchRate]
        inc a
        jr z, .crit_ok
        dec a
        ld b, a
.crit_loop
        ld a, [hli]
        cp b
        jr z, .crit_check
        jr nc, .crit_use_prev
        inc hl
        jr .crit_loop
.crit_use_prev
        dec hl
        dec hl
.crit_check
        ld b, [hl]
        call Random
        cp b
        jr nc, .crit_fail
.crit_ok
        ld a, 4
        ld [wThrownBallWobbleCount], a
        ld c, 1
        ret
.crit_fail
        ld a, 1
        ld [wThrownBallWobbleCount], a
        ld c, 2
        ret

.normal
; Wobble up to 3 times.
        ld hl, WobbleProbabilities
        ld a, [wFinalCatchRate]

	; If a is 255, always capture
	inc a
	jr z, .ok
	dec a
	ld b, a
.loop
	ld a, [hli]
	cp b
	jr z, .checkwobble
	jr nc, .use_previous
	inc hl
	jr .loop

.use_previous
	dec hl
	dec hl

.checkwobble
	ld b, [hl]
	call Random
	cp b
	ld c, 2 ; escaped
	ret nc

.ok
	; Check how many wobbles we've done so far. If this would've been our 4th,
	; we've successfully caught the Pokémon.
	ld c, 0 ; shake
	ld a, [wThrownBallWobbleCount]
	inc a ; no-optimize Inefficient WRAM increment/decrement needed in reg a
	ld [wThrownBallWobbleCount], a
	cp 4
	ret c
	inc c ; captured
	ret

INCLUDE "data/battle/wobble_probabilities.asm"
