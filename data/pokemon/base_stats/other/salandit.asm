	db 0 ; species ID placeholder

	db  48,  44,  40,  77,  71,  40
	evs 0, 0, 0, 1, 0, 0
	;   hp  atk  def  spd  sat  sdf

	db POISON, FIRE ; type
	db 120 ; catch rate
	db 64 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/other/salandit/front.dimensions"
	db CORROSION, OBLIVIOUS ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm REST, SLUDGE_BOMB, FACADE, TAUNT, SWAGGER, FLING, DOUBLE_TEAM, ATTRACT, POISON_JAB, SLEEP_TALK, THUNDER_WAVE, DRAGON_CLAW, HIDDEN_POWER, RETURN, FLAMETHROWER, TORMENT, FIRE_BLAST, OVERHEAT, PAYBACK, SUBSTITUTE, THIEF, TOXIC, PROTECT, SHADOW_CLAW, WILL_O_WISP, FRUSTRATION
	; end
