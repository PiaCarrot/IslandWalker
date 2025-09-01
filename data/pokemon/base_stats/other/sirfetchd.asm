db 0 ; species ID placeholder

db  62, 135,  95,  65,  68,  82
evs  0,  2,  0,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db FIGHTING, FIGHTING ; type
db 45 ; catch rate
db 177 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/sirfetchd/front.dimensions"
db STEADFAST, STEADFAST ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_FLYING, EGG_GROUND ; egg groups

; tm/hm learnset
	tmhm SUNNY_DAY, FACADE, REST, ATTRACT, BRICK_BREAK, STEEL_WING, PROTECT
; end
