SECTION "Bitmasks 4", ROMX

FormsBitmaskPointers:
    dw LaprasPartnerBitmasks
    dw DratiniPartnerBitmasks
.IndirectEnd::

LaprasPartnerBitmasks: INCLUDE "gfx/pokemon/forms/lapras_partner/bitmask.asm"
DratiniPartnerBitmasks: INCLUDE "gfx/pokemon/forms/dratini_partner/bitmask.asm"
