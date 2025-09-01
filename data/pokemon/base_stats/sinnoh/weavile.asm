db 0 ; species ID placeholder

db  70,  120,   65,  125,   45,   85
evs 0,   1,   0,   1,   0,   0
;   hp  atk  def  spd  sat  sdf

db DARK, ICE ; type
db 45 ; catch rate
db 179 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/weavile/front.dimensions"
db PRESSURE, PRESSURE ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_SLOW ; growth rate
dn EGG_GROUND, EGG_GROUND ; egg groups

; tm/hm learnset
	tmhm FOCUS_PUNCH, CALM_MIND, HAIL, SUNNY_DAY, TAUNT, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, LOW_SWEEP, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, REFLECT, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, FALSE_SWIPE, FLING, ENDURE, NASTY_PLOT, SHADOW_CLAW, PAYBACK, GIGA_IMPACT, AVALANCHE, SWORDS_DANCE, PSYCH_UP, SNARL, DARK_PULSE, X_SCISSOR, SLEEP_TALK, POISON_JAB, DREAM_EATER, SWAGGER, SUBSTITUTE, CUT, SURF, STRENGTH, ROCK_SMASH, WHIRLPOOL
; end
