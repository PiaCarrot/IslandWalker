        db 0 ; species ID placeholder

        db  65,  75,  90,  44,  97, 123
        evs  0,   0,   0,   0,   0,   2
        ;   hp  atk  def  spd  sat  sdf

        db POISON, DRAGON ; type
        db 55 ; catch rate
        db 173 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/dragalge/front.dimensions"
        db POISON_POINT, POISON_TOUCH ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_M ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_DRAGON ; egg groups

        ; tm/hm learnset
tmhm TOXIC, HAIL, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, SCALD, FOCUS_BLAST, ENDURE, DRAGON_PULSE, GIGA_IMPACT, SLEEP_TALK, SWAGGER, SUBSTITUTE, SURF, WATERFALL, DIVE
        ; end

