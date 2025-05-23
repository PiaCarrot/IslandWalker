DrawKrisPackGFX:
	ld hl, PackFGFXPointers
	add hl, de
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, vTiles2 tile $50
	lb bc, BANK(PackFGFX), 15
	jmp Request2bpp

PackFGFXPointers:
	dw PackFGFX + (15 tiles) * 1 ; ITEM_POCKET
	dw PackFGFX + (15 tiles) * 3 ; BALL_POCKET
	dw PackFGFX + (15 tiles) * 0 ; KEY_ITEM_POCKET
	dw PackFGFX + (15 tiles) * 4 ; TM_HM_POCKET
	dw PackFGFX + (15 tiles) * 2 ; BERRY_POCKET
	dw PackFGFX + (15 tiles) * 1 ; MEDICINE_POCKET
	dw PackFGFX + (15 tiles) * 1 ; VALUABLE_POCKET

PackFGFX:
INCBIN "gfx/pack/pack_f.2bpp"
