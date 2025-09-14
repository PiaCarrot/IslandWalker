db 0 ; species ID placeholder

db  46,  65,  65,  34,  55,  35
evs  0,  1,  0,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db STEEL, STEEL ; type
db 3 ; catch rate
db 135 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_UNKNOWN ; gender ratio
db 120 ; step cycles to hatch
INCBIN "gfx/pokemon/other/meltan/front.dimensions"
db MAGNET_PULL, MAGNET_PULL ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_S ; drop item
db GROWTH_SLOW ; growth rate
dn EGG_NONE, EGG_NONE ; egg groups

; tm/hm learnset
	tmhm THUNDER_WAVE, REST, FACADE, PROTECT
; end
