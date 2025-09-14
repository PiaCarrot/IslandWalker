db 0 ; species ID placeholder

db 110,  130,   80,   80,   70,   60
evs 0,   3,   0,   0,   0,   0
;   hp  atk  def  spd  sat  sdf

db ICE, GROUND ; type
db 50 ; catch rate
db 239 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/mamoswine/front.dimensions"
db OBLIVIOUS, SNOW_CLOAK ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_L ; drop item
db GROWTH_SLOW ; growth rate
dn EGG_GROUND, EGG_GROUND ; egg groups

; tm/hm learnset
	tmhm ROAR, HAIL, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, EARTHQUAKE, DIG, DOUBLE_TEAM, REFLECT, SANDSTORM, ROCK_TOMB, FACADE, REST, ATTRACT, ENDURE, GIGA_IMPACT, STONE_EDGE, AVALANCHE, STEALTH_ROCK, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH, ROCK_CLIMB
; end
