db 0 ; species ID placeholder

db  45,  35,  45,  35,  62,  53
evs  0,   0,   0,   0,   1,   0
;   hp  atk  def  spd  sat  sdf

db GRASS, GRASS ; type
db 190 ; catch rate
db 55 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/cherubi/front.dimensions"
db CHLOROPHYLL, CHLOROPHYLL ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_FAIRY, EGG_PLANT ; egg groups

; tm/hm learnset
tmhm BULLET_SEED, SUNNY_DAY, PROTECT, GIGA_DRAIN, SAFEGUARD, DAZZLING_GLEAM, SOLARBEAM, DOUBLE_TEAM, FACADE, REST, ATTRACT, ENERGY_BALL, ENDURE, FLASH, SWORDS_DANCE, SLEEP_TALK, GRASS_KNOT, SWAGGER, SUBSTITUTE
; end
