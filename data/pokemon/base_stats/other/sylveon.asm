	 db 0 ; species ID placeholder

	 db  95,  65,  65,  60, 110, 130
	 evs  0,   0,   0,   0,   0,   2
	 ;   hp  atk  def  spd  sat  sdf

        db FAIRY, FAIRY ; type
	 db 45 ; catch rate
	 db 184 ; base exp
	 dw NO_ITEM, NO_ITEM ; items
	 db GENDER_F12_5 ; gender ratio
	 db 35 ; step cycles to hatch
	 INCBIN "gfx/pokemon/other/sylveon/front.dimensions"
	 db CUTE_CHARM, PIXILATE ; wBaseAbility1, wBaseAbility2
	 dw NULL ; Padding left-over from the unused back pic
	 db GROWTH_MEDIUM_FAST ; growth rate
	 dn EGG_GROUND, EGG_GROUND ; egg groups

	 ; tm/hm learnset
	 tmhm SUBSTITUTE, ENDURE, SLEEP_TALK, IRON_TAIL, SHADOW_BALL, SKILL_SWAP, CALM_MIND, WORK_UP, DAZZLING_GLEAM
	 ; end
