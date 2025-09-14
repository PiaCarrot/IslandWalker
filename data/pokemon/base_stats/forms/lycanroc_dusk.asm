        db 0 ; species ID placeholder

        db  75, 117,  65, 110,  55,  65
        evs 0, 2, 0, 0, 0, 0
        ;   hp  atk  def  spd  sat  sdf

        db ROCK, ROCK ; type
        db 90 ; catch rate
        db 170 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 15 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/lycanroc_dusk/front.dimensions"
        db TOUGH_CLAWS, TOUGH_CLAWS ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_M ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GROUND, EGG_GROUND ; egg groups

        ; tm/hm learnset
        tmhm ROAR, REST, FACADE, SWORDS_DANCE, ROCK_SLIDE, TAUNT, SANDSTORM, SWAGGER, ROCK_POLISH, DOUBLE_TEAM, ATTRACT, STONE_EDGE, SLEEP_TALK, HIDDEN_POWER, BRICK_BREAK, RETURN, ROCK_TOMB, SUBSTITUTE, TOXIC, BULK_UP, PROTECT, GIGA_IMPACT, SNARL, FRUSTRATION
        ; end
