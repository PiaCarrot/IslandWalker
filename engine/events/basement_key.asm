_BasementKey:
; Are we even in the right map to use this?
	ld a, [wMapGroup]
	cp GROUP_NONE
	jr nz, .nope

	ld a, [wMapNumber]
	cp MAP_NONE
	jr nz, .nope
; Are we on the tile in front of the door?
	call GetFacingTileCoord
	ld a, d
	cp 22
	jr nz, .nope
	ld a, e
	cp 10
	jr nz, .nope
; Let's use the Basement Key
	ld hl, .BasementKeyScript
	call QueueScript
	ld a, TRUE
	ld [wItemEffectSucceeded], a
	ret

.nope
	xor a ; FALSE
	ld [wItemEffectSucceeded], a
	ret

.BasementKeyScript:
	closetext
;	farsjump BasementDoorScript
