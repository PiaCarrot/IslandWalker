db 0 ; species ID placeholder

db  86,   76,   86,   95,  116,   56
evs 0,   2,   0,   0,   0,   0
;   hp  atk  def  spd  sat  sdf

db BUG, FLYING ; type
db 30 ; catch rate
db 180 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/yanmega/front.dimensions"
db SPEED_BOOST, TINTED_LENS ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_M ; drop item
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_BUG, EGG_BUG ; egg groups

; tm/hm learnset
	tmhm SIGNAL_BEAM, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, ENDURE, BUG_BUZZ, GIGA_IMPACT, FLASH, SWORDS_DANCE, PSYCH_UP, SLEEP_TALK, DREAM_EATER, SWAGGER, U_TURN, SUBSTITUTE, DEFOG
; end
