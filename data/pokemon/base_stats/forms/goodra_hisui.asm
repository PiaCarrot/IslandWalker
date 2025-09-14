        db 0 ; species ID placeholder

        db  80, 100, 100,  60, 110, 150
        evs  0,   0,   0,   0,   0,   3
        ;   hp  atk  def  spd  sat  sdf

        db STEEL, DRAGON ; type
        db 45 ; catch rate
        db 255 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 40 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/goodra_hisui/front.dimensions"
        db SAP_SIPPER, SHELL_ARMOR ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_L ; drop item
        db GROWTH_SLOW ; growth rate
        dn EGG_DRAGON, EGG_DRAGON ; egg groups

        ; tm/hm learnset
        tmhm FLAMETHROWER, SURF, ICE_BEAM, BLIZZARD, THUNDERBOLT, THUNDER, EARTHQUAKE, FIRE_BLAST, SUBSTITUTE, SLUDGE_BOMB, ENDURE, SLEEP_TALK, IRON_TAIL, DRAGON_PULSE, FOCUS_BLAST
        ; end

