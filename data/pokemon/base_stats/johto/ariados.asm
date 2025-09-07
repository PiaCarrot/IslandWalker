	db 0 ; species ID placeholder

	db  70,  90,  70,  40,  60,  60
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 90 ; catch rate
	db 134 ; base exp
	dw SPIDER_SILK, SPIDER_SILK ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/ariados/front.dimensions"
	db SWARM, INSOMNIA ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SIGNAL_BEAM, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, DIG, PSYCHIC_M, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, THIEF, ENDURE, BUG_BUZZ, GIGA_IMPACT, FLASH, SWORDS_DANCE, X_SCISSOR, SLEEP_TALK, POISON_JAB, SWAGGER, SUBSTITUTE
	; end
