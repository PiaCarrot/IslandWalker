db 0 ; species ID placeholder

db  70,  60,  70,  85,  87,  78
evs  0,   0,   0,   0,   2,   0
;   hp  atk  def  spd  sat  sdf

db GRASS, GRASS ; type
db 75 ; catch rate
db 158 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/cherrim/front.dimensions"
db FLOWER_GIFT, FLOWER_GIFT ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_XS ; drop item
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_FAIRY, EGG_PLANT ; egg groups

; tm/hm learnset
tmhm BULLET_SEED, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SAFEGUARD, DAZZLING_GLEAM, SOLARBEAM, DOUBLE_TEAM, FACADE, REST, ATTRACT, ENERGY_BALL, ENDURE, GIGA_IMPACT, FLASH, SWORDS_DANCE, SLEEP_TALK, GRASS_KNOT, SWAGGER, SUBSTITUTE
; end
