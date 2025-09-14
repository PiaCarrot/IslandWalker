	db 0 ; species ID placeholder

	db  55,  90,  80,  96,  50, 105
	evs 0, 0, 0, 0, 0, 2
	;   hp  atk  def  spd  sat  sdf

        db GHOST, FAIRY ; type
	db 45 ; catch rate
	db 167 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/other/mimikyu/front.dimensions"
	db DISGUISE, DISGUISE ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm REST, TRICK_ROOM, FACADE, DAZZLING_GLEAM, SWORDS_DANCE, PSYCH_UP, THUNDER, TAUNT, WORK_UP, DARK_PULSE, SWAGGER, LIGHT_SCREEN, FLING, SAFEGUARD, THUNDERBOLT, DOUBLE_TEAM, DREAM_EATER, ATTRACT, SLEEP_TALK, THUNDER_WAVE, HIDDEN_POWER, RETURN, SHADOW_BALL, PSYCHIC_M, CHARGE_BEAM, X_SCISSOR, PAYBACK, GIGA_DRAIN, SUBSTITUTE, THIEF, TOXIC, BULK_UP, PROTECT, EMBARGO, SHADOW_CLAW, GIGA_IMPACT, DRAIN_PUNCH, HYPER_BEAM, WILL_O_WISP, FRUSTRATION
	; end
