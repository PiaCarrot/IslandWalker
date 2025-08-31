	db 0 ; species ID placeholder

	db  40,  60,  40,  30,  40,  40
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 255 ; catch rate
	db 54 ; base exp
	dw SPIDER_SILK, SPIDER_SILK ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/spinarak/front.dimensions"
	db SWARM, INSOMNIA ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SUNNY_DAY, PROTECT, GIGA_DRAIN, SOLARBEAM, DIG, PSYCHIC_M, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, THIEF, ENDURE, BUG_BUZZ, FLASH, X_SCISSOR, SLEEP_TALK, POISON_JAB, SWAGGER, SUBSTITUTE
	; end
