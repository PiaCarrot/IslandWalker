	db 0 ; species ID placeholder

	db  65, 100,  70, 105,  80,  80
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 60 ; catch rate
	db 192 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/rapidash/front.dimensions"
	db RUN_AWAY, FLASH_FIRE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SUNNY_DAY, HYPER_BEAM, PROTECT, SOLAR_BEAM, IRON_TAIL, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, FACADE, REST, ATTRACT, OVERHEAT, ENDURE, WILL_O_WISP, GIGA_IMPACT, SWORDS_DANCE, SLEEP_TALK, POISON_JAB, SWAGGER, SUBSTITUTE, STRENGTH
	; end
