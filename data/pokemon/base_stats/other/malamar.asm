        db 0 ; species ID placeholder

        db  86,  92,  88,  73,  68,  75
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db DARK, PSYCHIC ; type
        db 80 ; catch rate
        db 169 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/malamar/front.dimensions"
        db CONTRARY, SUCTION_CUPS ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_WATER_2 ; egg groups

        ; tm/hm learnset
        tmhm ATTRACT, CUT, ENDURE, FACADE, FLAMETHROWER, FLASH, FLING, PAYBACK, PROTECT, REFLECT, REST, SUBSTITUTE, SWAGGER, TAUNT, THIEF, THUNDERBOLT, TORMENT, TOXIC
        ; end
