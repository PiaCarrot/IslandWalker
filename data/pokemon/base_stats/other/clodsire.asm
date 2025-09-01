db 0 ; species ID placeholder

db 130,  75,  60,  20,  45, 100
evs  2,  0,  0,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db POISON, GROUND ; type
db 90 ; catch rate
db 151 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/clodsire/front.dimensions"
db POISON_POINT, WATER_ABSORB ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_WATER_1, EGG_GROUND ; egg groups

; tm/hm learnset
	tmhm POISON_JAB, WATERFALL, SANDSTORM, GIGA_IMPACT, SUBSTITUTE, WATER_PULSE, SURF, SLUDGE_BOMB, STONE_EDGE, STEALTH_ROCK, REST, ROCK_TOMB, DIG, HYPER_BEAM, EARTHQUAKE, FACADE, SLEEP_TALK, TOXIC, ROCK_SLIDE, ENDURE, RAIN_DANCE, BULLDOZE, PROTECT
; end
