        db 0 ; species ID placeholder

        db  50,  53,  62,  44,  58,  63
        evs  0,   0,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db WATER, WATER ; type
        db 225 ; catch rate
        db 66 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 15 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/clauncher/front.dimensions"
        db MEGA_LAUNCHER, MEGA_LAUNCHER ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_SLOW ; growth rate
        dn EGG_WATER_1, EGG_WATER_3 ; egg groups

        ; tm/hm learnset
tmhm TOXIC, ICE_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, SCALD, ENDURE, DRAGON_PULSE, SWORDS_DANCE, ROCK_SLIDE, SLEEP_TALK, SWAGGER, U_TURN, SUBSTITUTE, FLASH_CANNON, CUT, SURF, WATERFALL, DIVE
        ; end

