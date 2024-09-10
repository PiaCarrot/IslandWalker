HiddenStarter2:

; Making an assumption that the party is not full
; In vanilla, this will be the first Pokemon

; Set wCurPartyMon to our Hidden Starter
	ld a, [wPartyCount]
	dec a
	ld [wCurPartyMon], a

; Set the Pokedex data of our Hidden Starter
	ld a, [wCurPartySpecies]
	call SetSeenAndCaughtMon

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
	
; Load NicknameEeveeText to hl by default
	ld hl, NicknameEeveeText
	jr .cont

; Load NicknameDratiniText if proper flag set
.dratini
	ld hl, NicknameDratiniText
	jr .cont

; Load NicknamePikachuText if proper flag set
.pikachu
	ld hl, NicknamePikachuText

.cont
; Ask if Player wants to name their new Mon
	call PrintText
	call YesNoBox
	jmp c, .skipnickname

; Load the new nickname into wStringBuffer2
	xor a ; PARTYMON
	ld [wMonType], a
	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndex], a
	ld [wCurSpecies], a
	call GetBaseData
	ld b, NAME_MON
	ld de, wStringBuffer2
	farcall _NamingScreen

; Copy the new name from wStringBuffer2
	ld hl, wPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	ld a, [wCurPartyMon]
	call AddNTimes
	ld e, l
	ld d, h
	ld hl, wStringBuffer2
	ld bc, MON_NAME_LENGTH
	call CopyBytes

.skipnickname
	ret

NicknameEeveeText:
	text "Would you like to"
	line "name your EEVEE?"
	done
	text_end

NicknamePikachuText:
	text "Would you like to"
	line "name your PIKACHU?"
	done
	text_end

NicknameDratiniText:
	text "Would you like to"
	line "name your DRATINI?"
	done
	text_end
