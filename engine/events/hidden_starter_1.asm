HiddenStarter1:

; Check if Player activated secret Dratini event
	ld de, EVENT_MEET_SECRET_STARTER_REQS
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr nz, .dratini

; Check if Player chose PIKACHU from Mom
	ld de, EVENT_GOT_PIKACHU_FROM_IVY
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr nz, .pikachu
	
; Load EEVEE to hl by default
	ld hl, EEVEE
	jr .cont

; Load DRATINI if proper flag set
.dratini
	ld hl, DRATINI
	jr .cont

; Load PIKACHU if proper flag set
.pikachu
	ld hl, PIKACHU

.cont
; Set wMonType to Party
	xor a ; PARTYMON
	ld [wMonType], a

; Add Level 5 Mon of previous species to Party
	call GetPokemonIDFromIndex
	ld [wCurPartySpecies], a
	ld a, 5
	ld [wCurPartyLevel], a
	predef TryAddMonToParty

; Set wCurPartyMon to latest party member
; This is why we assume the party isn't full
	ld a, [wPartyCount]
	dec a
	ld [wCurPartyMon], a

; Load wCurPartySecies into both a and wTempWildMonSpecies
	ld a, [wCurPartySpecies]
	ld [wTempWildMonSpecies], a ; sets our wild species encounter

; Clear Dex Entry of Species loaded into a
; This was set to be wCurPartySpecies
	call ResetSeenAndCaughtMon

; Reload wCurPartySecies into a for PlayMonCry
	ld a, [wCurPartySpecies]
	call PlayMonCry

	ret
