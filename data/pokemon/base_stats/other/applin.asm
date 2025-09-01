        db 0 ; species ID placeholder

        db  40,  40,  80,  20,  40,  40
        evs 0, 0, 1, 0, 0, 0
        ;   hp  atk  def  spd  sat  sdf

        db GRASS, DRAGON ; type
        db 255 ; catch rate
        db 52 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/applin/front.dimensions"
        db RIPEN, GLUTTONY ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_FLUCTUATING ; growth rate
        dn EGG_PLANT, EGG_DRAGON ; egg groups

        ; tm/hm learnset
        tmhm ATTRACT
        ; end
