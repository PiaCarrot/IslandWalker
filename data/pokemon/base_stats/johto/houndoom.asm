	db 0 ; species ID placeholder

	db  75,  90,  50,  95, 110,  80
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, FIRE ; type
	db 45 ; catch rate
	db 204 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/houndoom/front.dimensions"
	db EARLY_BIRD, FLASH_FIRE ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, SOLARBEAM, IRON_TAIL, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, SLUDGE_BOMB, FIRE_BLAST, TORMENT, FACADE, REST, ATTRACT, THIEF, OVERHEAT, ENDURE, WILL_O_WISP, NASTY_PLOT, PAYBACK, GIGA_IMPACT, SNARL, DARK_PULSE, SLEEP_TALK, DREAM_EATER, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end
