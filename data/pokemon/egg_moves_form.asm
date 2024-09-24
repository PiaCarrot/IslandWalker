SECTION "Egg Moves 3", ROMX

EggMovePointers3::
	dw LaprasPartnerEggMoves
.IndirectEnd::

LaprasPartnerEggMoves:
	dw AURORA_BEAM
	dw FORESIGHT
NoEggMoves3:
	dw -1 ; end

ENDSECTION
