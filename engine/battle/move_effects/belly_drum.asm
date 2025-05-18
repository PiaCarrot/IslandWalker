BattleCommand_BellyDrum:
	farcall GetHalfMaxHP
	farcall CheckUserHasEnoughHP
	jmp nc, BattleEffect_ButItFailed

	push bc
	call BattleCommand_AttackUp2
	pop bc
	ld a, [wAttackMissed]
	and a
	jmp nz, BattleEffect_ButItFailed

	push bc
	call AnimateCurrentMove
	pop bc
	farcall SubtractHPFromUser
	call UpdateUserInParty
	ld a, MAX_STAT_LEVEL - BASE_STAT_LEVEL - 1

.max_attack_loop
	push af
	call BattleCommand_AttackUp2
	pop af
	dec a
	jr nz, .max_attack_loop

	ld hl, BellyDrumText
	jmp StdBattleTextbox
