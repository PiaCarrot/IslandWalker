	db 0 ; species ID placeholder

	db  45,  65,  40,  60,  30,  40
	evs 0, 1, 0, 0, 0, 0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 190 ; catch rate
	db 56 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/other/rockruff/front.dimensions"
	db KEEN_EYE, VITAL_SPIRIT ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, REST, FACADE, ROCK_SLIDE, TAUNT, SWAGGER, ROCK_POLISH, DOUBLE_TEAM, ATTRACT, STONE_EDGE, SLEEP_TALK, HIDDEN_POWER, RETURN, ROCK_TOMB, SUBSTITUTE, TOXIC, PROTECT, SNARL, FRUSTRATION
	; end
