CheckForHiddenItems:
; Checks to see if there are hidden items on the screen that have not yet been found.  If it finds one, returns carry.
	call GetMapScriptsBank
	ld [wCurMapScriptBank], a
; Get the coordinate of the bottom right corner of the screen, and load it in wBottomRightYCoord/wBottomRightXCoord.
	ld a, [wXCoord]
	add SCREEN_WIDTH / 4
	ld [wBottomRightXCoord], a
	ld a, [wYCoord]
	add SCREEN_HEIGHT / 4
	ld [wBottomRightYCoord], a
; Get the pointer for the first bg_event in the map...
	ld hl, wCurMapBGEventsPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
; ... before even checking to see if there are any BG events on this map.
	ld a, [wCurMapBGEventCount]
	and a
	jr z, .nobgeventitems
; For i = 1:wCurMapBGEventCount...
.loop
; Store the counter in wRemainingBGEventCount, and store the bg_event pointer in the stack.
	ld [wRemainingBGEventCount], a
	push hl
; Get the Y coordinate of the BG event.
	call .GetFarByte
	ld e, a
; Is the Y coordinate of the BG event on the screen?  If not, go to the next BG event.
	ld a, [wBottomRightYCoord]
	sub e
	jr c, .next
	cp SCREEN_HEIGHT / 2
	jr nc, .next
; Is the X coordinate of the BG event on the screen?  If not, go to the next BG event.
	call .GetFarByte
	ld d, a
	ld a, [wBottomRightXCoord]
	sub d
	jr c, .next
	cp SCREEN_WIDTH / 2
	jr nc, .next
; Is this BG event a hidden item?  If not, go to the next BG event.
	call .GetFarByte
	cp BGEVENT_ITEM
	jr nz, .next
; Has this item already been found?  If not, set off the Itemfinder.
	ld a, [wCurMapScriptBank]
	call GetFarWord
	ld a, [wCurMapScriptBank]
	call GetFarWord
	ld d, h
	ld e, l
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr z, .itemnearby

.next
; Restore the bg_event pointer and increment it by the length of a bg_event.
	pop hl
	ld bc, BG_EVENT_SIZE
	add hl, bc
; Restore the BG event counter and decrement it.  If it hits zero, there are no hidden items in range.
	ld a, [wRemainingBGEventCount]
	dec a
	jr nz, .loop

.nobgeventitems
	xor a
	ret

.itemnearby
	pop hl
	scf
	ret

.GetFarByte:
	ld a, [wCurMapScriptBank]
	call GetFarByte
	inc hl
	ret
	
RockItemEncounter:
    ld a, [wMapGroup]
	cp GROUP_ALTERING_CAVE
	jr nz, .not_altering_cave
    ld a, [wMapNumber]
    cp MAP_ALTERING_CAVE
    ld hl, .LoadAlteringCaveRockItems
    jr z, .continue
.not_altering_cave
    ld hl, .RockItems
.continue
    call Random
.loop
    sub [hl]
    jr c, .ok
    inc hl
    inc hl
    inc hl
    jr .loop

.ok
    ld a, [hli]
    inc a
    jr z, .done
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call GetItemIDFromIndex
.done
    ld [wScriptVar], a
    ret
    
.LoadAlteringCaveRockItems:
    dbw  1, HUGE_DIAMOND
    dbw  2, MOON_STONE
    dbw 14, STAR_PIECE
    dbw 20, ETHER
    dbw 25, RED_SHARD
    dbw 25, GREEN_SHARD
    dbw 25, BLUE_SHARD
    dbw 25, YELLOW_SHARD
    dbw 51, REVIVE
    dbw 64, STARDUST
    db -1
    
.RockItems:
	dbw  7, MAX_REVIVE
    dbw 14, RARE_BONE
    dbw 21, MAX_ETHER
    dbw 21, HARD_STONE
    dbw 21, SOFT_SAND
    dbw 28, HEART_SCALE
    dbw 28, ETHER
    dbw 35, STARDUST
    dbw 35, BRICK_PIECE
    dbw 42, REVIVE
    db -1
	
