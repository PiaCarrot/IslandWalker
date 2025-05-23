	db 0 ; species ID placeholder

	db  35,  60,  44,  55,  40,  54
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 255 ; catch rate
	db 62 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/ekans/front.dimensions"
	db INTIMIDATE, SHED_SKIN ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, GIGA_DRAIN, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SLUDGE_BOMB, TORMENT, FACADE, SECRET_POWER, REST, ATTRACT, THIEF, SNATCH, STRENGTH
	; end
