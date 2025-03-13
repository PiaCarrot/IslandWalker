SECTION "Egg Moves 4", ROMX

FormsEggMovePointers::
	dw LaprasPartnerEggMoves
.IndirectEnd::

LaprasPartnerEggMoves:
	dw AURORA_BEAM
	dw FORESIGHT
NoEggMoves4:
	dw -1 ; end

ENDSECTION
