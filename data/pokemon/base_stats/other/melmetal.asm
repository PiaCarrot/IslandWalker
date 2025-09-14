db 0 ; species ID placeholder

db 135, 143, 143,  34,  80,  65
evs  0,  3,  0,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db STEEL, STEEL ; type
db 3 ; catch rate
db 255 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_UNKNOWN ; gender ratio
db 120 ; step cycles to hatch
INCBIN "gfx/pokemon/other/melmetal/front.dimensions"
db IRON_FIST, IRON_FIST ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_L ; drop item
db GROWTH_SLOW ; growth rate
dn EGG_NONE, EGG_NONE ; egg groups

; tm/hm learnset
	tmhm SOLARBEAM, GIGA_IMPACT, REST, ROCK_TOMB, HYPER_BEAM, FACADE, ROCK_SLIDE, THUNDER_WAVE, BRICK_BREAK, PROTECT
; end
