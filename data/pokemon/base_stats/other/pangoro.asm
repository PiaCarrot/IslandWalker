        db 0 ; species ID placeholder

        db  95, 124,  78,  58,  69,  71
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIGHTING, DARK ; type
        db 65 ; catch rate
        db 173 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 25 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/pangoro/front.dimensions"
        db IRON_FIST, MOLD_BREAKER ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GROUND, EGG_HUMANSHAPE ; egg groups

        ; tm/hm learnset
        tmhm ATTRACT, BULLDOZE, CUT, DIG, EARTHQUAKE, ENDURE, FACADE, FLING, PAYBACK, PROTECT, REST, ROAR, SNARL, STRENGTH, SUBSTITUTE, SURF, SWAGGER, TAUNT, THIEF, TORMENT, TOXIC
        ; end
