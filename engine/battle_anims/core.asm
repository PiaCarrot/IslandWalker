QueueBattleAnimation:
	ld hl, wActiveAnimObjects
	ld e, NUM_BATTLE_ANIM_STRUCTS
.loop
	ld a, [hl]
	and a
	jr z, .done
	ld bc, BATTLEANIMSTRUCT_LENGTH
	add hl, bc
	dec e
	jr nz, .loop
	scf
	ret

.done
	ld c, l
	ld b, h
	ld hl, wLastAnimObjectIndex
	inc [hl]
; InitBattleAnimation:
	ld hl, wBattleObjectTempID
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, BattleAnimObjects
rept BATTLEANIMOBJ_LENGTH
	add hl, de
endr
	ld e, l
	ld d, h
	ld hl, BATTLEANIMSTRUCT_INDEX
	add hl, bc
	ld a, [wLastAnimObjectIndex]
	ld [hli], a ; BATTLEANIMSTRUCT_INDEX
	ld a, [de]
	inc de
	ld [hli], a ; BATTLEANIMSTRUCT_OAMFLAGS
	ld a, [de]
	inc de
	ld [hli], a ; BATTLEANIMSTRUCT_FIX_Y
	ld a, [de]
	inc de
	ld [hli], a ; BATTLEANIMSTRUCT_FRAMESET_ID
	ld a, [de]
	inc de
	ld [hli], a ; BATTLEANIMSTRUCT_FRAMESET_ID + 1
	ld a, [de]
	inc de
	ld [hli], a ; BATTLEANIMSTRUCT_FUNCTION
	ld a, [de]
	inc de
	ld [hli], a ; BATTLEANIMSTRUCT_PALETTE
	ld a, [de]
	call GetBattleAnimTileOffset
	ld [hli], a ; BATTLEANIMSTRUCT_TILEID
	ld a, [wBattleObjectTempXCoord]
	ld [hli], a ; BATTLEANIMSTRUCT_XCOORD
	ld a, [wBattleObjectTempYCoord]
	ld [hli], a ; BATTLEANIMSTRUCT_YCOORD
	xor a
	ld [hli], a ; BATTLEANIMSTRUCT_XOFFSET
	ld [hli], a ; BATTLEANIMSTRUCT_YOFFSET
	ld a, [wBattleObjectTempParam]
	ld [hli], a ; BATTLEANIMSTRUCT_PARAM
	xor a
	ld [hli], a ; BATTLEANIMSTRUCT_DURATION
	dec a
	ld [hli], a ; BATTLEANIMSTRUCT_FRAME
	xor a
	ld [hli], a ; BATTLEANIMSTRUCT_JUMPTABLE_INDEX
	ld [hli], a ; BATTLEANIMSTRUCT_VAR1
	ld [hl], a  ; BATTLEANIMSTRUCT_VAR2
	ret

GetBattleAnimTileOffset:
	push hl
	push bc
	ld hl, wBattleAnimTileDict
	ld b, a
	ld c, NUM_BATTLEANIMTILEDICT_ENTRIES
.loop
	ld a, [hli]
	cp b
	jr z, .load
	inc hl
	dec c
	jr nz, .loop
	xor a
	jr .done

.load
	ld a, [hl]
.done
	pop bc
	pop hl
	ret
