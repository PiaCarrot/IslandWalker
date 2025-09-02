db 0 ; species ID placeholder

db  20,  25,  45,  60,  70,  90
evs  0,   0,   0,   0,   0,   1
;   hp  atk  def  spd  sat  sdf

db PSYCHIC_TYPE, FAIRY ; type
db 145 ; catch rate
db 62 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 25 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/mime_jr/front.dimensions"
db SOUNDPROOF, FILTER ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_NONE, EGG_NONE ; egg groups

; tm/hm learnset
        tmhm FOCUS_PUNCH, CALM_MIND, SUNNY_DAY, TAUNT, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, DAZZLING_GLEAM, SOLARBEAM, THUNDERBOLT, THUNDER, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, TORMENT, FACADE, REST, ATTRACT, THIEF, SKILL_SWAP, FLING, CHARGE_BEAM, ENDURE, DRAIN_PUNCH, NASTY_PLOT, RECYCLE, FLASH, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, TRICK_ROOM
; end
