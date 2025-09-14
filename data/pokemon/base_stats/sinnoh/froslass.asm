db 0 ; species ID placeholder

db  70,   80,   70,  110,   80,   70
evs 0,   0,   0,   2,   0,   0
;   hp  atk  def  spd  sat  sdf

db ICE, GHOST ; type
db 75 ; catch rate
db 168 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F100 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/froslass/front.dimensions"
db SNOW_CLOAK, SNOW_CLOAK ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_M ; drop item
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_FAIRY, EGG_MINERAL ; egg groups

; tm/hm learnset
	tmhm WATER_PULSE, SIGNAL_BEAM, HAIL, TAUNT, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, THUNDERBOLT, THUNDER, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, TORMENT, FACADE, REST, ATTRACT, FLING, ENDURE, WILL_O_WISP, PAYBACK, GIGA_IMPACT, FLASH, AVALANCHE, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, DREAM_EATER, SWAGGER, SUBSTITUTE
; end
