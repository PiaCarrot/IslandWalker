SECTION "Frames 4", ROMX

FormsFramePointers:
    dw LaprasPartnerFrames
    dw DratiniPartnerFrames
.IndirectEnd::

LaprasPartnerFrames: INCLUDE "gfx/pokemon/forms/lapras_partner/frames.asm"
DratiniPartnerFrames: INCLUDE "gfx/pokemon/forms/dratini_partner/frames.asm"
