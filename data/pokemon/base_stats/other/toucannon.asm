	db 0 ; species ID placeholder

	db  80, 120,  75,  60,  75,  75
	evs 0, 3, 0, 0, 0, 0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 218 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/other/toucannon/front.dimensions"
	db KEEN_EYE, SKILL_LINK ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm FLY, REST, SWORDS_DANCE, ROOST, WORK_UP, SWAGGER, DOUBLE_TEAM, ATTRACT, SLEEP_TALK, SUNNY_DAY, HIDDEN_POWER, BRICK_BREAK, RETURN, STEEL_WING, U_TURN, FLASH_CANNON, OVERHEAT, SUBSTITUTE, THIEF, TOXIC, PROTECT, FRUSTRATION, AERIAL_ACE
	; end
