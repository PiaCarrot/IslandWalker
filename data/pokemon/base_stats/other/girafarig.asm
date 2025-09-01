db 0 ; species ID placeholder

db  70,  80,  65,  85,  90,  65
evs  0,  0,  0,  0,  2,  0
;   hp  atk  def  spd  sat  sdf

db NORMAL, PSYCHIC ; type
db 60 ; catch rate
db 159 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/girafarig/front.dimensions"
db INNER_FOCUS, EARLY_BIRD ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_GROUND, EGG_GROUND ; egg groups

; tm/hm learnset
	tmhm DREAM_EATER, CHARGE_BEAM, STRENGTH, FLASH, ROCK_SMASH, NASTY_PLOT, DAZZLING_GLEAM, ENDURE, LIGHT_SCREEN, THUNDER_WAVE, SKILL_SWAP, THUNDERBOLT, SHOCK_WAVE, CALM_MIND, HYPER_BEAM, ENERGY_BALL, TOXIC, REFLECT, SHADOW_BALL, RECYCLE, HIDDEN_POWER, TRICK_ROOM, GIGA_IMPACT, SUBSTITUTE, DOUBLE_TEAM, PSYCH_UP, EARTHQUAKE, FACADE, SUNNY_DAY, SWAGGER, RAIN_DANCE, IRON_TAIL, ATTRACT, WORK_UP, BULLDOZE, RETURN, GRASS_KNOT, FRUSTRATION, REST, THIEF, PSYCHIC_M, SLEEP_TALK, THUNDER, PROTECT
; end
