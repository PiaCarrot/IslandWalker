        db 0 ; species ID placeholder

        db  58,  75,  83,  40,  83, 113
        evs  0,   0,   0,   0,   0,   2
        ;   hp  atk  def  spd  sat  sdf

        db STEEL, DRAGON ; type
        db 45 ; catch rate
        db 158 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 40 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/sliggoo_hisui/front.dimensions"
        db SAP_SIPPER, SHELL_ARMOR ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_M ; drop item
        db GROWTH_SLOW ; growth rate
        dn EGG_DRAGON, EGG_DRAGON ; egg groups

        ; tm/hm learnset
        tmhm ICE_BEAM, BLIZZARD, THUNDERBOLT, SUBSTITUTE, SLUDGE_BOMB, ENDURE, SLEEP_TALK, IRON_TAIL, DRAGON_PULSE
        ; end

