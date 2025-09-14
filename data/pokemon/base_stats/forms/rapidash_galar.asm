        db 0 ; species ID placeholder

        db  65, 100,  70, 105,  80,  80
        evs  0,   0,   0,   2,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC_TYPE, FAIRY ; type
        db 60 ; catch rate
        db 175 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/rapidash_galar/front.dimensions"
        db RUN_AWAY, PASTEL_VEIL ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GROUND, EGG_GROUND ; egg groups

        ; tm/hm learnset
        tmhm ATTRACT, REST, HYPER_BEAM, SLEEP_TALK, ENDURE, CALM_MIND, IRON_TAIL, PROTECT, TRICK_ROOM, GIGA_IMPACT, SUBSTITUTE, PSYCHIC_M, FACADE, SWORDS_DANCE, DAZZLING_GLEAM, STRENGTH
        ; end
