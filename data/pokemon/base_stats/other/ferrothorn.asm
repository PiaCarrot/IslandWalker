        db 0 ; species ID placeholder

        db  74,  94, 131,  20,  54, 116
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db GRASS, STEEL ; type
        db 90 ; catch rate
        db 171 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/ferrothorn/front.dimensions"
        db IRON_BARBS, ANTICIPATION ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_PLANT, EGG_MINERAL ; egg groups

        ; tm/hm learnset
tmhm TOXIC, BULLET_SEED, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, THUNDERBOLT, THUNDER, DOUBLE_TEAM, SANDSTORM, AERIAL_ACE, FACADE, REST, ATTRACT, ENERGY_BALL, ENDURE, EXPLOSION, SHADOW_CLAW, PAYBACK, GIGA_IMPACT, ROCK_POLISH, FLASH, THUNDER_WAVE, GYRO_BALL, SWORDS_DANCE, STEALTH_ROCK, SLEEP_TALK, BULLDOZE, POISON_JAB, GRASS_KNOT, SWAGGER, SUBSTITUTE, FLASH_CANNON, CUT, STRENGTH, ROCK_SMASH
        ; end
