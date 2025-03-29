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
    ld hl, .LoadSpecialRockItems
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
    
.RockItems:
    dbw 1, MAX_REVIVE
    dbw 2, THICK_CLUB
    dbw 4, NUGGET
    dbw 6, STAR_PIECE
    dbw 12, BIG_PEARL
    dbw 18, ETHER
    dbw 24, HARD_STONE
    dbw 24, SOFT_SAND
    dbw 48, PEARL
    dbw 64, BRICK_PIECE
    db -1
    
.LoadSpecialRockItems:
    dbw 1, RARE_CANDY
    dbw 2, POTION ;SHINY_STONE
    dbw 4, POTION ;DAWN_STONE
    dbw 6, POTION ;DUSK_STONE
    dbw 12, THUNDERSTONE
    dbw 18, LEAF_STONE
    dbw 24, WATER_STONE
    dbw 24, FIRE_STONE
    dbw 48, SUN_STONE
    dbw 64, MOON_STONE
    db -1
	
FishItemEncounter:
	ld a, [wFishingRodUsed]
	cp $0
	jr z, .OldRodItems
	cp $1
	jr z, .GoodRodItems
	cp $2
	jr z, .SuperRodItems
	cp $3
	jr z, .ItemfinderRodItems
.OldRodItems
	ld hl, .OldRodItemTable
	jr .continue
.GoodRodItems
	ld hl, .GoodRodItemTable
	jr .continue
.SuperRodItems
	ld hl, .SuperRodItemTable
	jr .continue
.ItemfinderRodItems
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
	cp MAP_MIKAN_ISLAND
	jr z, .checkmikanmaps
	jr .notspecialtree
.checkmikanmaps
	ld a, [wMapNumber]
	cp MAP_MIKAN_ISLAND
	jr z, .bambootrees
	cp MAP_MIKAN_THICKET
	jr z, .bambootrees
.notspecialtree
	ld hl, .TreeItems
	jr .continue
.bambootrees
	ld hl, .BambooTreeItems
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
	dbw 16, BLK_APRICORN
	dbw 16, RED_APRICORN
	dbw 16, BLU_APRICORN
	dbw 16, YLW_APRICORN
	dbw 16, GRN_APRICORN
	dbw 16, WHT_APRICORN
	dbw 16, PNK_APRICORN
	db -1
	
.BambooTreeItems:
	dbw 1, LARGE_JADE
	dbw 1, BIG_BAMBOO
	dbw 2, SPIDER_SILK
	dbw 4, BIG_BAMBOO
	dbw 6, SPIDER_SILK
	dbw 8, BIG_BAMBOO
	dbw 12, TINY_BAMBOO
	dbw 12, SPIDER_SILK
	dbw 24, TINY_BAMBOO
	dbw 48, TINY_BAMBOO
	db -1