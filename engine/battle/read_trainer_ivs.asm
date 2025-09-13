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

	; If Challenge Mode is enabled, override IVs to 31 in every stat
	ld a, [wOptions2]
	bit CHALLENGE_MODE, a
	jr z, .done

	ld hl, wTempIVs
	ld a, $7f ; Atk/Speed IVs = 31
	ld [hli], a
	ld a, $ff ; Def/Spd IVs = 31
	ld [hli], a
	ld a, $7f ; Sp.Atk/HP IVs = 31
	ld [hli], a
	ld a, $ff ; Sp.Def/HP IVs = 31
	ld [hl], a

.done
	pop hl
	ret

INCLUDE "data/trainers/ivs.asm"
