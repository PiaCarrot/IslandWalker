db 0 ; species ID placeholder

db  90, 125,  80, 125,  90,  90
evs  0,  2,  0,  1,  0,  0
;   hp  atk  def  spd  sat  sdf

db FIGHTING, GHOST ; type
db 3 ; catch rate
db 255 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_UNKNOWN ; gender ratio
db 120 ; step cycles to hatch
INCBIN "gfx/pokemon/other/marshadow/front.dimensions"
db TECHNICIAN, TECHNICIAN ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_L ; drop item
db GROWTH_SLOW ; growth rate
dn EGG_NONE, EGG_NONE ; egg groups

; tm/hm learnset
	tmhm WILL_O_WISP, POISON_JAB, GRASS_KNOT, FOCUS_BLAST, RETURN, GIGA_IMPACT, LOW_SWEEP, SHADOW_CLAW, SUBSTITUTE, FRUSTRATION, DOUBLE_TEAM, STONE_EDGE, PSYCH_UP, CALM_MIND, REST, ROCK_TOMB, THIEF, HYPER_BEAM, FALSE_SWIPE, FACADE, SLEEP_TALK, TOXIC, BULK_UP, FLING, DRAIN_PUNCH, ROCK_SLIDE, SHADOW_BALL, SWAGGER, PAYBACK, HIDDEN_POWER, BRICK_BREAK, WORK_UP, PROTECT
; end
