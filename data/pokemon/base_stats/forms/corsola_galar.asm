        db 0 ; species ID placeholder

        db  60,  55, 100,  30,  65, 100
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf

        db GHOST, GHOST ; type
        db 60 ; catch rate
        db 144 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F75 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/corsola_galar/front.dimensions"
        db WEAK_ARMOR, WEAK_ARMOR ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_FAST ; growth rate
        dn EGG_WATER_1, EGG_WATER_3 ; egg groups

        ; tm/hm learnset
        tmhm DIG, ATTRACT, SANDSTORM, STEALTH_ROCK, REFLECT, REST, SCALD, ROCK_TOMB, LIGHT_SCREEN, BRINE, SLEEP_TALK, ENDURE, CALM_MIND, SAFEGUARD, RAIN_DANCE, PROTECT, SHADOW_BALL, BULLDOZE, WILL_O_WISP, SUNNY_DAY, ICE_BEAM, BLIZZARD, EARTHQUAKE, SUBSTITUTE, GIGA_DRAIN, WHIRLPOOL, PSYCHIC_M, FACADE, STONE_EDGE, ROCK_SLIDE, HAIL, SURF, STRENGTH, ROCK_SMASH, WATERFALL, DIVE
        ; end
