db 0 ; species ID placeholder

db  70,   70,  115,   60,  130,   90
evs 0,   0,   0,   0,   3,   0
;   hp  atk  def  spd  sat  sdf

db ELECTRIC, STEEL ; type
db 30 ; catch rate
db 241 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_UNKNOWN ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/magnezone/front.dimensions"
db MAGNET_PULL, ANALYTIC ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_MINERAL, EGG_MINERAL ; egg groups

; tm/hm learnset
	tmhm SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, FACADE, VOLT_SWITCH, REST, CHARGE_BEAM, ENDURE, EXPLOSION, RECYCLE, GIGA_IMPACT, FLASH, THUNDER_WAVE, GYRO_BALL, PSYCH_UP, SLEEP_TALK, SWAGGER, SUBSTITUTE, FLASH_CANNON
; end
