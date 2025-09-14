db 0 ; species ID placeholder

db  45,  30,  70,  10,  75,  70
evs  0,  0,  0,  0,  1,  0
;   hp  atk  def  spd  sat  sdf

db GHOST, GHOST ; type
db 45 ; catch rate
db 60 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_UNKNOWN ; gender ratio
db 50 ; step cycles to hatch
INCBIN "gfx/pokemon/other/gimmighoul/front.dimensions"
db RATTLED, COIN_COLLECTOR ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_XS ; drop item
db GROWTH_SLOW ; growth rate
dn EGG_NONE, EGG_NONE ; egg groups

; tm/hm learnset
	tmhm SUBSTITUTE, REFLECT, LIGHT_SCREEN, NASTY_PLOT, REST, THIEF, SHADOW_BALL, ENDURE, SLEEP_TALK, PROTECT
; end
