ItemFinder:
	call GetFacingTileCoord
	call GetTilePermission
	cp WATER_TILE
	jr nz, .RegularItemfinderFunction
	ld e, $3
	farcall FishFunction
	jr .end
.RegularItemfinderFunction
	farcall CheckForHiddenItems
	jr c, .found_something
	ld hl, .Script_FoundNothing
	jr .resume

.found_something
	ld hl, .Script_FoundSomething

.resume
	call QueueScript
	ld a, $1
	ld [wItemEffectSucceeded], a
.end
	ret

.ItemfinderSound:
	ld c, 4
.sfx_loop
	push bc
	ld de, SFX_SECOND_PART_OF_ITEMFINDER
	call WaitPlaySFX
	ld de, SFX_TRANSACTION
	call WaitPlaySFX
	pop bc
	dec c
	jr nz, .sfx_loop
	ret

.Script_FoundSomething:
	refreshmap
	special UpdateTimePals
	callasm .ItemfinderSound
	writetext .ItemfinderItemNearbyText
	closetext
	end

.Script_FoundNothing:
	refreshmap
	special UpdateTimePals
	writetext .ItemfinderNopeText
	closetext
	end

.ItemfinderItemNearbyText:
	text_far _ItemfinderItemNearbyText
	text_end

.ItemfinderNopeText:
	text_far _ItemfinderNopeText
	text_end
