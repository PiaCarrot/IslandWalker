db 0 ; species ID placeholder

db 130, 140, 105,  50,  45,  80
evs  0,  3,  0,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db GROUND, NORMAL ; type
db 75 ; catch rate
db 255 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/ursaluna/front.dimensions"
db GUTS, BULLETPROOF ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_GROUND, EGG_GROUND ; egg groups

; tm/hm learnset
	tmhm SWORDS_DANCE, GIGA_IMPACT, SHADOW_CLAW, SUBSTITUTE, AERIAL_ACE, STONE_EDGE, REST, THIEF, ROCK_TOMB, DIG, HYPER_BEAM, EARTHQUAKE, ROAR, FACADE, SLEEP_TALK, BULK_UP, FLING, SUNNY_DAY, DRAIN_PUNCH, ROCK_SLIDE, TAUNT, ENDURE, RAIN_DANCE, AVALANCHE, BRICK_BREAK, BULLDOZE, FOCUS_PUNCH, PROTECT
; end
