db 0 ; species ID placeholder

db  85, 115,  95,  85,  65,  65
evs  0,  1,  0,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db DARK, POISON ; type
db 135 ; catch rate
db 179 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/overqwil/front.dimensions"
db POISON_POINT, SWIFT_SWIM ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_WATER_2, EGG_WATER_2 ; egg groups

; tm/hm learnset
	tmhm POISON_JAB, WATERFALL, SWORDS_DANCE, GIGA_IMPACT, SUBSTITUTE, WATER_PULSE, SURF, SLUDGE_BOMB, REST, HYPER_BEAM, FACADE, SLEEP_TALK, TOXIC, BLIZZARD, SHADOW_BALL, TAUNT, ENDURE, RAIN_DANCE, GYRO_BALL, DARK_PULSE, ICE_BEAM, PROTECT
; end
