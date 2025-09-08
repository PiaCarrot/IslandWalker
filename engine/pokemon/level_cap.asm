UpdateLevelCap::
        ld a, [wOptions2]
        bit LEVEL_LIMITS, a
        jr z, .no_limits
        ld hl, wBadges
        ld b, 2
        call CountSetBits
        ld c, a
        ld b, 0
        ld hl, LevelCapBadgeTable
        add hl, bc
        ld a, [hl]
        ld [wLevelCap], a
        ret
.no_limits
        ld a, MAX_LEVEL
        ld [wLevelCap], a
        ret

LevelCapBadgeTable:
        ; caps for 0-12 badges
        db 18,33
        db 100,100,100,100,100,100,100,100,100,100,100
