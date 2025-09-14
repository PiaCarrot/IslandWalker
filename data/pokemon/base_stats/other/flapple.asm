        db 0 ; species ID placeholder

        db  70, 110,  80,  70,  95,  60
        evs 0, 2, 0, 0, 0, 0
        ;   hp  atk  def  spd  sat  sdf

        db GRASS, DRAGON ; type
        db 45 ; catch rate
        db 170 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/flapple/front.dimensions"
        db RIPEN, GLUTTONY ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_FLUCTUATING ; growth rate
        dn EGG_PLANT, EGG_DRAGON ; egg groups

        ; tm/hm learnset
        tmhm BULLET_SEED, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, AERIAL_ACE, FACADE, REST, ATTRACT, ENERGY_BALL, ENDURE, DRAGON_PULSE, GIGA_IMPACT, SLEEP_TALK, GRASS_KNOT, U_TURN, SUBSTITUTE, FLY
        ; end
