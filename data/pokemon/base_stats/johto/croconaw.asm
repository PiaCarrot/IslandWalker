	db 0 ; species ID placeholder

	db  65,  80,  80,  58,  59,  63
	evs  0,   1,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 143 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/croconaw/front.dimensions"
	db TORRENT, SHEER_FORCE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, DRAGON_CLAW, WATER_PULSE, ROAR, HAIL, WORK_UP, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, IRON_TAIL, DIG, BRICK_BREAK, DOUBLE_TEAM, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, SCALD, FLING, ENDURE, SHADOW_CLAW, SWORDS_DANCE, ROCK_SLIDE, SLEEP_TALK, SWAGGER, SUBSTITUTE, CUT, SURF, STRENGTH, ROCK_SMASH, WATERFALL, WHIRLPOOL
	; end
