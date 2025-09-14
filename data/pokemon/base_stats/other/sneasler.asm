db 0 ; species ID placeholder

db  80, 130,  60, 120,  40,  80
evs  0,  1,  0,  1,  0,  0
;   hp  atk  def  spd  sat  sdf

db FIGHTING, POISON ; type
db 135 ; catch rate
db 102 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/sneasler/front.dimensions"
db PRESSURE, UNBURDEN ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_S ; drop item
db GROWTH_MEDIUM_SLOW ; growth rate
dn EGG_GROUND, EGG_GROUND ; egg groups

; tm/hm learnset
	tmhm POISON_JAB, SWORDS_DANCE, GRASS_KNOT, FOCUS_BLAST, GIGA_IMPACT, LOW_SWEEP, SHADOW_CLAW, SUBSTITUTE, AERIAL_ACE, SLUDGE_BOMB, CALM_MIND, REST, THIEF, ROCK_TOMB, DIG, HYPER_BEAM, FALSE_SWIPE, FACADE, SLEEP_TALK, TOXIC, BULK_UP, FLING, SUNNY_DAY, X_SCISSOR, U_TURN, NASTY_PLOT, ROCK_SLIDE, SHADOW_BALL, TAUNT, ENDURE, RAIN_DANCE, BRICK_BREAK, FOCUS_PUNCH, PROTECT
; end
