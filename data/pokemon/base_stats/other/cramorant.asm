        db 0 ; species ID placeholder

        db  70,  85,  55,  85,  85,  95
        evs 0, 0, 0, 0, 0, 2
        ;   hp  atk  def  spd  sat  sdf

        db FLYING, WATER ; type
        db 45 ; catch rate
        db 166 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/cramorant/front.dimensions"
        db GULP_MISSILE, GULP_MISSILE ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_FLYING ; egg groups

        ; tm/hm learnset
        tmhm WATER_PULSE, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, SCALD, ENDURE, GIGA_IMPACT, SLEEP_TALK, SUBSTITUTE, FLY, SURF, WHIRLPOOL, DIVE
        ; end
