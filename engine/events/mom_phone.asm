DEF NUM_MOM_ITEMS_1 EQUS "((MomItems_1.End - MomItems_1) / 9)"
DEF NUM_MOM_ITEMS_2 EQUS "((MomItems_2.End - MomItems_2) / 9)"

	const_def 1
	const MOM_ITEM
	const MOM_DOLL

MomTriesToBuySomething::
	ld a, [wMapReentryScriptQueueFlag]
	and a
	ret nz
	call GetMapPhoneService
	and a
	ret nz
	xor a
	ld [wWhichMomItemSet], a
	call CheckBalance_MomItem2
	ret nc
	call Mom_GiveItemOrDoll
	ret nc
	ld b, BANK(.Script)
	ld de, .Script
	farcall LoadMemScript
	scf
	ret

.Script:
	callasm .ASMFunction
	farsjump Script_ReceivePhoneCall

.ASMFunction:
	call MomBuysItem_DeductFunds
	call Mom_GetScriptPointer
	ld a, [wWhichMomItemSet]
	and a
	jr nz, .ok
	ld hl, wWhichMomItem
	inc [hl]
.ok
	ld a, PHONE_MOM
	ld [wCurCaller], a
	ld bc, wCallerContact
	ld hl, PHONE_CONTACT_TRAINER_CLASS
	add hl, bc
	xor a ; TRAINER_NONE
	ld [hli], a
	ld [hl], PHONE_MOM
	ld hl, PHONE_CONTACT_SCRIPT2_BANK
	add hl, bc
	ld a, BANK(Mom_GetScriptPointer)
	ld [hli], a
	ld a, e
	ld [hli], a
	ld a, d
	ld [hl], a
	ret

CheckBalance_MomItem2:
	ld a, [wWhichMomItem]
	cp NUM_MOM_ITEMS_2
	jr nc, .check_have_2300
	call GetItemFromMom
	ld a, [hli]
	ldh [hMoneyTemp], a
	ld a, [hli]
	ldh [hMoneyTemp + 1], a
	ld a, [hli]
	ldh [hMoneyTemp + 2], a
	ld de, wMomsMoney
	ld bc, hMoneyTemp
	farcall CompareMoney
	jr c, .check_have_2300
	scf
	ret

.check_have_2300
	ld hl, hMoneyTemp
	xor a
	assert MOM_MONEY < $10000
	ld [hli], a
	ld a, HIGH(MOM_MONEY) ; mid
	ld [hli], a
	ld [hl], LOW(MOM_MONEY)
.loop
	ld de, wMomItemTriggerBalance
	ld bc, wMomsMoney
	farcall CompareMoney
	jr z, .exact
	jr nc, .less_than
	call .AddMoney
	jr .loop

.less_than
	xor a
	ret

.exact
	call .AddMoney
	ld a, NUM_MOM_ITEMS_1
	call RandomRange
	inc a
	ld [wWhichMomItemSet], a
	scf
	ret

.AddMoney:
	ld de, wMomItemTriggerBalance
	ld bc, hMoneyTemp
	farjp AddMoney

MomBuysItem_DeductFunds:
	call GetItemFromMom
	ld de, 3 ; cost
	add hl, de
	ld a, [hli]
	ldh [hMoneyTemp], a
	ld a, [hli]
	ldh [hMoneyTemp + 1], a
	ld a, [hli]
	ldh [hMoneyTemp + 2], a
	ld de, wMomsMoney
	ld bc, hMoneyTemp
	farjp TakeMoney

Mom_GiveItemOrDoll:
	call GetItemFromMom
	ld de, 6 ; item type
	add hl, de
	ld a, [hli]
	cp MOM_ITEM
	jr z, .not_doll
	ld a, [hl]
	ld c, a
	ld b, 1
	farcall DecorationFlagAction_c
	scf
	ret

.not_doll
	push hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call GetItemIDFromIndex
	pop hl
	ld [wCurItem], a
	ld a, 1
	ld [wItemQuantityChange], a
	ld hl, wNumPCItems
	jmp ReceiveItem

Mom_GetScriptPointer:
	call GetItemFromMom
	ld de, 6 ; item type
	add hl, de
	ld a, [hli]
	ld de, .ItemScript
	cp MOM_ITEM
	ret z
	ld de, .DollScript
	ret

.ItemScript:
	writetext MomHiHowAreYouText
	writetext MomFoundAnItemText
	writetext MomBoughtWithYourMoneyText
	writetext MomItsInPCText
	end

.DollScript:
	writetext MomHiHowAreYouText
	writetext MomFoundADollText
	writetext MomBoughtWithYourMoneyText
	writetext MomItsInYourRoomText
	end

GetItemFromMom:
	ld a, [wWhichMomItemSet]
	and a
	jr z, .zero
	dec a
	ld de, MomItems_1
	jr .GetFromList

.zero
	ld a, [wWhichMomItem]
	cp NUM_MOM_ITEMS_2
	jr c, .ok
	xor a

.ok
	ld de, MomItems_2

.GetFromList:
	ld l, a
	ld h, 0
	push de
	ld d, h
	ld e, l
; multiply hl by 9
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, de
	pop de
	add hl, de
	ret

INCLUDE "data/items/mom_phone.asm"

MomHiHowAreYouText:
	text_far _MomHiHowAreYouText
	text_end

MomFoundAnItemText:
	text_far _MomFoundAnItemText
	text_end

MomBoughtWithYourMoneyText:
	text_far _MomBoughtWithYourMoneyText
	text_end

MomItsInPCText:
	text_far _MomItsInPCText
	text_end

MomFoundADollText:
	text_far _MomFoundADollText
	text_end

MomItsInYourRoomText:
	text_far _MomItsInYourRoomText
	text_end
