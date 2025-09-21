HandleTerrain:
        ld a, [wBattleTerrain]
        cp TERRAIN_NONE
        ret z

        ld hl, wTerrainCount
        dec [hl]
        jr nz, .continues

        ld hl, .TerrainEndedMessages
        call .PrintTerrainMessage
        xor a
        ld [wBattleTerrain], a
        farcall Ability_RecalculateStatsForTerrain
        ret

.continues
        farcall Ability_RecalculateStatsForTerrain
        ld hl, .TerrainMessages
        call .PrintTerrainMessage

        ld a, [wBattleTerrain]
        cp TERRAIN_GRASSY
        jr nz, .done
        call .GrassyTerrainHeal

.done
        ret

.GrassyTerrainHeal:
        ldh a, [hSerialConnectionStatus]
        cp USING_EXTERNAL_CLOCK
        jr z, .enemy_first
        call SetPlayerTurn
        call .HealSide
        call SetEnemyTurn
        jr .HealSide

.enemy_first
        call SetEnemyTurn
        call .HealSide
        call SetPlayerTurn
.HealSide
        call Terrain_CheckUserGrounded
        and a
        ret z

        ld hl, wBattleMonHP
        ldh a, [hBattleTurn]
        and a
        jr z, .check_hp
        ld hl, wEnemyMonHP

.check_hp
        ld a, [hli]
        ld b, a
        ld a, [hli]
        ld c, a
        ld a, b
        or c
        ret z

        ld a, [hli]
        cp b
        jr nz, .restore
        ld a, [hl]
        cp c
        ret z

.restore
        xcall GetSixteenthMaxHP
        xcall SwitchTurnCore
        xcall RestoreHP
        call RefreshBattleHuds
        ld hl, BattleText_GrassyTerrainHealed
        call StdBattleTextbox
        ret

.PrintTerrainMessage:
        ld a, [wBattleTerrain]
        dec a
        ld c, a
        ld b, 0
        add hl, bc
        add hl, bc
        ld a, [hli]
        ld h, [hl]
        ld l, a
        jmp StdBattleTextbox

.TerrainMessages:
; entries correspond to TERRAIN_* constants (excluding NONE)
        dw BattleText_GrassyTerrainActive
        dw BattleText_MistyTerrainActive
        dw BattleText_ElectricTerrainActive
        dw BattleText_PsychicTerrainActive

.TerrainEndedMessages:
; entries correspond to TERRAIN_* constants (excluding NONE)
        dw BattleText_GrassyTerrainFaded
        dw BattleText_MistyTerrainFaded
        dw BattleText_ElectricTerrainFaded
        dw BattleText_PsychicTerrainFaded

Terrain_CheckUserGrounded:
        ldh a, [hBattleTurn]
	jr Terrain_CheckBattlerGrounded

Terrain_CheckTargetGrounded:
        ldh a, [hBattleTurn]
        xor 1
	jr Terrain_CheckBattlerGrounded

Terrain_CheckPlayerGrounded:
        xor a
	jr Terrain_CheckBattlerGrounded

Terrain_CheckEnemyGrounded:
        ld a, 1
	jr Terrain_CheckBattlerGrounded

Terrain_CheckBattlerGrounded:
        push bc
        push de
        push hl
        ld d, a
        and a
        jr nz, .enemy
        ld hl, wBattleMonType1
        ld a, [hli]
        cp FLYING
        jr z, .not_grounded
        ld a, [hl]
        cp FLYING
        jr z, .not_grounded
        ld a, [wBattleMonSpecies]
        and a
        jr z, .check_player_substatus
	ld hl, wBattleMonPersonality
	ld c, a
	ld b, 0
	call GetAbility
	ld b, 0
	xcall Ability_LoadTracedAbility
        cp LEVITATE
        jr z, .not_grounded
        jr .check_player_substatus

.enemy
        ld hl, wEnemyMonType1
        ld a, [hli]
        cp FLYING
        jr z, .not_grounded
        ld a, [hl]
        cp FLYING
        jr z, .not_grounded
        ld a, [wEnemyMonSpecies]
        and a
        jr z, .check_enemy_substatus
	ld hl, wEnemyMonPersonality
	ld c, a
	ld b, 1
	call GetAbility
	ld b, 1
	xcall Ability_LoadTracedAbility
        cp LEVITATE
        jr z, .not_grounded

.check_enemy_substatus
        ld a, [wEnemySubStatus3]
        jr .check_bits

.check_player_substatus
        ld a, [wPlayerSubStatus3]

.check_bits
        bit SUBSTATUS_FLYING, a
        jr nz, .not_grounded
        bit SUBSTATUS_UNDERGROUND, a
        jr nz, .not_grounded
        pop hl
        pop de
        pop bc
        ld a, 1
        ret

.not_grounded
        pop hl
        pop de
        pop bc
        xor a
        ret

Terrain_TryBlockTargetMistyStatus:
        ld a, [wBattleTerrain]
        cp TERRAIN_MISTY
        jr nz, .no_block
        call Terrain_CheckTargetGrounded
        and a
        jr z, .no_block
        ld hl, BattleText_MistyTerrainBlocked
        call StdBattleTextbox
        xor a
        ret

.no_block
        ld a, 1
        ret

Terrain_TryBlockTargetElectricSleep:
        ld a, [wBattleTerrain]
        cp TERRAIN_ELECTRIC
        jr nz, .no_block
        call Terrain_CheckTargetGrounded
        and a
        jr z, .no_block
        ld hl, BattleText_ElectricTerrainBlocked
        call StdBattleTextbox
        xor a
        ret

.no_block
        ld a, 1
        ret

Terrain_TryBlockUserElectricSleep:
        ld a, [wBattleTerrain]
        cp TERRAIN_ELECTRIC
        jr nz, .no_block
        call Terrain_CheckUserGrounded
        and a
        jr z, .no_block
        ld hl, BattleText_ElectricTerrainRestBlocked
        call StdBattleTextbox
        xor a
        ret

.no_block
        ld a, 1
        ret

Terrain_TryBlockPriorityMove:
        ld a, [wBattleTerrain]
        cp TERRAIN_PSYCHIC
        jr nz, .no_block
        call Terrain_CheckTargetGrounded
        and a
        jr z, .no_block
        ld a, BATTLE_VARS_MOVE
        call GetBattleVar
        xcall GetMovePriority
        and a
        jr z, .no_block
        call ResetDamage
        ld a, FAILED_MESSAGE_PSYCHIC_TERRAIN
        ld [wFailedMessage], a
        ld a, 1
        ld [wAttackMissed], a
        xor a
        ret

.no_block
        ld a, 1
        ret

