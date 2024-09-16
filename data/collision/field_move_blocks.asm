; these blocks all use COLL_CUT_TREE in one quadrant
CutTreeBlockPointers:
; tileset, block list pointer
	dbw TILESET_VALENCIA_MANDARIN_NORTH,        .orange1
	db -1 ; end
	
.orange1:
; facing block, replacement block, animation
	db $06, $04, 1 ; grass
	db $07, $04, 1 ; grass
	db $37, $04, 1 ; grass
	db $3B, $04, 1 ; grass
	db $AC, $42, 0 ; tree
	db $AD, $36, 0 ; tree
	db $AE, $3F, 0 ; tree
	db $AF, $3E, 0 ; tree
	db -1 ; end


; these blocks all use COLL_WHIRLPOOL in one quadrant
WhirlpoolBlockPointers:
	dbw TILESET_VALENCIA_MANDARIN_NORTH, .orange1
	db -1 ; end
	
.orange1:
; facing block, replacement block, animation
	db $27, $2B, 0
	db -1 ; end
