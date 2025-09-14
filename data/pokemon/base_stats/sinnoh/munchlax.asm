db 0 ; species ID placeholder

db 135,  85,  40,   5,  40,  85
evs 1,   0,   0,   0,   0,   0
;   hp  atk  def  spd  sat  sdf

db NORMAL, NORMAL ; type
db 50 ; catch rate
db 78 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F12_5 ; gender ratio
db 40 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/munchlax/front.dimensions"
db PICKUP, THICK_FAT ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_XS ; drop item
db GROWTH_SLOW ; growth rate
dn EGG_NONE, EGG_NONE ; egg groups

; tm/hm learnset
    tmhm FOCUS_PUNCH, WATER_PULSE, WORK_UP, SUNNY_DAY, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, SOLARBEAM, THUNDERBOLT, THUNDER, EARTHQUAKE, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, FACADE, REST, ATTRACT, FLING, ENDURE, RECYCLE, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, SURF, STRENGTH, ROCK_SMASH, ROCK_CLIMB
; end
