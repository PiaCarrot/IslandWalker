        db 0 ; species ID placeholder

        db  67,  82,  62,  43,  46,  48
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIGHTING, FIGHTING ; type
        db 220 ; catch rate
        db 70 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 25 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/pancham/front.dimensions"
        db IRON_FIST, MOLD_BREAKER ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GROUND, EGG_HUMANSHAPE ; egg groups

        ; tm/hm learnset
        tmhm ATTRACT, BULLDOZE, CUT, DIG, ENDURE, FACADE, FLING, PAYBACK, PROTECT, REST, ROAR, STRENGTH, SUBSTITUTE, SURF, SWAGGER, TAUNT, TORMENT, TOXIC
        ; end
