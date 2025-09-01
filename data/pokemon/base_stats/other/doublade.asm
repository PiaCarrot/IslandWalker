        db 0 ; species ID placeholder

        db  59, 110, 150,  35,  45,  49
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db STEEL, GHOST ; type
        db 90 ; catch rate
        db 157 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/doublade/front.dimensions"
        db NO_GUARD, NO_GUARD ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_MINERAL, EGG_MINERAL ; egg groups

        ; tm/hm learnset
        tmhm ATTRACT, CUT, ENDURE, FACADE, PROTECT, REFLECT, REST, SUBSTITUTE, SWAGGER, TOXIC
        ; end
