        db 0 ; species ID placeholder

        db  73,  84,  78,  95, 119,  85
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIRE, GHOST ; type
        db 45 ; catch rate
        db 240 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F12_5 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/typhlosion_hisui/front.dimensions"
        db BLAZE, FRISK ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_L ; drop item
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_GROUND, EGG_GROUND ; egg groups

        ; tm/hm learnset
        tmhm FOCUS_PUNCH, ROAR, WORK_UP, SUNNY_DAY, HYPER_BEAM, PROTECT, SOLARBEAM, EARTHQUAKE, DIG, BRICK_BREAK, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, OVERHEAT, FOCUS_BLAST, FLING, ENDURE, WILL_O_WISP, SHADOW_CLAW, GIGA_IMPACT, GYRO_BALL, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH, ROCK_CLIMB
        ; end

