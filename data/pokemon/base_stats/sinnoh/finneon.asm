db 0 ; species ID placeholder

db  49,   49,   56,   66,   49,   61
evs 0,   0,   0,   1,   0,   0
;   hp  atk  def  spd  sat  sdf

db WATER, WATER ; type
db 190 ; catch rate
db 66 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/finneon/front.dimensions"
db SWIFT_SWIM, STORM_DRAIN ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_ERRATIC ; growth rate
dn EGG_WATER_2, EGG_WATER_2 ; egg groups

; tm/hm learnset
	tmhm WATER_PULSE, HAIL, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, SAFEGUARD, DOUBLE_TEAM, FACADE, REST, ATTRACT, SCALD, BRINE, ENDURE, PAYBACK, FLASH, PSYCH_UP, SLEEP_TALK, SWAGGER, U_TURN, SUBSTITUTE, SURF, DEFOG, WATERFALL, WHIRLPOOL, DIVE
; end
