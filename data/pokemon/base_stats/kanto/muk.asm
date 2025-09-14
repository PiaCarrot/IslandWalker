	db 0 ; species ID placeholder

	db 105, 105,  75,  50,  65, 100
	evs  1,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 75 ; catch rate
	db 157 ; base exp
	dw NO_ITEM, NUGGET ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/muk/front.dimensions"
	db STENCH, STICKY_HOLD ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, THUNDERBOLT, THUNDER, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, SLUDGE_BOMB, FIRE_BLAST, ROCK_TOMB, TORMENT, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, FLING, ENDURE, EXPLOSION, PAYBACK, GIGA_IMPACT, DARK_PULSE, ROCK_SLIDE, SLEEP_TALK, POISON_JAB, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end
