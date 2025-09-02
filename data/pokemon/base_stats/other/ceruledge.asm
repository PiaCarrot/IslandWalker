db 0 ; species ID placeholder

db  75, 125,  80,  85,  60, 100
evs  0,  2,  0,  0,  0,  0
;   hp  atk  def  spd  sat  sdf

db FIRE, GHOST ; type
db 25 ; catch rate
db 255 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_F50 ; gender ratio
db 35 ; step cycles to hatch
INCBIN "gfx/pokemon/other/ceruledge/front.dimensions"
db FLASH_FIRE, FLASH_FIRE ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_SLOW ; growth rate
dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

; tm/hm learnset
	tmhm WILL_O_WISP, POISON_JAB, SWORDS_DANCE, SHADOW_CLAW, SUBSTITUTE, FLAMETHROWER, PSYCH_UP, REST, FALSE_SWIPE, SLEEP_TALK, FACADE, BULK_UP, FLING, SUNNY_DAY, REFLECT, X_SCISSOR, FIRE_BLAST, SHADOW_BALL, TAUNT, ENDURE, LIGHT_SCREEN, OVERHEAT, BRICK_BREAK, DRAGON_CLAW, PROTECT
; end
