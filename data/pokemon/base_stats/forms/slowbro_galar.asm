        db 0 ; species ID placeholder

        db  95, 100,  95,  30, 100,  70
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db POISON, PSYCHIC_TYPE ; type
        db 75 ; catch rate
        db 172 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/slowbro_galar/front.dimensions"
        db QUICK_DRAW, OWN_TEMPO ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MONSTER, EGG_WATER_1 ; egg groups

        ; tm/hm learnset
        tmhm GRASS_KNOT, SANDSTORM, THUNDER_WAVE, PROTECT, BULLDOZE, FLING, FOCUS_BLAST, PSYCHIC_M, HAIL, SCALD, ENDURE, BRICK_BREAK, TOXIC, AVALANCHE, RAIN_DANCE, GIGA_IMPACT, NASTY_PLOT, EARTHQUAKE, WHIRLPOOL, PSYCH_UP, WATERFALL, DRAIN_PUNCH, POISON_JAB, SKILL_SWAP, SURF, STRENGTH, ROCK_SMASH, DIG, ATTRACT, CALM_MIND, SAFEGUARD, SHADOW_BALL, TRICK_ROOM, SUNNY_DAY, ICE_BEAM, BLIZZARD, SUBSTITUTE, SLUDGE_BOMB, WATER_PULSE, DIVE, REST, HYPER_BEAM, LIGHT_SCREEN, BRINE, SLEEP_TALK, FIRE_BLAST, IRON_TAIL, FLAMETHROWER, FACADE
        ; end
