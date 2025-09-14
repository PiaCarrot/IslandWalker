db 0 ; species ID placeholder

db  40,  50,  40,  35,  50,  40
evs  0,  0,  0,  0,  1,  0
;   hp  atk  def  spd  sat  sdf

db FIRE, FIRE ; type
db 90 ; catch rate
db 51 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 35 ; step cycles to hatch
INCBIN "gfx/pokemon/other/charcadet/front.dimensions"
db FLASH_FIRE, FLASH_FIRE ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_XS ; drop item
db GROWTH_SLOW ; growth rate
dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

; tm/hm learnset
	tmhm WILL_O_WISP, SUBSTITUTE, FLAMETHROWER, REST, SLEEP_TALK, FACADE, SUNNY_DAY, FIRE_BLAST, ENDURE, OVERHEAT, PROTECT
; end
