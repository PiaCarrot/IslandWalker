SECTION "DED 1", ROMX

ElectivireDEDData::
    INCBIN "audio/ded/electivire.ded"

SECTION "DED Headers", ROMX
ElectivireDEDHeader::
    db BANK(ElectivireDEDData)
    dw ElectivireDEDData
