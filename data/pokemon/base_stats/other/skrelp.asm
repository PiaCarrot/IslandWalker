        db 0 ; species ID placeholder

        db  50,  60,  60,  30,  60,  60
        evs  0,   0,   0,   0,   0,   1
        ;   hp  atk  def  spd  sat  sdf

        db POISON, WATER ; type
        db 225 ; catch rate
        db 64 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/skrelp/front.dimensions"
        db POISON_POINT, POISON_TOUCH ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_DRAGON ; egg groups

        ; tm/hm learnset
tmhm TOXIC, HAIL, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, SCALD, ENDURE, DRAGON_PULSE, SLEEP_TALK, SWAGGER, SUBSTITUTE, SURF, WATERFALL, DIVE
        ; end

