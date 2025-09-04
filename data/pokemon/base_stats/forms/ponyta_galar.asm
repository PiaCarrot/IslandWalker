        db 0 ; species ID placeholder

        db  50,  85,  55,  90,  65,  65
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
        db 190 ; catch rate
        db 82 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/ponyta_galar/front.dimensions"
        db RUN_AWAY, PASTEL_VEIL ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GROUND, EGG_GROUND ; egg groups

        ; tm/hm learnset
        tmhm ATTRACT, REST, SLEEP_TALK, ENDURE, CALM_MIND, IRON_TAIL, PROTECT, SUBSTITUTE, PSYCHIC_M, FACADE, DAZZLING_GLEAM, STRENGTH
        ; end
