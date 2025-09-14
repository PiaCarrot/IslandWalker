        db 0 ; species ID placeholder

        db  60,  50, 140,  60,  50, 140
        evs  0,   0,   2,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf

        db STEEL, GHOST ; type
        db 45 ; catch rate
        db 234 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/aegislash/front.dimensions"
        db STANCE_CHANGE, STANCE_CHANGE ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_L ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MINERAL, EGG_MINERAL ; egg groups

        ; tm/hm learnset
        tmhm ATTRACT, CUT, ENDURE, FACADE, PROTECT, REFLECT, REST, SUBSTITUTE, SWAGGER, TOXIC
        ; end
