        db 0 ; species ID placeholder

        db  52,  95,  55,  55,  58,  62
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIGHTING, FIGHTING ; type
        db 45 ; catch rate
        db 132 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/farfetch_d_galar/front.dimensions"
        db STEADFAST, SCRAPPY ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_FLYING, EGG_GROUND ; egg groups

        ; tm/hm learnset
	tmhm ATTRACT, REST, STEEL_WING, SLEEP_TALK, ENDURE, WORK_UP, BRICK_BREAK, PROTECT, SUNNY_DAY, SUBSTITUTE, FACADE, POISON_JAB, SWORDS_DANCE
        ; end
