	db 0 ; species ID placeholder

	db  35,  75,  30,  65,  30,  30
	evs 0, 1, 0, 0, 0, 0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 255 ; catch rate
	db 53 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/other/pikipek/front.dimensions"
	db KEEN_EYE, SKILL_LINK ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm FLY, REST, SWORDS_DANCE, ROOST, WORK_UP, SWAGGER, DOUBLE_TEAM, ATTRACT, SLEEP_TALK, SUNNY_DAY, HIDDEN_POWER, BRICK_BREAK, RETURN, STEEL_WING, U_TURN, SUBSTITUTE, THIEF, TOXIC, PROTECT, FRUSTRATION, AERIAL_ACE
	; end
