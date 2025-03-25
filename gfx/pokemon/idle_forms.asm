SECTION "Idle Animations 4", ROMX

FormsAnimationIdlePointers:
    dw LaprasPartnerAnimationIdle
    dw DratiniPartnerAnimationIdle
.IndirectEnd::

LaprasPartnerAnimationIdle: INCLUDE "gfx/pokemon/forms/lapras_partner/anim_idle.asm"
DratiniPartnerAnimationIdle: INCLUDE "gfx/pokemon/forms/dratini_partner/anim_idle.asm"
