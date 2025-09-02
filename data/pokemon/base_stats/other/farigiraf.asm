db 0 ; species ID placeholder

db 120,  90,  70,  60, 110,  70
evs  3,  0,  0,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db NORMAL, PSYCHIC_TYPE ; type
db 45 ; catch rate
db 255 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/farigiraf/front.dimensions"
db CUD_CHEW, ARMOR_TAIL ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_GROUND, EGG_GROUND ; egg groups

; tm/hm learnset
	tmhm THUNDERBOLT, THUNDER_WAVE, FACADE, ROAR, SUNNY_DAY, LIGHT_SCREEN, CHARGE_BEAM, BULLDOZE, REFLECT, NASTY_PLOT, SKILL_SWAP, PROTECT, PSYCHIC_M, RAIN_DANCE, HYPER_BEAM, SUBSTITUTE, ENDURE, DAZZLING_GLEAM, PSYCH_UP, REST, EARTHQUAKE, GRASS_KNOT, SLEEP_TALK, CALM_MIND, GIGA_IMPACT, THUNDER, SHADOW_BALL, ENERGY_BALL, TRICK_ROOM, THIEF
; end
