db 0 ; species ID placeholder

db  70, 110, 100,  50,  50,  60
evs  0,  2,  0,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db STEEL, STEEL ; type
db 90 ; catch rate
db 154 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/perrserker/front.dimensions"
db BATTLE_ARMOR, TOUGH_CLAWS ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_M ; drop item
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_GROUND, EGG_GROUND ; egg groups

; tm/hm learnset
	tmhm THUNDERBOLT, SWORDS_DANCE, GIGA_IMPACT, SHADOW_CLAW, SUBSTITUTE, AERIAL_ACE, STEALTH_ROCK, REST, THIEF, DIG, FLASH_CANNON, HYPER_BEAM, FALSE_SWIPE, FACADE, SLEEP_TALK, FLING, SUNNY_DAY, X_SCISSOR, U_TURN, NASTY_PLOT, THUNDER, SHADOW_BALL, TAUNT, ENDURE, RAIN_DANCE, GYRO_BALL, DARK_PULSE, PAYBACK, ATTRACT, BRICK_BREAK, PROTECT
; end
