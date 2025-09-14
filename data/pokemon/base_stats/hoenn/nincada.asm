	db 0 ; species ID placeholder

	db  31,  45,  90,  40,  30,  30
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, GROUND ; type
	db 255 ; catch rate
	db 65 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/nincada/front.dimensions"
	db COMPOUNDEYES, RUN_AWAY ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_ERRATIC ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SUNNY_DAY, PROTECT, GIGA_DRAIN, SOLARBEAM, DIG, SHADOW_BALL, DOUBLE_TEAM, SANDSTORM, AERIAL_ACE, FACADE, REST, FALSE_SWIPE, ENDURE, BUG_BUZZ, FLASH, X_SCISSOR, SLEEP_TALK, SWAGGER, SUBSTITUTE, CUT
	; end
