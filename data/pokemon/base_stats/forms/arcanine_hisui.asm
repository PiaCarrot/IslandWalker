        db 0 ; species ID placeholder

        db  95, 115,  80,  90,  95,  80
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIRE, ROCK ; type
        db 75 ; catch rate
        db 194 ; base exp
        dw ASPEAR_BERRY, ASPEAR_BERRY ; items
        db GENDER_F25 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/arcanine_hisui/front.dimensions"
        db INTIMIDATE, FLASH_FIRE ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_M ; drop item
        db GROWTH_SLOW ; growth rate
        dn EGG_GROUND, EGG_GROUND ; egg groups

        ; tm/hm learnset
        tmhm ROAR, SUNNY_DAY, HYPER_BEAM, PROTECT, SAFEGUARD, SOLARBEAM, IRON_TAIL, DIG, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, OVERHEAT, ENDURE, DRAGON_PULSE, WILL_O_WISP, GIGA_IMPACT, SNARL, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH, ROCK_CLIMB
        ; end

