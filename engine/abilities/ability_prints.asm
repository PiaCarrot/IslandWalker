; Gets our ability for the stats screen
CalcAbility_StatsScreen:
        ; Preserve HL and BC
        push hl
        push bc

        ; Ability is determined from the temporary mon used by the
        ; stats screen. This buffer is populated for both party and
        ; boxed Pokémon, preventing out-of-bounds reads when viewing
        ; boxed mons.
        ld a, [wTempMonSpecies]
        ld hl, wTempMonPersonality
        ld c, a
        call GetAbility
        pop bc
        pop hl
        ret

; Prints the ability for our stats screen
; Blended mix of code from Delta, MAE, and PC
PrintAbility:
        call CalcAbility_StatsScreen
        ld hl, AbilityNames
        call GetNthString
        ld d, h
        ld e, l
        hlcoord 4, 9
        rst PlaceString
        call CalcAbility_StatsScreen
        push bc
        cp COIN_COLLECTOR
        jr z, .coin_desc
        ld bc, AbilityDescriptions
        ld l, a
        ld h, 0
        add hl, hl
        add hl, bc
        ld a, [hli]
        ld d, [hl]
        ld e, a
        pop bc
        hlcoord 1, 10
        jp PlaceString
.coin_desc
        pop bc
        jp PrintCoinCollectorDesc

PrintCoinCollectorDesc:
        hlcoord 1, 10
        ld de, CoinCollectorDescLine1
        rst PlaceString
        hlcoord 1, 11
        ld de, CoinCollectorDescLine2
        rst PlaceString
        hlcoord 15, 11
        ld de, wGimmighoulCoins
        lb bc, 2, 3
        jmp PrintNum

CoinCollectorDescLine1:
        db "Collects old coins@"
CoinCollectorDescLine2:
        db "after battle: @"

INCLUDE "data/abilities/names.asm"
INCLUDE "data/abilities/descriptions.asm"
