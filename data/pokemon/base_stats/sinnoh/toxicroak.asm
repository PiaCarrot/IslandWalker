db 0 ; species ID placeholder

db  83,  106,   65,   85,   86,   65
evs 0,   2,   0,   0,   0,   0
;   hp  atk  def  spd  sat  sdf

db POISON, FIGHTING ; type
db 75 ; catch rate
db 172 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/toxicroak/front.dimensions"
db ANTICIPATION, DRY_SKIN ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_M ; drop item
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

; tm/hm learnset
	tmhm FOCUS_PUNCH, TOXIC, BULK_UP, WORK_UP, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, RAIN_DANCE, EARTHQUAKE, LOW_SWEEP, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SLUDGE_BOMB, ROCK_TOMB, TORMENT, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, FLING, ENDURE, DRAIN_PUNCH, NASTY_PLOT, PAYBACK, GIGA_IMPACT, STONE_EDGE, SWORDS_DANCE, DARK_PULSE, ROCK_SLIDE, X_SCISSOR, SLEEP_TALK, BULLDOZE, POISON_JAB, SWAGGER, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH, ROCK_CLIMB
; end
