	db 0 ; species ID placeholder

	db  60,  78, 135,  36,  91,  85
	evs 0, 0, 2, 0, 0, 0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, DRAGON ; type
	db 70 ; catch rate
	db 170 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/other/turtonator/front.dimensions"
	db SHELL_ARMOR, SHELL_ARMOR ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm ROAR, REST, FACADE, TAUNT, WORK_UP, SWAGGER, EXPLOSION, FOCUS_BLAST, FLING, DOUBLE_TEAM, ATTRACT, STONE_EDGE, SLEEP_TALK, SUNNY_DAY, BULLDOZE, DRAGON_CLAW, HIDDEN_POWER, RETURN, FLAMETHROWER, SOLARBEAM, CHARGE_BEAM, FIRE_BLAST, ROCK_TOMB, OVERHEAT, PAYBACK, FLASH_CANNON, EARTHQUAKE, SUBSTITUTE, TOXIC, BULK_UP, PROTECT, GIGA_IMPACT, HYPER_BEAM, WILL_O_WISP, FRUSTRATION
	; end
