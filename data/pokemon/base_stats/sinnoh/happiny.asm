db 0 ; species ID placeholder

db 100,   5,   5,  30,  15,  65
evs  1,   0,   0,   0,   0,   0
;   hp  atk  def  spd  sat  sdf

db NORMAL, NORMAL ; type
db 130 ; catch rate
db 110 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F100 ; gender ratio
db 40 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/happiny/front.dimensions"
db NATURAL_CURE, SERENE_GRACE ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_XS ; drop item
db GROWTH_FAST ; growth rate
dn EGG_NONE, EGG_NONE ; egg groups

; tm/hm learnset
        tmhm WATER_PULSE, HAIL, WORK_UP, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, SOLARBEAM, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, FIRE_BLAST, FACADE, REST, ATTRACT, FLING, ENDURE, DRAIN_PUNCH, RECYCLE, FLASH, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE
; end
