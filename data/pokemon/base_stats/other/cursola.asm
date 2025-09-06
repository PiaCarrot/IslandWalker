db 0 ; species ID placeholder

db  60,  95,  50,  30, 145, 130
evs  0,  0,  0,  0,  2,  0
;   hp  atk  def  spd  sat  sdf

db GHOST, GHOST ; type
db 30 ; catch rate
db 179 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F75 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/cursola/front.dimensions"
db WEAK_ARMOR, PERISH_BODY ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_FAST ; growth rate
dn EGG_WATER_1, EGG_WATER_3 ; egg groups

; tm/hm learnset
	tmhm WILL_O_WISP, SANDSTORM, GIGA_IMPACT, HAIL, GIGA_DRAIN, REST, ROCK_TOMB, SAFEGUARD, DIG, HYPER_BEAM, FACADE, REFLECT, SUNNY_DAY, ROCK_SLIDE, BRINE, RAIN_DANCE, LIGHT_SCREEN, WHIRLPOOL, ATTRACT, BULLDOZE, PROTECT
; end
