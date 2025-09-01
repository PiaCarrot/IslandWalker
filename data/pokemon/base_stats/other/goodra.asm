	 db 0 ; species ID placeholder

	 db  90, 100,  70,  80, 110, 150
	 evs  0,   0,   0,   0,   0,   3
	 ;   hp  atk  def  spd  sat  sdf

	 db DRAGON, DRAGON ; type
	 db 45 ; catch rate
	 db 270 ; base exp
	 dw NO_ITEM, NO_ITEM ; items
	 db GENDER_F50 ; gender ratio
	 db 40 ; step cycles to hatch
	 INCBIN "gfx/pokemon/other/goodra/front.dimensions"
	 db SAP_SIPPER, HYDRATION ; wBaseAbility1, wBaseAbility2
	 dw NULL ; Padding left-over from the unused back pic
	 db GROWTH_SLOW ; growth rate
	 dn EGG_DRAGON, EGG_DRAGON ; egg groups

	 ; tm/hm learnset
	 tmhm FLAMETHROWER, SURF, ICE_BEAM, BLIZZARD, THUNDERBOLT, THUNDER, EARTHQUAKE, FIRE_BLAST, SUBSTITUTE, SLUDGE_BOMB, ENDURE, SLEEP_TALK, IRON_TAIL, DRAGON_PULSE, FOCUS_BLAST
	 ; end
