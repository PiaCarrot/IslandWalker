db 0 ; species ID placeholder

db  80,  85,  75,  70, 110, 100
evs  0,  0,  0,  0,  3,  0
;   hp  atk  def  spd  sat  sdf

db ICE, PSYCHIC ; type
db 45 ; catch rate
db 182 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 25 ; step cycles to hatch
INCBIN "gfx/pokemon/other/mr_rime/front.dimensions"
db TANGLED_FEET, SCREEN_CLEANER ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

; tm/hm learnset
	tmhm SOLARBEAM, TRICK_ROOM, GIGA_IMPACT, HAIL, REST, SAFEGUARD, THIEF, HYPER_BEAM, FACADE, FLING, REFLECT, SUNNY_DAY, DRAIN_PUNCH, RAIN_DANCE, LIGHT_SCREEN, THUNDER_WAVE, AVALANCHE, PAYBACK, ATTRACT, BRICK_BREAK, PROTECT
; end
