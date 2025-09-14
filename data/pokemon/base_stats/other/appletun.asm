        db 0 ; species ID placeholder

        db 110,  85,  80,  30, 100,  80
        evs 2, 0, 0, 0, 0, 0
        ;   hp  atk  def  spd  sat  sdf

        db GRASS, DRAGON ; type
        db 45 ; catch rate
        db 170 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/appletun/front.dimensions"
        db RIPEN, GLUTTONY ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_FLUCTUATING ; growth rate
        dn EGG_PLANT, EGG_DRAGON ; egg groups

        ; tm/hm learnset
        tmhm BULLET_SEED, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, SAFEGUARD, SOLARBEAM, EARTHQUAKE, REFLECT, FACADE, REST, ATTRACT, ENERGY_BALL, ENDURE, DRAGON_PULSE, PAYBACK, GIGA_IMPACT, GYRO_BALL, SLEEP_TALK, BULLDOZE, GRASS_KNOT, SUBSTITUTE
        ; end
