	db 0 ; species ID placeholder

	db  50,  65,  64,  43,  44,  48
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 66 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/totodile/front.dimensions"
	db TORRENT, SHEER_FORCE ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, DRAGON_CLAW, WATER_PULSE, HAIL, WORK_UP, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, IRON_TAIL, DIG, BRICK_BREAK, DOUBLE_TEAM, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, SCALD, FLING, ENDURE, SHADOW_CLAW, SWORDS_DANCE, ROCK_SLIDE, SLEEP_TALK, SWAGGER, SUBSTITUTE, CUT, SURF, WATERFALL, WHIRLPOOL
	; end
