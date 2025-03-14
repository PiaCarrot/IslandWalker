; Evolutions and attacks are grouped together since they're both checked at level-up.

SECTION "Evolutions and Attacks Pointers", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * dbbw EVOLVE_LEVEL, level, species
;    * dbww EVOLVE_ITEM, used item, species
;    * dbww EVOLVE_TRADE, held item (or -1 for none), species
;    * dbbw EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, EVENITE), species
;    * dbbbw EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
;    * dbww EVOLVE_PV, level, species 1, species 2
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * dbw level, move
; - db 0 ; no more level-up moves

EvosAttacksPointers::
	indirect_table 2, 1
	indirect_entries JOHTO_POKEMON - 1, EvosAttacksPointers1
	indirect_entries HOENN_POKEMON - 1, EvosAttacksPointers2
	indirect_entries FORM_POKEMON - 1, EvosAttacksPointers3
	indirect_entries NUM_POKEMON, FormsEvosAttacksPointers
	indirect_table_end

INCLUDE "data/pokemon/evos_attacks_kanto.asm"
INCLUDE "data/pokemon/evos_attacks_johto.asm"
INCLUDE "data/pokemon/evos_attacks_hoenn.asm"
INCLUDE "data/pokemon/evos_attacks_form.asm"
