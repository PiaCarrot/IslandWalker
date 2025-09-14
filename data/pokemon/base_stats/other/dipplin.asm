db 0 ; species ID placeholder

db  80,  80, 110,  40,  95,  80
evs  0,  0,  2,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db GRASS, DRAGON ; type
db 45 ; catch rate
db 170 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_UNKNOWN ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/dipplin/front.dimensions"
db SUPERSWEET_SYRUP, GLUTTONY ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_XS ; drop item
db GROWTH_SLOW ; growth rate
dn EGG_PLANT, EGG_DRAGON ; egg groups

; tm/hm learnset
	tmhm SOLARBEAM, BULLET_SEED, GRASS_KNOT, GIGA_IMPACT, SUBSTITUTE, GIGA_DRAIN, REST, HYPER_BEAM, ENERGY_BALL, DRAGON_PULSE, SLEEP_TALK, FACADE, SUNNY_DAY, REFLECT, ENDURE, GYRO_BALL, PROTECT
; end
