	db 0 ; species ID placeholder

	db   1,  90,  45,  40,  30,  30
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, GHOST ; type
	db 45 ; catch rate
	db 95 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/shedinja/front.dimensions"
	db WONDER_GUARD, WONDER_GUARD ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_ERRATIC ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, DIG, SHADOW_BALL, DOUBLE_TEAM, SANDSTORM, AERIAL_ACE, FACADE, REST, THIEF, FALSE_SWIPE, ENDURE, WILL_O_WISP, BUG_BUZZ, SHADOW_CLAW, GIGA_IMPACT, FLASH, X_SCISSOR, SLEEP_TALK, DREAM_EATER, SWAGGER, SUBSTITUTE, CUT
	; end
