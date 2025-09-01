db 0 ; species ID placeholder

db  75,   95,   67,   83,  125,   95
evs 0,   0,   0,   0,   3,   0
;   hp  atk  def  spd  sat  sdf

db FIRE, FIRE ; type
db 30 ; catch rate
db 243 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F25 ; gender ratio
db 25 ; step cycles to hatch
INCBIN "gfx/pokemon/sinnoh/magmortar/front.dimensions"
db FLAME_BODY, FLAME_BODY ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_MEDIUM_FAST ; growth rate
dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

; tm/hm learnset
	tmhm FOCUS_PUNCH, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, SOLARBEAM, IRON_TAIL, THUNDERBOLT, EARTHQUAKE, LOW_SWEEP, PSYCHIC_M, BRICK_BREAK, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, TORMENT, FACADE, REST, ATTRACT, THIEF, OVERHEAT, FOCUS_BLAST, FLING, ENDURE, WILL_O_WISP, GIGA_IMPACT, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH, ROCK_CLIMB
; end
