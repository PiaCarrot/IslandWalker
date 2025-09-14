db 0 ; species ID placeholder

db 100,  100,  100,  100,  100,  100
evs 3,   0,   0,   0,   0,   0
;   hp  atk  def  spd  sat  sdf

db WATER, WATER ; type
db 3 ; catch rate
db 255 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_UNKNOWN ; gender ratio
db 10 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/manaphy/front.dimensions"
db HYDRATION, HYDRATION ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_XS ; drop item
db GROWTH_SLOW ; growth rate
dn EGG_WATER_1, EGG_FAIRY ; egg groups

; tm/hm learnset
	tmhm WATER_PULSE, CALM_MIND, SIGNAL_BEAM, HAIL, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, DAZZLING_GLEAM, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, FACADE, REST, SKILL_SWAP, SCALD, ENERGY_BALL, BRINE, FLING, ENDURE, GIGA_IMPACT, FLASH, PSYCH_UP, SLEEP_TALK, GRASS_KNOT, SWAGGER, U_TURN, SUBSTITUTE, SURF, WATERFALL, WHIRLPOOL, DIVE
; end
