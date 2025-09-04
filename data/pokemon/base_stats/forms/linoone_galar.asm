        db 0 ; species ID placeholder

        db  78,  70,  61, 100,  50,  61
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db DARK, NORMAL ; type
        db 90 ; catch rate
        db 147 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 15 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/linoone_galar/front.dimensions"
        db PICKUP, GLUTTONY ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GROUND, EGG_GROUND ; egg groups

        ; tm/hm learnset
        tmhm DIG, ATTRACT, GRASS_KNOT, REST, THUNDER_WAVE, HYPER_BEAM, SLEEP_TALK, ENDURE, WORK_UP, IRON_TAIL, RAIN_DANCE, SHADOW_CLAW, PROTECT, THIEF, SHADOW_BALL, PAYBACK, FLING, SNARL, SUNNY_DAY, ICE_BEAM, GIGA_IMPACT, THUNDER, BLIZZARD, THUNDERBOLT, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH, WHIRLPOOL, FACADE, TAUNT, SURF
        ; end
