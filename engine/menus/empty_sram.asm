EmptyAllSRAMBanks:
for x, NUM_SRAM_BANKS
	ld a, x
	call .EmptyBank
endr
	ret

.EmptyBank:
        push af
        call OpenSRAM
        pop af
        cp BANK(sLugiaCryFlag)
        jr z, .preserve_flag
        ld hl, STARTOF(SRAM)
        ld bc, SIZEOF(SRAM)
        xor a
        rst ByteFill
        jmp CloseSRAM

.preserve_flag:
        ld hl, sLugiaCryFlag
        ld a, [hl]
        push af
        ld hl, STARTOF(SRAM)
        ld bc, SIZEOF(SRAM)
        xor a
        rst ByteFill
        pop af
        ld hl, sLugiaCryFlag
        ld [hl], a
        jmp CloseSRAM
