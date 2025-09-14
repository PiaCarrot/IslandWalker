db 0 ; species ID placeholder

db 125, 100,  80,  55,  85,  75
evs  2,  0,  0,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db NORMAL, NORMAL ; type
db 45 ; catch rate
db 182 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/other/dudunsparce/front.dimensions"
db SERENE_GRACE, RUN_AWAY ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_M ; drop item
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_GROUND, EGG_GROUND ; egg groups

; tm/hm learnset
	tmhm POISON_JAB, THUNDERBOLT, SOLARBEAM, SANDSTORM, GIGA_IMPACT, SUBSTITUTE, FLAMETHROWER, STONE_EDGE, STEALTH_ROCK, PSYCH_UP, CALM_MIND, REST, THIEF, ROCK_TOMB, DIG, EARTHQUAKE, HYPER_BEAM, FACADE, SLEEP_TALK, TOXIC, SUNNY_DAY, THUNDER, ROCK_SLIDE, BLIZZARD, FIRE_BLAST, SHADOW_BALL, ENDURE, RAIN_DANCE, GYRO_BALL, ICE_BEAM, BULLDOZE, PROTECT
; end
