        db 0 ; species ID placeholder

        db  53,  54,  53,  45,  37,  46
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db DARK, PSYCHIC_TYPE ; type
        db 190 ; catch rate
        db 58 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/inkay/front.dimensions"
        db CONTRARY, SUCTION_CUPS ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_WATER_2 ; egg groups

        ; tm/hm learnset
        tmhm ATTRACT, CUT, ENDURE, FACADE, FLAMETHROWER, FLASH, FLING, PAYBACK, PROTECT, REFLECT, REST, SUBSTITUTE, SWAGGER, TAUNT, THIEF, THUNDERBOLT, TORMENT, TOXIC
        ; end
