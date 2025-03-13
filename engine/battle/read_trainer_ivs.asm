GetTrainerIVs:
; Return the IVs of wOtherTrainerClass in bc

	push hl
	ld a, [wOtherTrainerClass]
	dec a
	ld c, a
	ld b, 0

	ld hl, TrainerClassIVs
	add hl, bc
	add hl, bc
	add hl, bc
	add hl, bc

	ld bc, wTempIVs
	push bc
	ld a, [hli]
	ld [bc], a
	inc bc
	ld a, [hli]
	ld [bc], a
	inc bc
	ld a, [hli]
	ld [bc], a
	inc bc
	ld a, [hl]
	ld [bc], a
	pop bc

	pop hl
	ret

INCLUDE "data/trainers/ivs.asm"
