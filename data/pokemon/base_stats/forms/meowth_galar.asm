        db 0 ; species ID placeholder

        db  50,  65,  55,  40,  40,  40
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db STEEL, STEEL ; type
        db 255 ; catch rate
        db 58 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/meowth_galar/front.dimensions"
        db PICKUP, TOUGH_CLAWS ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GROUND, EGG_GROUND ; egg groups

        ; tm/hm learnset
        tmhm DIG, ATTRACT, REST, STEALTH_ROCK, DARK_PULSE, SLEEP_TALK, ENDURE, AERIAL_ACE, WORK_UP, BRICK_BREAK, IRON_TAIL, FALSE_SWIPE, RAIN_DANCE, SHADOW_CLAW, PROTECT, THIEF, SHADOW_BALL, PAYBACK, GYRO_BALL, FLING, SUNNY_DAY, THUNDER, NASTY_PLOT, THUNDERBOLT, SUBSTITUTE, FLASH_CANNON, FACADE, U_TURN, SWORDS_DANCE, TAUNT, X_SCISSOR, CUT
        ; end
