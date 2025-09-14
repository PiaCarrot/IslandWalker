	db 0 ; species ID placeholder

	db  84,  71,  43,  48,  71,  43
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 120 ; catch rate
	db 126 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/loudred/front.dimensions"
	db SOUNDPROOF, SOUNDPROOF ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_S ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, ROAR, WORK_UP, SUNNY_DAY, TAUNT, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, SOLARBEAM, EARTHQUAKE, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, TORMENT, FACADE, REST, ATTRACT, OVERHEAT, FLING, ENDURE, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end
