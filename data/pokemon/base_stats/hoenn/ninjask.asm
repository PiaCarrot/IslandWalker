	db 0 ; species ID placeholder

	db  61,  90,  45, 160,  50,  50
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 120 ; catch rate
	db 155 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/ninjask/front.dimensions"
	db SPEED_BOOST, INFILTRATOR ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_ERRATIC ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, DIG, SHADOW_BALL, DOUBLE_TEAM, SANDSTORM, AERIAL_ACE, FACADE, REST, THIEF, ROOST, FALSE_SWIPE, ENDURE, BUG_BUZZ, GIGA_IMPACT, FLASH, SWORDS_DANCE, X_SCISSOR, SLEEP_TALK, SWAGGER, U_TURN, SUBSTITUTE, CUT, DEFOG
	; end
