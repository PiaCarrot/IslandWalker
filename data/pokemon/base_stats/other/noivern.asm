	 db 0 ; species ID placeholder

	 db  85,  70,  80, 123,  97,  80
	 evs  0,   0,   0,   2,   0,   0
	 ;   hp  atk  def  spd  sat  sdf

	 db FLYING, DRAGON ; type
	 db 45 ; catch rate
	 db 187 ; base exp
	 dw NO_ITEM, NO_ITEM ; items
	 db GENDER_F50 ; gender ratio
	 db 20 ; step cycles to hatch
	 INCBIN "gfx/pokemon/other/noivern/front.dimensions"
	 db FRISK, INFILTRATOR ; wBaseAbility1, wBaseAbility2
	 dw EXP_CANDY_M ; drop item
	 db GROWTH_MEDIUM_FAST ; growth rate
	 dn EGG_FLYING, EGG_DRAGON ; egg groups

	 ; tm/hm learnset
	 tmhm FLAMETHROWER, PSYCHIC_M, SUBSTITUTE, ENDURE, SLEEP_TALK, IRON_TAIL, SHADOW_BALL, TAUNT, DRAGON_CLAW, DARK_PULSE, X_SCISSOR, DRAGON_PULSE, FOCUS_BLAST
	 ; end
