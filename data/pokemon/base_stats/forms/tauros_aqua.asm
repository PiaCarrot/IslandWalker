        db 0 ; species ID placeholder

        db  75, 110, 105, 100,  30,  70
        evs  0,   1,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIGHTING, WATER ; type
        db 45 ; catch rate
        db 211 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F0 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/tauros_aqua/front.dimensions"
        db INTIMIDATE, ANGER_POINT ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_SLOW ; growth rate
        dn EGG_GROUND, EGG_GROUND ; egg groups

        ; tm/hm learnset
        tmhm WATER_PULSE, WORK_UP, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLARBEAM, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, FACADE, REST, ATTRACT, ENDURE, PAYBACK, GIGA_IMPACT, STONE_EDGE, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, SURF, STRENGTH, ROCK_SMASH, ROCK_CLIMB, WHIRLPOOL
        ; end

