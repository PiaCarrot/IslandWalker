db 0 ; species ID placeholder

db  48,   61,   40,   50,   61,   40
evs 0,   1,   0,   0,   0,   0
;   hp  atk  def  spd  sat  sdf

db POISON, FIGHTING ; type
db 140 ; catch rate
db 60 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 10 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/croagunk/front.dimensions"
db ANTICIPATION, DRY_SKIN ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

; tm/hm learnset
	tmhm FOCUS_PUNCH, TOXIC, BULK_UP, WORK_UP, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, EARTHQUAKE, LOW_SWEEP, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SLUDGE_BOMB, ROCK_TOMB, TORMENT, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, FLING, ENDURE, DRAIN_PUNCH, NASTY_PLOT, PAYBACK, DARK_PULSE, ROCK_SLIDE, X_SCISSOR, SLEEP_TALK, BULLDOZE, POISON_JAB, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH, ROCK_CLIMB
; end
