db 0 ; species ID placeholder

db 110, 115,  80,  90,  50,  90
evs  0,  3,  0,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db FIGHTING, GHOST ; type
db 45 ; catch rate
db 255 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/annihilape/front.dimensions"
db VITAL_SPIRIT, INNER_FOCUS ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_L ; drop item
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_GROUND, EGG_GROUND ; egg groups

; tm/hm learnset
	tmhm POISON_JAB, THUNDERBOLT, FOCUS_BLAST, GIGA_IMPACT, LOW_SWEEP, SHADOW_CLAW, SUBSTITUTE, STONE_EDGE, STEALTH_ROCK, REST, THIEF, ROCK_TOMB, DIG, HYPER_BEAM, EARTHQUAKE, FACADE, SLEEP_TALK, BULK_UP, FLING, SUNNY_DAY, DRAIN_PUNCH, U_TURN, THUNDER, ROCK_SLIDE, SHADOW_BALL, TAUNT, ENDURE, RAIN_DANCE, OVERHEAT, BRICK_BREAK, BULLDOZE, FOCUS_PUNCH, PROTECT
; end
