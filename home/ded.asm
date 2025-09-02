LoadDEDCryHeader::
        ld a, [hli]
        ld b, a
        ld a, [hli]
        ld h, [hl]
        ld l, a
        ret

PlayDEDCry::
        ld a, [hROMBank]
        push af
        ld a, BANK(_PlayDEDCry)
        rst Bankswitch
        call _PlayDEDCry
        pop af
        rst Bankswitch
        ret
