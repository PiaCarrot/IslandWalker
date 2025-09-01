db 0 ; species ID placeholder

db  74,  100,   72,   46,   90,   72
evs 0,   2,   0,   0,   0,   0
;   hp  atk  def  spd  sat  sdf

db GRASS, GRASS ; type
db 200 ; catch rate
db 159 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 25 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/carnivine/front.dimensions"
db LEVITATE, LEVITATE ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_SLOW ; growth rate
dn EGG_PLANT, EGG_PLANT ; egg groups

; tm/hm learnset
        tmhm BULLET_SEED, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, THIEF, ENERGY_BALL, FLING, ENDURE, PAYBACK, GIGA_IMPACT, FLASH, SWORDS_DANCE, SLEEP_TALK, GRASS_KNOT, SWAGGER, SUBSTITUTE, CUT
; end
