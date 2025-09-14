        db 0 ; species ID placeholder

        db  65,  90, 120,  60,  85,  70
        evs  0,   0,   2,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db POISON, FAIRY ; type
        db 60 ; catch rate
        db 172 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/weezing_galar/front.dimensions"
        db LEVITATE, NEUTRALIZING_GAS ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_M ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

        ; tm/hm learnset
	tmhm ATTRACT, REST, DARK_PULSE, HYPER_BEAM, SLEEP_TALK, ENDURE, OVERHEAT, FIRE_BLAST, TOXIC, RAIN_DANCE, PROTECT, THIEF, SHADOW_BALL, PAYBACK, GYRO_BALL, WILL_O_WISP, SUNNY_DAY, GIGA_IMPACT, THUNDER, THUNDERBOLT, FLAMETHROWER, SUBSTITUTE, SLUDGE_BOMB, FACADE, TAUNT, DAZZLING_GLEAM
        ; end
