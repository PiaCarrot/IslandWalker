	db 0 ; species ID placeholder

	db 115, 115,  85, 100,  90,  75
	evs  1,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 3 ; catch rate
	db 217 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/entei/front.dimensions"
	db INNER_FOCUS, FLASH_FIRE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, ROAR, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLARBEAM, IRON_TAIL, DIG, SHADOW_BALL, DOUBLE_TEAM, REFLECT, FLAMETHROWER, SANDSTORM, FIRE_BLAST, FACADE, REST, OVERHEAT, ENDURE, WILL_O_WISP, GIGA_IMPACT, FLASH, STONE_EDGE, PSYCH_UP, SNARL, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end
