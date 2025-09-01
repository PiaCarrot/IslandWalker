db 0 ; species ID placeholder

db  75,  123,   67,   95,   95,   85
evs 0,   3,   0,   0,   0,   0
;   hp  atk  def  spd  sat  sdf

db ELECTRIC, ELECTRIC ; type
db 30 ; catch rate
db 243 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F25 ; gender ratio
db 25 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/electivire/front.dimensions"
db MOTOR_DRIVE, MOTOR_DRIVE ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

; tm/hm learnset
	tmhm FOCUS_PUNCH, TAUNT, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, LOW_SWEEP, DIG, PSYCHIC_M, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, ROCK_TOMB, TORMENT, FACADE, VOLT_SWITCH, REST, ATTRACT, THIEF, FOCUS_BLAST, FLING, CHARGE_BEAM, ENDURE, GIGA_IMPACT, FLASH, THUNDER_WAVE, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH, ROCK_CLIMB
; end
