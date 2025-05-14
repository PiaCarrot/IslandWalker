BattleCommand_Substitute:
	call BattleCommand_MoveDelay
	
	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVar
	bit SUBSTATUS_SUBSTITUTE, a
	jr nz, .already_has_sub

	farcall GetQuarterMaxHP
	farcall CheckUserHasEnoughHP
	jr nc, .too_weak_to_sub

	ld hl, wPlayerSubstituteHP
	ldh a, [hBattleTurn]
	and a
	jr z, .got_hp
	ld hl, wEnemySubstituteHP

.got_hp
	farcall SubtractHPFromUser
	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVarAddr
	set SUBSTATUS_SUBSTITUTE, [hl]

	ld hl, wPlayerWrapCount
	ld de, wPlayerTrappingMove
	ldh a, [hBattleTurn]
	and a
	jr z, .player
	ld hl, wEnemyWrapCount
	ld de, wEnemyTrappingMove

.player
	xor a
	ld [hl], a
	ld [de], a
	call _CheckBattleScene
	jr c, .no_anim

	xor a
	ld [wNumHits], a
	ld [wBattleAnimParam], a
	ld hl, SUBSTITUTE
	call GetMoveIDFromIndex
	call LoadAnim
	jr .finish

.no_anim
	call BattleCommand_RaiseSubNoAnim
.finish
	ld hl, MadeSubstituteText
	call StdBattleTextbox
	jmp RefreshBattleHuds

.already_has_sub
	call CheckUserIsCharging
	call nz, BattleCommand_RaiseSub
	ld hl, HasSubstituteText
	jr .jp_stdbattletextbox

.too_weak_to_sub
	call CheckUserIsCharging
	call nz, BattleCommand_RaiseSub
	ld hl, TooWeakSubText
.jp_stdbattletextbox
	jmp StdBattleTextbox