FishItemEncounter:
	ld a, [wFishingRodUsed]
	and a
	ld hl, .OldRodItemTable
	jr z, .continue
	dec a
	ld hl, .GoodRodItemTable
	jr z, .continue
	dec a
	ld hl, .SuperRodItemTable
	jr z, .continue
	ld hl, .ItemfinderRodItemTable
.continue
	call Random
.loop
	sub [hl]
	jr c, .ok
	inc hl
	inc hl
	inc hl
	jr .loop

.ok
	ld a, [hli]
	inc a
	jr z, .done
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call GetItemIDFromIndex
.done
    ld [wScriptVar], a
    ret
	
.OldRodItemTable:
	dbw 1, PEARL
	dbw 1, POTION
	dbw 2, POKE_BALL
	dbw 4, POTION
	dbw 6, STARDUST
	dbw 8, POKE_BALL
	dbw 12, EVERSTONE
	dbw 12, POTION
	dbw 24, PEARL
	dbw 48, POKE_BALL
	db -1
	
.GoodRodItemTable:
	dbw 1, STAR_PIECE
	dbw 1, SUPER_POTION
	dbw 2, GREAT_BALL
	dbw 4, SUPER_POTION
	dbw 6, STARDUST
	dbw 8, GREAT_BALL
	dbw 12, SUPER_POTION
	dbw 12, STARDUST
	dbw 24, PEARL
	dbw 48, POKE_BALL
	db -1
	
.SuperRodItemTable:
	dbw 1, RARE_CANDY
	dbw 1, NUGGET
	dbw 2, ULTRA_BALL
	dbw 4, STAR_PIECE
	dbw 6, BIG_PEARL
	dbw 8, GREAT_BALL
	dbw 12, DRAGON_SCALE
	dbw 12, MYSTIC_WATER
	dbw 24, PEARL
	dbw 48, POKE_BALL
	db -1
	
.ItemfinderRodItemTable:
	dbw 1, NUGGET
	dbw 1, STAR_PIECE
	dbw 2, PP_UP
	dbw 4, KINGS_ROCK
	dbw 6, BIG_PEARL
	dbw 8, ULTRA_BALL
	dbw 12, HYPER_POTION
	dbw 12, STARDUST
	dbw 24, PEARL
	dbw 48, BRICK_PIECE
	db -1

TreeItemEncounter:
    ld a, [wMapGroup]
	cp GROUP_MIKAN_ISLAND
	jr nz, .notspecialtree
    ld a, [wMapNumber]
    cp MAP_MIKAN_THICKET
    ld hl, .BambooTreeItems
    jr z, .continue
    cp MAP_MIKAN_ISLAND
    ld hl, .BambooTreeItems
    jr z, .continue
.notspecialtree
	ld hl, .TreeItems
.continue
	call Random
.loop
    sub [hl]
    jr c, .ok
    inc hl
    inc hl
    inc hl
    jr .loop

.ok
    ld a, [hli]
    inc a
    jr z, .done
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call GetItemIDFromIndex
.done
	ld [wScriptVar], a
	ret
	
.TreeItems:
	dbw 1, SPIDER_SILK
	dbw 1, MIRACLE_SEED
	dbw 2, GOLD_LEAF
	dbw 4, SILVER_LEAF
	dbw 8, BLK_APRICORN
	dbw 8, RED_APRICORN
	dbw 8, BLU_APRICORN
	dbw 8, YLW_APRICORN
	dbw 8, GRN_APRICORN
	dbw 8, WHT_APRICORN
	dbw 8, PNK_APRICORN
	db -1
	
.BambooTreeItems:
	dbw 1, SPIDER_SILK
	dbw 1, MIRACLE_SEED
	dbw 2, GOLD_LEAF
	dbw 4, SILVER_LEAF
	dbw 8, BIG_BAMBOO
	dbw 8, TINY_BAMBOO
	dbw 8, BIG_BAMBOO
	dbw 8, TINY_BAMBOO
	dbw 8, TINY_BAMBOO
	dbw 8, BIG_BAMBOO
	dbw 8, TINY_BAMBOO
	db -1