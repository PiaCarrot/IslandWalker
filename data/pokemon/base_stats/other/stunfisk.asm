        db 0 ; species ID placeholder

        db 109, 66, 84, 32, 81, 99
        evs 2, 0, 0, 0, 0, 0
        ;   hp  atk  def  spd  sat  sdf

        db GROUND, ELECTRIC ; type
        db 75 ; catch rate
        db 165 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/stunfisk/front.dimensions"
        db STATIC, LIMBER ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_INDETERMINATE ; egg groups

        ; tm/hm learnset
        tmhm TOXIC, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, EARTHQUAKE, DIG, DOUBLE_TEAM, SLUDGE_BOMB, SANDSTORM, ROCK_TOMB, FACADE, REST, ATTRACT, SCALD, PAYBACK, FLASH, STONE_EDGE, THUNDER_WAVE, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, SURF
        ; end
