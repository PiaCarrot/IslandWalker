db 0 ; species ID placeholder

db 103, 105,  72,  65, 105,  75
evs  0,  1,  0,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db NORMAL, PSYCHIC ; type
db 135 ; catch rate
db 263 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/wyrdeer/front.dimensions"
db INTIMIDATE, FRISK ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_SLOW ; growth rate
dn EGG_GROUND, EGG_GROUND ; egg groups

; tm/hm learnset
	tmhm THUNDERBOLT, SOLARBEAM, TRICK_ROOM, GIGA_IMPACT, CHARGE_BEAM, SUBSTITUTE, PSYCH_UP, CALM_MIND, REST, THIEF, DIG, HYPER_BEAM, ENERGY_BALL, EARTHQUAKE, ROAR, PSYCHIC_M, FACADE, SLEEP_TALK, SUNNY_DAY, REFLECT, THUNDER, SHADOW_BALL, ENDURE, RAIN_DANCE, LIGHT_SCREEN, THUNDER_WAVE, SKILL_SWAP, BULLDOZE, PROTECT
; end
