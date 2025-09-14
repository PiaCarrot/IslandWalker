db 0 ; species ID placeholder

db  85,  60, 100,  75, 125,  80
evs  0,  0,  0,  0,  2,  0
;   hp  atk  def  spd  sat  sdf

db FIRE, PSYCHIC_TYPE ; type
db 25 ; catch rate
db 255 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 35 ; step cycles to hatch
INCBIN "gfx/pokemon/other/armarouge/front.dimensions"
db FLASH_FIRE, FLASH_FIRE ; wBaseAbility1, wBaseAbility2
dw EXP_CANDY_XS ; drop item
db GROWTH_SLOW ; growth rate
dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

; tm/hm learnset
	tmhm WILL_O_WISP, SOLARBEAM, TRICK_ROOM, FOCUS_BLAST, SUBSTITUTE, FLAMETHROWER, PSYCH_UP, CALM_MIND, REST, FLASH_CANNON, ENERGY_BALL, DRAGON_PULSE, PSYCHIC_M, SLEEP_TALK, FACADE, FLING, SUNNY_DAY, REFLECT, FIRE_BLAST, SHADOW_BALL, TAUNT, ENDURE, LIGHT_SCREEN, DARK_PULSE, OVERHEAT, PROTECT
; end
