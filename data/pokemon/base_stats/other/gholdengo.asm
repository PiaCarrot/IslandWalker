db 0 ; species ID placeholder

db  87,  60,  95,  84, 133,  91
evs  0,  0,  0,  0,  2,  0
;   hp  atk  def  spd  sat  sdf

db STEEL, GHOST ; type
db 45 ; catch rate
db 255 ; base exp
dw NO_ITEM, NO_ITEM ; items
db GENDER_UNKNOWN ; gender ratio
db 50 ; step cycles to hatch
INCBIN "gfx/pokemon/other/gholdengo/front.dimensions"
db GOOD_AS_GOLD, GOOD_AS_GOLD ; wBaseAbility1, wBaseAbility2
dw NULL ; Padding left-over from the unused back pic
db GROWTH_SLOW ; growth rate
dn EGG_NONE, EGG_NONE ; egg groups

; tm/hm learnset
	tmhm THUNDERBOLT, SANDSTORM, FOCUS_BLAST, GIGA_IMPACT, LOW_SWEEP, CHARGE_BEAM, SUBSTITUTE, REST, THIEF, FLASH_CANNON, HYPER_BEAM, PSYCHIC_M, SLEEP_TALK, FLING, REFLECT, THUNDER, NASTY_PLOT, SHADOW_BALL, DAZZLING_GLEAM, ENDURE, LIGHT_SCREEN, THUNDER_WAVE, FOCUS_PUNCH, PROTECT
; end
