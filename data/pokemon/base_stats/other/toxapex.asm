	db 0 ; species ID placeholder

	db  50,  63, 152,  35,  53, 142
	evs 0, 0, 2, 0, 0, 0
	;   hp  atk  def  spd  sat  sdf

	db POISON, WATER ; type
	db 75 ; catch rate
	db 173 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/other/toxapex/front.dimensions"
	db MERCILESS, LIMBER ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm ICE_BEAM, REST, SLUDGE_BOMB, RAIN_DANCE, FACADE, SURF, SWAGGER, LIGHT_SCREEN, SCALD, SAFEGUARD, DOUBLE_TEAM, ATTRACT, POISON_JAB, SLEEP_TALK, HIDDEN_POWER, RETURN, HAIL, PAYBACK, SUBSTITUTE, TOXIC, PROTECT, BLIZZARD, BRINE, FRUSTRATION
	; end
