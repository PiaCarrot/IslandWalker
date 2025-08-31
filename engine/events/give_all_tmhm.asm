SECTION "Give All TMs and HMs", ROMX
EXPORT GiveAllTMsHMs

GiveAllTMsHMs:
        ld hl, .items
.loop
        ld a, [hli]
        ld e, a
        ld a, [hli]
        ld d, a
        ld a, d
        or e
        ret z
        push hl
        ld a, 1
        ld [wItemQuantityChange], a
        ld a, e
        ld [wCurItem], a
        ld a, d
        ld [wCurItem + 1], a
        ld hl, wNumItems
        call ReceiveItem
        pop hl
        jr .loop

.items
        dw TM_FOCUS_PUNCH
        dw TM_DRAGON_CLAW
        dw TM_WATER_PULSE
        dw TM_CALM_MIND
        dw TM_ROAR
        dw TM_TOXIC
        dw TM_HAIL
        dw TM_BULK_UP
        dw TM_BULLET_SEED
        dw TM_WORK_UP
        dw TM_SUNNY_DAY
        dw TM_TAUNT
        dw TM_ICE_BEAM
        dw TM_BLIZZARD
        dw TM_HYPER_BEAM
        dw TM_LIGHT_SCREEN
        dw TM_PROTECT
        dw TM_RAIN_DANCE
        dw TM_GIGA_DRAIN
        dw TM_SAFEGUARD
        dw TM_DAZZLING_GLEAM
        dw TM_SOLARBEAM
        dw TM_IRON_TAIL
        dw TM_THUNDERBOLT
        dw TM_THUNDER
        dw TM_EARTHQUAKE
        dw TM_LOW_SWEEP
        dw TM_DIG
        dw TM_PSYCHIC_M
        dw TM_SHADOW_BALL
        dw TM_BRICK_BREAK
        dw TM_DOUBLE_TEAM
        dw TM_REFLECT
        dw TM_SHOCK_WAVE
        dw TM_FLAMETHROWER
        dw TM_SLUDGE_BOMB
        dw TM_SANDSTORM
        dw TM_FIRE_BLAST
        dw TM_ROCK_TOMB
        dw TM_AERIAL_ACE
        dw TM_TORMENT
        dw TM_FACADE
        dw TM_VOLT_SWITCH
        dw TM_REST
        dw TM_ATTRACT
        dw TM_THIEF
        dw TM_STEEL_WING
        dw TM_SKILL_SWAP
        dw TM_SCALD
        dw TM_OVERHEAT
        dw TM_ROOST
        dw TM_FOCUS_BLAST
        dw TM_ENERGY_BALL
        dw TM_FALSE_SWIPE
        dw TM_BRINE
        dw TM_FLING
        dw TM_CHARGE_BEAM
        dw TM_ENDURE
        dw TM_DRAGON_PULSE
        dw TM_DRAIN_PUNCH
        dw TM_WILL_O_WISP
        dw TM_BUG_BUZZ
        dw TM_NASTY_PLOT
        dw TM_EXPLOSION
        dw TM_SHADOW_CLAW
        dw TM_PAYBACK
        dw TM_RECYCLE
        dw TM_GIGA_IMPACT
        dw TM_ROCK_POLISH
        dw TM_FLASH
        dw TM_STONE_EDGE
        dw TM_AVALANCHE
        dw TM_THUNDER_WAVE
        dw TM_GYRO_BALL
        dw TM_SWORDS_DANCE
        dw TM_STEALTH_ROCK
        dw TM_PSYCH_UP
        dw TM_SNARL
        dw TM_DARK_PULSE
        dw TM_ROCK_SLIDE
        dw TM_X_SCISSOR
        dw TM_SLEEP_TALK
        dw TM_BULLDOZE
        dw TM_POISON_JAB
        dw TM_DREAM_EATER
        dw TM_GRASS_KNOT
        dw TM_SWAGGER
        dw TM_PLUCK
        dw TM_U_TURN
        dw TM_SUBSTITUTE
        dw TM_FLASH_CANNON
        dw TM_TRICK_ROOM
        dw HM_CUT
        dw HM_FLY
        dw HM_SURF
        dw HM_STRENGTH
        dw HM_ROCK_SMASH
        dw HM_WATERFALL
        dw HM_DIVE
        dw HM_WHIRLPOOL
        dw 0

