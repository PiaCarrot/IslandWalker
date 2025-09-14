        db 0 ; species ID placeholder

        db  50,  65,  65, 100,  90,  90
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db ICE, PSYCHIC_TYPE ; type
        db 45 ; catch rate
        db 161 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 25 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/mr__mime_galar/front.dimensions"
        db VITAL_SPIRIT, SCREEN_CLEANER ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

        ; tm/hm learnset
	tmhm ATTRACT, GRASS_KNOT, REFLECT, REST, THUNDER_WAVE, HYPER_BEAM, LIGHT_SCREEN, SLEEP_TALK, ENDURE, BRICK_BREAK, CALM_MIND, SAFEGUARD, AVALANCHE, RAIN_DANCE, PROTECT, THIEF, SHADOW_BALL, ENERGY_BALL, TRICK_ROOM, PAYBACK, FLING, FOCUS_BLAST, SUNNY_DAY, ICE_BEAM, GIGA_IMPACT, THUNDER, NASTY_PLOT, BLIZZARD, THUNDERBOLT, SUBSTITUTE, SOLARBEAM, PSYCHIC_M, FACADE, DRAIN_PUNCH, HAIL, TAUNT, DAZZLING_GLEAM, SKILL_SWAP
        ; end
