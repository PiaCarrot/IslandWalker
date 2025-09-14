	db 0 ; species ID placeholder

	db  70, 100,  70,  40, 105,  75
	evs  0,   1,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, GROUND ; type
	db 150 ; catch rate
	db 175 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/camerupt/front.dimensions"
	db MAGMA_ARMOR, SOLID_ROCK ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, SUNNY_DAY, HYPER_BEAM, PROTECT, SOLARBEAM, EARTHQUAKE, DIG, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, FACADE, REST, ATTRACT, OVERHEAT, ENDURE, WILL_O_WISP, EXPLOSION, GIGA_IMPACT, ROCK_POLISH, STONE_EDGE, STEALTH_ROCK, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, FLASH_CANNON, STRENGTH, ROCK_SMASH
	; end
