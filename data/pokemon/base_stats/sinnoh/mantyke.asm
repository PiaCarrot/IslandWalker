db 0 ; species ID placeholder

db  45,   20,   50,   50,   60,  120
evs 0,   0,   0,   0,   0,   1
;   hp  atk  def  spd  sat  sdf

db WATER, FLYING ; type
db 25 ; catch rate
db 69 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 25 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/mantyke/front.dimensions"
db SWIFT_SWIM, WATER_ABSORB ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_XS ; drop item
db GROWTH_SLOW ; growth rate
dn EGG_NONE, EGG_NONE ; egg groups

; tm/hm learnset
	tmhm WATER_PULSE, SIGNAL_BEAM, HAIL, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, EARTHQUAKE, DOUBLE_TEAM, AERIAL_ACE, FACADE, REST, ATTRACT, SCALD, ENDURE, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, SURF, WATERFALL, WHIRLPOOL, DIVE
; end
