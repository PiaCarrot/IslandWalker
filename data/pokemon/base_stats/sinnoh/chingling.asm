db 0 ; species ID placeholder

db  45,  30,  50,  45,  65,  50
evs  0,   0,   0,   0,   1,   0
;   hp  atk  def  spd  sat  sdf

db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
db 120 ; catch rate
db 57 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 25 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/chingling/front.dimensions"
db LEVITATE, LEVITATE ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_FAST ; growth rate
dn EGG_NONE, EGG_NONE ; egg groups

; tm/hm learnset
        tmhm CALM_MIND, SUNNY_DAY, TAUNT, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, DAZZLING_GLEAM, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, TORMENT, FACADE, REST, ATTRACT, SKILL_SWAP, CHARGE_BEAM, ENDURE, RECYCLE, FLASH, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, TRICK_ROOM
; end
