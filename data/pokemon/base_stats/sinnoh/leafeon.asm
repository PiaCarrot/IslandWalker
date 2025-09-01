db 0 ; species ID placeholder

db  65,  110,  130,   95,   60,   65
evs 0,   0,   2,   0,   0,   0
;   hp  atk  def  spd  sat  sdf

db GRASS, GRASS ; type
db 45 ; catch rate
db 184 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F12_5 ; gender ratio
db 35 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/leafeon/front.dimensions"
db LEAF_GUARD, LEAF_GUARD ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_GROUND, EGG_GROUND ; egg groups

; tm/hm learnset
     tmhm ROAR, BULLET_SEED, WORK_UP, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, SOLARBEAM, IRON_TAIL, DIG, SHADOW_BALL, DOUBLE_TEAM, AERIAL_ACE, FACADE, REST, ATTRACT, ENERGY_BALL, ENDURE, GIGA_IMPACT, FLASH, SWORDS_DANCE, X_SCISSOR, SLEEP_TALK, GRASS_KNOT, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
; end
