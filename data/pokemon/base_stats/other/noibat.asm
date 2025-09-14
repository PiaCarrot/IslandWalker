	 db 0 ; species ID placeholder

	 db  40,  30,  35,  55,  45,  40
	 evs  0,   0,   0,   1,   0,   0
	 ;   hp  atk  def  spd  sat  sdf

	 db FLYING, DRAGON ; type
	 db 190 ; catch rate
	 db 49 ; base exp
	 dw NO_ITEM, NO_ITEM ; items
	 db GENDER_F50 ; gender ratio
	 db 20 ; step cycles to hatch
	 INCBIN "gfx/pokemon/other/noibat/front.dimensions"
	 db FRISK, INFILTRATOR ; wBaseAbility1, wBaseAbility2
	 dw EXP_CANDY_XS ; drop item
	 db GROWTH_MEDIUM_FAST ; growth rate
	 dn EGG_FLYING, EGG_DRAGON ; egg groups

	 ; tm/hm learnset
	 tmhm PSYCHIC_M, SUBSTITUTE, ENDURE, SLEEP_TALK, IRON_TAIL, SHADOW_BALL, TAUNT, DARK_PULSE, X_SCISSOR, DRAGON_PULSE
	 ; end
