MACRO move_priority
	dw \1 ; move
	db \2 + 6 ; priority
ENDM

MoveEffectPriorities:
	move_priority SNATCH,       3
	move_priority PROTECT,      3
	move_priority DETECT,       3
	move_priority ENDURE,       3
	move_priority EXTREMESPEED, 1
	move_priority MACH_PUNCH,   1
	move_priority QUICK_ATTACK, 1
	; everything else at 0
	move_priority VITAL_THROW, -1
	move_priority COUNTER,     -5
	move_priority MIRROR_COAT, -5
	move_priority ROAR,        -6
	move_priority WHIRLWIND,   -6
	db -1, 0
