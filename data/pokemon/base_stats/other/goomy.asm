	 db 0 ; species ID placeholder

	 db  45,  50,  35,  40,  55,  75
	 evs  0,   0,   0,   0,   0,   1
	 ;   hp  atk  def  spd  sat  sdf

	 db DRAGON, DRAGON ; type
	 db 45 ; catch rate
	 db 60 ; base exp
	 dw NO_ITEM, NO_ITEM ; items
	 db GENDER_F50 ; gender ratio
	 db 40 ; step cycles to hatch
	 INCBIN "gfx/pokemon/other/goomy/front.dimensions"
	 db SAP_SIPPER, HYDRATION ; wBaseAbility1, wBaseAbility2
	 dw NULL ; Padding left-over from the unused back pic
	 db GROWTH_SLOW ; growth rate
	 dn EGG_DRAGON, EGG_DRAGON ; egg groups

	 ; tm/hm learnset
	 tmhm THUNDERBOLT, SUBSTITUTE, SLUDGE_BOMB, ENDURE, SLEEP_TALK, IRON_TAIL, DRAGON_PULSE
	 ; end
