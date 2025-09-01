        db 0 ; species ID placeholder

        db  44,  50,  91,  10,  24,  86
        evs  0,   0,   1,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db GRASS, STEEL ; type
        db 255 ; catch rate
        db 61 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/ferroseed/front.dimensions"
        db IRON_BARBS, IRON_BARBS ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_PLANT, EGG_MINERAL ; egg groups

        ; tm/hm learnset
tmhm TOXIC, BULLET_SEED, SUNNY_DAY, PROTECT, GIGA_DRAIN, SOLARBEAM, THUNDERBOLT, DOUBLE_TEAM, FACADE, REST, ATTRACT, ENERGY_BALL, ENDURE, EXPLOSION, PAYBACK, ROCK_POLISH, FLASH, THUNDER_WAVE, GYRO_BALL, STEALTH_ROCK, SLEEP_TALK, POISON_JAB, SWAGGER, SUBSTITUTE, FLASH_CANNON, ROCK_SMASH
        ; end
