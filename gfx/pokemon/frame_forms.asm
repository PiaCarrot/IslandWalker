SECTION "Frames 4", ROMX

FormsFramePointers:
    dw LaprasPartnerFrames
    dw DratiniPartnerFrames
    dw EeveePartnerFrames
    dw PikachuPartnerFrames
    dw DragonairPartnerFrames
    dw DragonitePartnerFrames
.IndirectEnd::

LaprasPartnerFrames: INCLUDE "gfx/pokemon/forms/lapras_partner/frames.asm"
DratiniPartnerFrames: INCLUDE "gfx/pokemon/forms/dratini_partner/frames.asm"
EeveePartnerFrames: INCLUDE "gfx/pokemon/forms/eevee_partner/frames.asm"
PikachuPartnerFrames: INCLUDE "gfx/pokemon/forms/pikachu_partner/frames.asm"
DragonairPartnerFrames: INCLUDE "gfx/pokemon/forms/dragonair_partner/frames.asm"
DragonitePartnerFrames: INCLUDE "gfx/pokemon/forms/dragonite_partner/frames.asm"
