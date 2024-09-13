TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	dw TreeMonSet_Sky1
	dw TreeMonSet_Depths1
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	dbbw 60, 10, SPINARAK
	dbbw 30, 10, LEDYBA
	dbbw 5, 10, AIPOM
	dbbw 4, 10, LICKITUNG
	dbbw 1, 10, LICKITUNG
	db -1
; rare
	dbbw 60, 10, SPINARAK
	dbbw 30, 10, LEDYBA
	dbbw 5, 10, AIPOM
	dbbw 4, 10, LICKITUNG
	dbbw 1, 10, LICKITUNG
	db -1

TreeMonSet_Town:
; common
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, EKANS
	dbbw 15, 10, SPEAROW
	dbbw 10, 10, AIPOM
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1
; rare
	dbbw 50, 10, SPEAROW
	dbbw 15, 10, HERACROSS
	dbbw 15, 10, HERACROSS
	dbbw 10, 10, AIPOM
	dbbw  5, 10, AIPOM
	dbbw  5, 10, AIPOM
	db -1

TreeMonSet_Route:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, SPINARAK
	dbbw 15, 10, LEDYBA
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Kanto:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, EKANS
	dbbw 15, 10, HOOTHOOT
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Lake:
; common
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, VENONAT
	dbbw 15, 10, HOOTHOOT
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1
; rare
	dbbw 50, 10, HOOTHOOT
	dbbw 15, 10, PINECO
	dbbw 15, 10, PINECO
	dbbw 10, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	dbbw  5, 10, EXEGGCUTE
	db -1

TreeMonSet_Forest:
; common
	dbbw 60, 2, SPINARAK
	dbbw 30, 2, LEDYBA
	dbbw 5, 2, AIPOM
	dbbw 4, 2, LICKITUNG
	dbbw 1, 2, LICKITUNG
	db -1
; rare
	dbbw 60, 2, SPINARAK
	dbbw 30, 2, LEDYBA
	dbbw 5, 2, AIPOM
	dbbw 4, 2, LICKITUNG
	dbbw 1, 2, LICKITUNG
	db -1

TreeMonSet_Rock:
	dbbw 60, 15, KRABBY
	dbbw 30, 15, GEODUDE
	dbbw 5, 15, SHUCKLE
	dbbw 4, 15, SHUCKLE
	dbbw 1, 15, SHUCKLE
	db -1

TreeMonSet_Sky1:
	dbbw 60, 4, SPEAROW
	dbbw 30, 3, PIDGEY ;WINGULL
	dbbw 5, 5, SPEAROW
	dbbw 4, 4, PIDGEY ;WINGULL
	dbbw 1, 5, PIDGEY ;WINGULL
	db -1
	
TreeMonSet_Depths1:
	dbbw 60, 4, REMORAID ;CARVANHA
	dbbw 30, 3, REMORAID ;FINNEON
	dbbw 5, 5, REMORAID ;CARVANHA
	dbbw 4, 4, REMORAID ;FINNEON
	dbbw 1, 5, REMORAID ;FINNEON
	db -1
