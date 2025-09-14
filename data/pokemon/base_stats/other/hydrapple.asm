db 0 ; species ID placeholder

db 106,  80, 110,  44, 120,  80
evs  0,  0,  0,  0,  3,  0
;   hp  atk  def  spd  sat  sdf

db GRASS, DRAGON ; type
db 10 ; catch rate
db 255 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/hydrapple/front.dimensions"
db SUPERSWEET_SYRUP, REGENERATOR ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_XS ; drop item
db GROWTH_SLIGHTLY_SLOW ; growth rate
dn EGG_PLANT, EGG_DRAGON ; egg groups

; tm/hm learnset
	tmhm SOLARBEAM, BULLET_SEED, GRASS_KNOT, GIGA_IMPACT, SUBSTITUTE, GIGA_DRAIN, REST, HYPER_BEAM, ENERGY_BALL, DRAGON_PULSE, EARTHQUAKE, SLEEP_TALK, FACADE, SUNNY_DAY, REFLECT, NASTY_PLOT, ENDURE, RAIN_DANCE, GYRO_BALL, PROTECT
; end
