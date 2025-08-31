	db 0 ; species ID placeholder

	db  95, 135,  80, 100, 110,  80
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FLYING ; type
	db 45 ; catch rate
	db 218 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/salamence/front.dimensions"
	db INTIMIDATE, INTIMIDATE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm DRAGON_CLAW, ROAR, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, EARTHQUAKE, BRICK_BREAK, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, STEEL_WING, ROOST, ENDURE, DRAGON_PULSE, SHADOW_CLAW, GIGA_IMPACT, STONE_EDGE, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, CUT, FLY, STRENGTH, DEFOG, ROCK_SMASH
	; end
