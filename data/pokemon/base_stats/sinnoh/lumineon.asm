db 0 ; species ID placeholder

db  69,   69,   76,   91,   69,   86
evs 0,   0,   0,   2,   0,   0
;   hp  atk  def  spd  sat  sdf

db WATER, WATER ; type
db 75 ; catch rate
db 161 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/lumineon/front.dimensions"
db SWIFT_SWIM, STORM_DRAIN ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_ERRATIC ; growth rate
dn EGG_WATER_2, EGG_WATER_2 ; egg groups

; tm/hm learnset
	tmhm WATER_PULSE, SIGNAL_BEAM, HAIL, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SAFEGUARD, DOUBLE_TEAM, FACADE, REST, ATTRACT, SCALD, BRINE, ENDURE, PAYBACK, GIGA_IMPACT, FLASH, PSYCH_UP, SLEEP_TALK, SWAGGER, U_TURN, SUBSTITUTE, SURF, DEFOG, WATERFALL, WHIRLPOOL, DIVE
; end
