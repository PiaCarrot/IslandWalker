db 0 ; species ID placeholder

db  42,  52,  67,  50,  39,  56
evs  0,  1,  0,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db ROCK, WATER ; type
db 120 ; catch rate
db 61 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/binacle/front.dimensions"
db TOUGH_CLAWS, SNIPER ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_WATER_3, EGG_WATER_3 ; egg groups

; tm/hm learnset
	tmhm POISON_JAB, SANDSTORM, SWORDS_DANCE, GRASS_KNOT, SHADOW_CLAW, SUBSTITUTE, TORMENT, FRUSTRATION, AERIAL_ACE, SLUDGE_BOMB, SURF, DOUBLE_TEAM, STONE_EDGE, REST, ROCK_TOMB, SAFEGUARD, THIEF, DIG, EARTHQUAKE, FALSE_SWIPE, FACADE, SLEEP_TALK, TOXIC, FLING, X_SCISSOR, ROCK_POLISH, ROCK_SLIDE, BLIZZARD, EMBARGO, TAUNT, SWAGGER, RAIN_DANCE, SCALD, ICE_BEAM, PAYBACK, HIDDEN_POWER, ATTRACT, BRICK_BREAK, BULLDOZE, RETURN, PROTECT
; end
