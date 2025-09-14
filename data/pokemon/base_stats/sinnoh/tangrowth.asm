db 0 ; species ID placeholder

db 100,  100,  125,   50,  110,   50
evs 0,   0,   2,   0,   0,   0
;   hp  atk  def  spd  sat  sdf

db GRASS, GRASS ; type
db 30 ; catch rate
db 187 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/tangrowth/front.dimensions"
db CHLOROPHYLL, LEAF_GUARD ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_XS ; drop item
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_PLANT, EGG_PLANT ; egg groups

; tm/hm learnset
	tmhm BULLET_SEED, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, EARTHQUAKE, BRICK_BREAK, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, SLUDGE_BOMB, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, ENERGY_BALL, FLING, ENDURE, PAYBACK, GIGA_IMPACT, FLASH, SWORDS_DANCE, PSYCH_UP, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, POISON_JAB, GRASS_KNOT, SWAGGER, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH
; end
