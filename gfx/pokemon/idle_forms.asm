SECTION "Idle Animations 4", ROMX

FormsAnimationIdlePointers:
    dw LaprasPartnerAnimationIdle
    dw DratiniPartnerAnimationIdle
    dw EeveePartnerAnimationIdle
    dw PikachuPartnerAnimationIdle
.IndirectEnd::

LaprasPartnerAnimationIdle: INCLUDE "gfx/pokemon/forms/lapras_partner/anim_idle.asm"
DratiniPartnerAnimationIdle: INCLUDE "gfx/pokemon/forms/dratini_partner/anim_idle.asm"
EeveePartnerAnimationIdle: INCLUDE "gfx/pokemon/forms/eevee_partner/anim_idle.asm"
PikachuPartnerAnimationIdle: INCLUDE "gfx/pokemon/forms/pikachu_partner/anim_idle.asm"
