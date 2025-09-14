        db 0 ; species ID placeholder

        db  71,  73,  88,  59, 120,  89
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, WATER ; type
        db 55 ; catch rate
        db 100 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 15 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/clawitzer/front.dimensions"
        db MEGA_LAUNCHER, MEGA_LAUNCHER ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_SLOW ; growth rate
        dn EGG_WATER_1, EGG_WATER_3 ; egg groups

        ; tm/hm learnset
tmhm TOXIC, ICE_BEAM, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, SCALD, FOCUS_BLAST, ENDURE, DRAGON_PULSE, GIGA_IMPACT, SWORDS_DANCE, DARK_PULSE, ROCK_SLIDE, SLEEP_TALK, SWAGGER, U_TURN, SUBSTITUTE, FLASH_CANNON, CUT, SURF, WATERFALL, DIVE
        ; end

