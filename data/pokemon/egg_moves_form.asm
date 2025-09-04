SECTION "Egg Moves 4", ROMX

FormsEggMovePointers::
	dw LaprasPartnerEggMoves
	dw NoEggMoves4
	dw NoEggMoves4
	dw NoEggMoves4
	dw NoEggMoves4
	dw NoEggMoves4
.IndirectEnd::

LaprasPartnerEggMoves:
	dw AURORA_BEAM
	dw FORESIGHT

NoEggMoves4:
	dw -1 ; end

ENDSECTION
