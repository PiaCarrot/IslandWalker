        db 0 ; species ID placeholder

        db  90,  65,  65,  15,  40,  40
        evs  1,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
        db 190 ; catch rate
        db 63 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/slowpoke_galar/front.dimensions"
        db GLUTTONY, OWN_TEMPO ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MONSTER, EGG_WATER_1 ; egg groups

        ; tm/hm learnset
        tmhm DIG, ATTRACT, GRASS_KNOT, REST, SCALD, THUNDER_WAVE, LIGHT_SCREEN, BRINE, SLEEP_TALK, ENDURE, FIRE_BLAST, CALM_MIND, IRON_TAIL, SAFEGUARD, AVALANCHE, RAIN_DANCE, PROTECT, SHADOW_BALL, TRICK_ROOM, BULLDOZE, SUNNY_DAY, ICE_BEAM, BLIZZARD, EARTHQUAKE, FLAMETHROWER, SUBSTITUTE, PSYCH_UP, WHIRLPOOL, WATERFALL, PSYCHIC_M, FACADE, WATER_PULSE, HAIL, SKILL_SWAP, DIVE, SURF, STRENGTH
        ; end
