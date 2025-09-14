db 0 ; species ID placeholder

db  80,   80,   80,   80,   80,   80
evs 1,   0,   0,   0,   0,   0
;   hp  atk  def  spd  sat  sdf

db WATER, WATER ; type
db 30 ; catch rate
db 216 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_UNKNOWN ; gender ratio
db 40 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/phione/front.dimensions"
db HYDRATION, HYDRATION ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_L ; drop item
db GROWTH_SLOW ; growth rate
dn EGG_WATER_1, EGG_FAIRY ; egg groups

; tm/hm learnset
	tmhm WATER_PULSE, SIGNAL_BEAM, HAIL, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, SAFEGUARD, DAZZLING_GLEAM, DOUBLE_TEAM, FACADE, REST, SCALD, BRINE, FLING, ENDURE, PSYCH_UP, SLEEP_TALK, GRASS_KNOT, SWAGGER, U_TURN, SUBSTITUTE, SURF, WATERFALL, WHIRLPOOL, DIVE
; end
