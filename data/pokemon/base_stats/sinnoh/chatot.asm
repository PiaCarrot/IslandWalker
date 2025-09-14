db 0 ; species ID placeholder

db  76,  65,  45,  91,  92,  42
evs 0,   1,   0,   0,   0,   0
;   hp  atk  def  spd  sat  sdf

db NORMAL, FLYING ; type
db 30 ; catch rate
db 144 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/chatot/front.dimensions"
db KEEN_EYE, TANGLED_FEET ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_XS ; drop item
db GROWTH_MEDIUM_SLOW ; growth rate
dn EGG_FLYING, EGG_FLYING ; egg groups

; tm/hm learnset
    tmhm WORK_UP, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, DOUBLE_TEAM, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, ENDURE, NASTY_PLOT, SLEEP_TALK, SWAGGER, PLUCK, U_TURN, SUBSTITUTE, FLY, DEFOG
; end
