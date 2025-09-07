db 0 ; species ID placeholder

db  65,   60,  110,   65,  130,   95
evs 0,   0,   0,   0,   2,   0
;   hp  atk  def  spd  sat  sdf

db ICE, ICE ; type
db 45 ; catch rate
db 184 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F12_5 ; gender ratio
db 35 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/glaceon/front.dimensions"
db SNOW_CLOAK, SNOW_CLOAK ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_GROUND, EGG_GROUND ; egg groups

; tm/hm learnset
	tmhm WATER_PULSE, SIGNAL_BEAM, ROAR, HAIL, WORK_UP, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, DIG, SHADOW_BALL, DOUBLE_TEAM, FACADE, REST, ATTRACT, ENDURE, GIGA_IMPACT, AVALANCHE, SLEEP_TALK, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
; end
