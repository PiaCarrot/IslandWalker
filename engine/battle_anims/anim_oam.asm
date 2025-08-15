BattleAnimOAMUpdate:
	call InitBattleAnimBuffer
	farcall GetBattleAnimFrame
	ld a, h
	cp HIGH(battleoamwait_command)
	jmp z, .done
	cp HIGH(battleoamdelete_command)
	jmp z, .delete

    push hl
	ld hl, wBattleAnimTempOAMFlags
	ld a, [wBattleAnimTempFrameOAMFlags]
	xor [hl]
	and OAM_PRIO | OAM_YFLIP | OAM_XFLIP
	ld [hl], a
    pop hl

	push bc
	call GetBattleAnimOAMPointer
	ld a, [wBattleAnimTempTileID]
	add [hl] ; tile offset
	ld [wBattleAnimTempTileID], a
	inc hl
	ld a, [hli] ; oam data length
	ld c, a
	ld a, [hli] ; oam data pointer
	ld h, [hl]
	ld l, a
	ld a, [wBattleAnimOAMPointerLo]
	ld e, a
	ld d, HIGH(wShadowOAM)

.loop
	; Y Coord
	ld a, [wBattleAnimTempYCoord]
	ld b, a
	ld a, [wBattleAnimTempYOffset]
	add b
	ld b, a
	push hl
	ld a, [hl]
	ld hl, wBattleAnimTempOAMFlags
	bit B_OAM_YFLIP, [hl]
	jr z, .no_yflip
	add $8
	cpl
	inc a
.no_yflip
	pop hl
	add b
	ld [de], a

	; X Coord
	inc hl
	inc de
	ld a, [wBattleAnimTempXCoord]
	ld b, a
	ld a, [wBattleAnimTempXOffset]
	add b
	ld b, a
	push hl
	ld a, [hl]
	ld hl, wBattleAnimTempOAMFlags
	bit B_OAM_XFLIP, [hl]
	jr z, .no_xflip
	add $8
	cpl
	inc a
.no_xflip
	pop hl
	add b
	ld [de], a

	; Tile ID
	inc hl
	inc de
	ld a, [wBattleAnimTempTileID]
	add BATTLEANIM_BASE_TILE
	add [hl]
	ld [de], a

	; Attributes
	inc hl
	inc de
	ld a, [wBattleAnimTempOAMFlags]
	ld b, a
	ld a, [hl]
	xor b
	and OAM_PRIO | OAM_YFLIP | OAM_XFLIP
	ld b, a
	ld a, [hl]
	and OAM_PAL1
	or b
	ld b, a
	ld a, [wBattleAnimTempPalette]
	and OAM_PALETTE | OAM_BANK1
	or b
	ld [de], a

	inc hl
	inc de
	ld a, e
	ld [wBattleAnimOAMPointerLo], a
	cp LOW(wShadowOAMEnd)
	jr nc, .exit_set_carry
	dec c
	jr nz, .loop
	pop bc
	jr .done

.delete
	call DeinitBattleAnimation

.done
	and a
	ret

.exit_set_carry
	pop bc
	scf
	ret

GetBattleAnimOAMPointer:
	ld de, BattleAnimOAMData
	add hl, hl
	add hl, hl
	add hl, de
	ret

InitBattleAnimBuffer:
	ld hl, BATTLEANIMSTRUCT_OAMFLAGS
	add hl, bc
	ld a, [hl]

	and OAM_PRIO
	ld [wBattleAnimTempOAMFlags], a
	xor a
	ld [wBattleAnimTempFrameOAMFlags], a
	ld hl, BATTLEANIMSTRUCT_PALETTE
	add hl, bc
	ld a, [hl]
	ld [wBattleAnimTempPalette], a
	ld hl, BATTLEANIMSTRUCT_FIX_Y
	add hl, bc
	ld a, [hl]
	ld [wBattleAnimTempFixY], a
	ld hl, BATTLEANIMSTRUCT_TILEID
	add hl, bc
	ld a, [hli]
	ld [wBattleAnimTempTileID], a
	ld a, [hli]
	ld [wBattleAnimTempXCoord], a
	ld a, [hli]
	ld [wBattleAnimTempYCoord], a
	ld a, [hli]
	ld [wBattleAnimTempXOffset], a
	ld a, [hli]
	ld [wBattleAnimTempYOffset], a

	ldh a, [hBattleTurn]
	and a
	ret z

	ld hl, BATTLEANIMSTRUCT_OAMFLAGS
	add hl, bc
	ld a, [hl]
	ld [wBattleAnimTempOAMFlags], a
	bit BATTLEANIMSTRUCT_OAMFLAGS_FIX_COORDS_F, [hl]
	ret z

	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld a, [hli]
	cpl
	add (-10 * TILE_WIDTH) + 4 + 1
	ld [wBattleAnimTempXCoord], a
	ld a, [hli]
	ld d, a
	ld a, [wBattleAnimTempFixY]
	cp $ff
	jr nz, .vertical_flip
	ld a, 5 * TILE_WIDTH
	jr .done

.vertical_flip
	sub d
	push af
	push hl
	push bc
	ld hl, wFXAnimID
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld de, 2
	ld hl, .extra_offset_moves
	call IsInWordArray
	pop bc
	pop hl
	pop de
	sbc a
	and -(1 * TILE_WIDTH)
.done
	add d
	ld [wBattleAnimTempYCoord], a
	ld a, [hli]
	cpl
	inc a
	ld [wBattleAnimTempXOffset], a
	ret

.extra_offset_moves
	dw KINESIS
	dw SOFTBOILED
	dw MILK_DRINK
	dw -1
