FormsAnimationPointers:
	dw LaprasPartnerAnimation
	dw DratiniPartnerAnimation
	dw EeveePartnerAnimation
	dw PikachuPartnerAnimation
.IndirectEnd::

LaprasPartnerAnimation: INCLUDE "gfx/pokemon/forms/lapras_partner/anim.asm"
DratiniPartnerAnimation: INCLUDE "gfx/pokemon/forms/dratini_partner/anim.asm"
EeveePartnerAnimation: INCLUDE "gfx/pokemon/forms/eevee_partner/anim.asm"
PikachuPartnerAnimation: INCLUDE "gfx/pokemon/forms/pikachu_partner/anim.asm"
