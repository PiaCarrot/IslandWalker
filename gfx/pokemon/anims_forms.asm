FormsAnimationPointers:
	dw LaprasPartnerAnimation
	dw DratiniPartnerAnimation
	dw EeveePartnerAnimation
	dw PikachuPartnerAnimation
	dw DragonairPartnerAnimation
	dw DragonitePartnerAnimation
.IndirectEnd::

LaprasPartnerAnimation: INCLUDE "gfx/pokemon/forms/lapras_partner/anim.asm"
DratiniPartnerAnimation: INCLUDE "gfx/pokemon/forms/dratini_partner/anim.asm"
EeveePartnerAnimation: INCLUDE "gfx/pokemon/forms/eevee_partner/anim.asm"
PikachuPartnerAnimation: INCLUDE "gfx/pokemon/forms/pikachu_partner/anim.asm"
DragonairPartnerAnimation: INCLUDE "gfx/pokemon/forms/dragonair_partner/anim.asm"
DragonitePartnerAnimation: INCLUDE "gfx/pokemon/forms/dragonite_partner/anim.asm"
