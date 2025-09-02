_PlayDEDSamples::
        call WriteDEDTreeToWRAM
        ld a, [hli] ; length
        ld e, a
        ld a, [hli]
        ld d, a
        ld a, 8
        ld [hCurSampVal], a
        ld c, 1
        ld a, (1 << rTAC_ON) | rTAC_16384_HZ
        ld [rTAC], a
        inc d
        inc e
        jp .handleLoop
.loop
        push de
        ld de, wDEDTempSamp
        ld a, 16
.loop2
        ld [hLoopCounter], a
        push de
        call wGetDEDByte
        ld [hCurBitStream], a
        ld a, [hCurSampVal]
        add b
        and $f
        ld [hCurSampVal], a
        swap a
        ld d, a
        call wGetDEDByte
        ld [hCurBitStream], a
        ld a, [hCurSampVal]
        add b
        and $f
        ld [hCurSampVal], a
        or d
        pop de
        ld [de], a
        inc de
        ld a, [hLoopCounter]
        dec a
        jr nz, .loop2
        ei
        xor     a ; reset carry
.haltLoop
        halt ; wait until timer interrupt hits
        jr nc, .haltLoop
        di
        ld [rNR51], a
        ld [rNR30], a
        push hl
        ld hl, wDEDTempSamp
rept 16
        ld a, [hli]
        ld [CUR_WAVE], a
REDEF CUR_WAVE EQU CUR_WAVE + 1
endr
        ld a, $80
        ld [rNR30], a
        ld a, $87
        ld [rNR34], a
        ld a, [hDEDNR51Mask]
        ld [rNR51], a

        pop hl
        pop de
.handleLoop
        dec e
        jp nz, .loop
        dec d
        jp nz, .loop
        ret

WriteDEDTreeToWRAM:
        ld d, h
        ld e, l
        ld hl, wGetDEDByte
        ld a, LD_A_FFXX_OP
        ld [hli], a
        ld a, hCurBitStream & $ff
        ld [hli], a
.tree_loop
        ld a, [de]
        cp $ff
        jr z, .end
        add a
        jr nc, .huffhuffjr
        add a
        jr nc, .huffleaf
        add a
        jr nc, .leafleaf
.huffhuffjp
        call CopyBitreeCode
        push bc
        ld a, JP_C_OP
        ld [hli], a
        ld a, [de]
        and $f
        ld b, a
        inc de
        ld a, [de]
        inc de
        ld c, a
        push hl
        add hl, bc
        inc hl
        inc hl
        ld b, h
        ld c, l
        pop hl
        ld a, c
        ld [hli], a
        ld a, b
        ld [hli], a
        pop bc
        jr .tree_loop
.leafleaf
        call .leafcommon
        ld a, LD_B_XX_OP
        ld [hli], a
        ld a, [de]
        inc de
        ld [hli], a
        ld a, RET_OP
        ld [hli], a
        jr .tree_loop
.huffleaf
        call .leafcommon
        jr .tree_loop
.huffhuffjr
        call CopyBitreeCode
        ld a, JR_C_OP
        ld [hli], a
        ld a, [de]
        inc de
        ld [hli], a
        jr .tree_loop
.end
        inc de
        ld h, d
        ld l, e
        ret
.leafcommon
        call CopyBitreeCode
        ld a, LD_B_XX_OP
        ld [hli], a
        ld a, [de]
        inc de
        and $f
        ld [hli], a
        ld a, RET_C_OP
        ld [hli], a
        ret

CopyBitreeCode:
        ld a, DEC_C_OP
        ld [hli], a
        ld a, JR_NZ_OP
        ld [hli], a
        ld a, 3
        ld [hli], a
        ld a, LD_A_HLI_OP
        ld [hli], a
        ld a, LD_C_XX_OP
        ld [hli], a
        ld a, 8
        ld [hli], a
        ld a, ADD_A_OP
        ld [hli], a
        ret
