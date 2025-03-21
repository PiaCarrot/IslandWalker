SECTION "Egg Move Pointers", ROMX

; All instances of Charm, Steel Wing, Sweet Scent, and Lovely Kiss were
; removed from egg move lists in Crystal.
; Sweet Scent and Steel Wing were redundant since they're TMs, and
; Charm and Lovely Kiss were unobtainable.

; Staryu's egg moves were removed in Crystal, because Staryu is genderless
; and can only breed with Ditto.

EggMovePointers::
	indirect_table 2, 1
	indirect_entries JOHTO_POKEMON - 1, EggMovePointers1
	indirect_entries HOENN_POKEMON - 1, EggMovePointers2
	indirect_entries FORM_POKEMON - 1, EggMovePointers3
	indirect_entries NUM_POKEMON, FormsEggMovePointers
	indirect_table_end

INCLUDE "data/pokemon/egg_moves_kanto.asm"
INCLUDE "data/pokemon/egg_moves_johto.asm"
INCLUDE "data/pokemon/egg_moves_hoenn.asm"
INCLUDE "data/pokemon/egg_moves_form.asm"
