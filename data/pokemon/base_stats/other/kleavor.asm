db 0 ; species ID placeholder

db  70, 135,  95,  85,  45,  70
evs  0,  2,  0,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db BUG, ROCK ; type
db 115 ; catch rate
db 175 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/kleavor/front.dimensions"
db SWARM, SHEER_FORCE ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_XS ; drop item
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_BUG, EGG_BUG ; egg groups

; tm/hm learnset
	tmhm SANDSTORM, SWORDS_DANCE, GIGA_IMPACT, SUBSTITUTE, AERIAL_ACE, STONE_EDGE, STEALTH_ROCK, REST, THIEF, ROCK_TOMB, HYPER_BEAM, FALSE_SWIPE, FACADE, SLEEP_TALK, SUNNY_DAY, X_SCISSOR, U_TURN, ROCK_SLIDE, BUG_BUZZ, ENDURE, RAIN_DANCE, LIGHT_SCREEN, BRICK_BREAK, PROTECT
; end
