SECTION "Bitmasks 4", ROMX

FormsBitmaskPointers:
    dw LaprasPartnerBitmasks
    dw DratiniPartnerBitmasks
    dw EeveePartnerBitmasks
    dw PikachuPartnerBitmasks
    dw DragonairPartnerBitmasks
    dw DragonitePartnerBitmasks
.IndirectEnd::

LaprasPartnerBitmasks: INCLUDE "gfx/pokemon/forms/lapras_partner/bitmask.asm"
DratiniPartnerBitmasks: INCLUDE "gfx/pokemon/forms/dratini_partner/bitmask.asm"
EeveePartnerBitmasks: INCLUDE "gfx/pokemon/forms/eevee_partner/bitmask.asm"
PikachuPartnerBitmasks: INCLUDE "gfx/pokemon/forms/pikachu_partner/bitmask.asm"
DragonairPartnerBitmasks: INCLUDE "gfx/pokemon/forms/dragonair_partner/bitmask.asm"
DragonitePartnerBitmasks: INCLUDE "gfx/pokemon/forms/dragonite_partner/bitmask.asm"