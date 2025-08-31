	db 0 ; species ID placeholder

	db  50, 105, 125,  50,  55,  95
	evs  0,   1,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 45 ; catch rate
	db 98 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/mawile/front.dimensions"
	db HYPER_CUTTER, INTIMIDATE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, SUNNY_DAY, TAUNT, ICE_BEAM, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLARBEAM, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, FLAMETHROWER, SLUDGE_BOMB, SANDSTORM, FIRE_BLAST, ROCK_TOMB, TORMENT, FACADE, REST, ATTRACT, FOCUS_BLAST, FALSE_SWIPE, FLING, CHARGE_BEAM, ENDURE, PAYBACK, GIGA_IMPACT, STONE_EDGE, SWORDS_DANCE, STEALTH_ROCK, DARK_PULSE, ROCK_SLIDE, SLEEP_TALK, GRASS_KNOT, SWAGGER, SUBSTITUTE, FLASH_CANNON, STRENGTH, ROCK_SMASH
	; end
