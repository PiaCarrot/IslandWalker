        db 0 ; species ID placeholder

        db 109,  81,  99,  32,  66,  84
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db GROUND, STEEL ; type
        db 75 ; catch rate
        db 165 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/stunfisk_galar/front.dimensions"
        db MIMICRY, MIMICRY ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_M ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_INDETERMINATE ; egg groups

        ; tm/hm learnset
	tmhm DIG, ATTRACT, SANDSTORM, STEALTH_ROCK, REST, SCALD, THUNDER_WAVE, ROCK_TOMB, SLEEP_TALK, ENDURE, RAIN_DANCE, PROTECT, BULLDOZE, PAYBACK, EARTHQUAKE, SUBSTITUTE, FLASH_CANNON, SLUDGE_BOMB, FACADE, STONE_EDGE, ROCK_SLIDE, SURF
        ; end
