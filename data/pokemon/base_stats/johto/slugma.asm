	db 0 ; species ID placeholder

	db  40,  40,  40,  20,  70,  40
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 78 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/slugma/front.dimensions"
	db MAGMA_ARMOR, FLAME_BODY ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm SUNNY_DAY, LIGHT_SCREEN, PROTECT, DOUBLE_TEAM, REFLECT, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, FACADE, REST, ATTRACT, OVERHEAT, ENDURE, WILL_O_WISP, ROCK_SLIDE, SLEEP_TALK, SWAGGER, SUBSTITUTE, ROCK_SMASH
	; end
