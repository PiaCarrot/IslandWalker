db 0 ; species ID placeholder

db  93,  90, 101,  95,  60,  81
evs  0,  0,  3,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db DARK, NORMAL ; type
db 45 ; catch rate
db 260 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 15 ; step cycles to hatch
INCBIN "gfx/pokemon/other/obstagoon/front.dimensions"
db RECKLESS, GUTS ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_GROUND, EGG_GROUND ; egg groups

; tm/hm learnset
	tmhm GIGA_IMPACT, SHADOW_CLAW, REST, THIEF, DIG, HYPER_BEAM, FACADE, FLING, SUNNY_DAY, RAIN_DANCE, WHIRLPOOL, THUNDER_WAVE, SNARL, PAYBACK, ATTRACT, BRICK_BREAK, PROTECT
; end
