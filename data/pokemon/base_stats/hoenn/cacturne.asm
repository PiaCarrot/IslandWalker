	db 0 ; species ID placeholder

	db  70, 115,  60,  55, 115,  60
	evs  0,   1,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, DARK ; type
	db 60 ; catch rate
	db 177 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/cacturne/front.dimensions"
	db SAND_VEIL, SAND_VEIL ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, BULLET_SEED, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLAR_BEAM, BRICK_BREAK, DOUBLE_TEAM, SANDSTORM, FACADE, REST, ATTRACT, FOCUS_BLAST, ENERGY_BALL, FLING, ENDURE, DRAIN_PUNCH, NASTY_PLOT, PAYBACK, GIGA_IMPACT, FLASH, SWORDS_DANCE, DARK_PULSE, SLEEP_TALK, POISON_JAB, GRASS_KNOT, SWAGGER, SUBSTITUTE, CUT, STRENGTH
	; end
