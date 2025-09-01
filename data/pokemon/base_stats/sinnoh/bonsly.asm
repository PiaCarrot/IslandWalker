db 0 ; species ID placeholder

db  50,  80,  95,  10,  10,  45
evs  0,   0,   1,   0,   0,   0
;   hp  atk  def  spd  sat  sdf

db ROCK, ROCK ; type
db 255 ; catch rate
db 58 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 20 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/bonsly/front.dimensions"
db STURDY, ROCK_HEAD ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_NONE, EGG_NONE ; egg groups

; tm/hm learnset
	tmhm CALM_MIND, SUNNY_DAY, PROTECT, DIG, BRICK_BREAK, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, FACADE, REST, ATTRACT, THIEF, ENDURE, EXPLOSION, ROCK_POLISH, STEALTH_ROCK, PSYCH_UP, ROCK_SLIDE, SLEEP_TALK, SWAGGER, SUBSTITUTE
; end
