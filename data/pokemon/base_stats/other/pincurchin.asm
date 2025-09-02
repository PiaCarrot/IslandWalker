        db 0 ; species ID placeholder

        db  48, 101,  95,  15,  91,  85
        evs 0, 2, 0, 0, 0, 0
        ;   hp  atk  def  spd  sat  sdf

        db ELECTRIC, ELECTRIC ; type
        db 75 ; catch rate
        db 152 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/pincurchin/front.dimensions"
        db LIGHTNINGROD, ELECTRIC_SURGE ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_WATER_1, EGG_INDETERMINATE ; egg groups

        ; tm/hm learnset
        tmhm HYPER_BEAM, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, FACADE, REST, ATTRACT, SCALD, BRINE, CHARGE_BEAM, ENDURE, PAYBACK, GIGA_IMPACT, THUNDER_WAVE, SLEEP_TALK, POISON_JAB, SUBSTITUTE, SURF
        ; end
