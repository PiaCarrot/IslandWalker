db 0 ; species ID placeholder

db  85,   50,   95,   80,  120,  115
evs 0,   0,   0,   0,   2,   1
;   hp  atk  def  spd  sat  sdf

    db FAIRY, FLYING ; type
db 30 ; catch rate
db 245 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F12_5 ; gender ratio
db 10 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/togekiss/front.dimensions"
db HUSTLE, SERENE_GRACE ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_XS ; drop item
db GROWTH_FAST ; growth rate
dn EGG_FLYING, EGG_FAIRY ; egg groups

; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, SIGNAL_BEAM, WORK_UP, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, DAZZLING_GLEAM, SOLARBEAM, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, FLAMETHROWER, FIRE_BLAST, AERIAL_ACE, FACADE, REST, ATTRACT, STEEL_WING, ROOST, FLING, ENDURE, DRAIN_PUNCH, NASTY_PLOT, GIGA_IMPACT, FLASH, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, PLUCK, SUBSTITUTE, FLY, DEFOG, ROCK_SMASH
; end
