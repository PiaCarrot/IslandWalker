AbilityText_MadeItRain:
    text "<USER>'s"
    line "DRIZZLE made it"
    cont "rain!"
    prompt

AbilityText_SunRaysIntensified:
    text "<USER>'s"
    line "DROUGHT intensif-"
    cont "ied the sun's rays!"
    prompt

AbilityText_WhippedUpASandStorm:
    text "<USER>'s SAND"
    line "STREAM whipped"
    cont "up a sandstorm!"
    prompt

AbilityText_WhippedUpAHailStorm:
    text "<USER>'s SNOW"
    line "WARNING whipped up"
    cont "a hailstorm!"
    prompt

AbilityText_ExertingPressure:
    text "<USER>"
    line "is exerting its"
    cont "PRESSURE!"
    prompt

AbilityText_SpeedBoost:
    text "<USER>'s"
    line "SPEED BOOST raised"
    cont "its SPEED!"
    prompt

AbilityText_PlusBoost:
    text "<USER>'s"
    line "PLUS raised"
    cont "its SPCL.ATK!"
    prompt

AbilityText_MinusBoost:
    text "<USER>'s"
    line "MINUS raised"
    cont "its SPCL.DEF!"
    prompt

AbilityText_BattleBond:
    text "<USER>'s"
    line "BATTLE BOND raised"
    cont "its ATTACK!"
    para "SPCL.ATK and SPEED"
    line "also rose!"
    prompt

AbilityText_ShedSkin:
    text "<USER>'s"
    line "SHED SKIN cured"
    cont "its status!"
    prompt

AbilityText_IntimidateCutsAttack:
    text "<USER>'s"
    line "INTIMIDATE cuts"

    para "<TARGET>'s"
    line "ATTACK!"
    prompt

AbilityText_IntimidateBlocked:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " pre-"

    para "vented ATTACK from"
    line "being lowered by"

    para "<USER>'s"
    line "INTIMIDATE!"
    prompt

; In the name of looking pretty, and in not adding VWT/VWF, I have these two lovely functions.
AbilityText_TracedTheAbilityPlayer:
    text "<USER> traced"
    line "<TARGET>'s"
    cont "@"
    text_ram wStringBuffer1
    text "!"
    prompt

AbilityText_TracedTheAbilityEnemy:
    text "<USER>"
    line "traced <TARGET>'s"
    cont "@"
    text_ram wStringBuffer1
    text "!"
    prompt
	
AbilityText_RunAway:
    text "<TARGET>" ; Because the turn swaps, this matters.
    line "fled using RUN"
    cont "AWAY!"
    prompt
	
AbilityText_PreventedEscapeAbility: ; OK, because switching and escaping can get hairy with inconsistent GF code, this needs to be called out as such...
    text "Enemy @"
    text_ram wEnemyMonNickname
    text ""
    line "prevents escape"
    cont "with @"
    text_ram wStringBuffer1
    text "!"
    prompt

AbilityText_PickupFoundItem:
    text_ram wStringBuffer2
    text " found"
    line "@"
    text_ram wStringBuffer1
    text "!"
    prompt

AbilityText_CoinCollectorFoundCoins:
    text_ram wStringBuffer2
    text " found"
    line "@"
    text_decimal wTextDecimalByte, 1, 3
    text " old coins!"
    prompt

AbilityText_GoodAsGold:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " made"
    cont "status moves"
        cont "ineffective!"
    prompt

AbilityText_Damp:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " prevented"
    cont "the explosion!"
    prompt

AbilityText_Soundproof:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " blocked"
    cont "the sound!"
    prompt

AbilityText_ClearBody:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " stops"
    cont "stat losses!"
    prompt

AbilityText_KeenEye:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " prevents"
    cont "accuracy loss!"
    prompt

AbilityText_HyperCutter:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " stops"
    cont "attack loss!"
    prompt

AbilityText_SuctionCups:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " "
    cont "anchored itself in"
    cont "place!"
    prompt

AbilityText_StayedAwake:
    text "<TARGET>"
    line "stayed awake due"
    cont "to @"
    text_ram wStringBuffer1
    text "!"
    prompt

AbilityText_Immunity:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " prevents"
    cont "poisoning!"
    prompt

AbilityText_Limber:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " prevents"
    cont "paralysis!"
    prompt

AbilityText_WaterVeil:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " prevents"
    cont "burns!"
    prompt

AbilityText_MagmaArmor:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " prevents"
    cont "freezing!"
    prompt

AbilityText_ObliviousInfatuation:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " prevents"
    cont "infatuation!"
    prompt

AbilityText_ObliviousTaunt:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " shrugged"
    cont "off TAUNT!"
    prompt

AbilityText_ObliviousCaptivate:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " blocked"
    cont "CAPTIVATE!"
    prompt

AbilityText_CuteCharm:
    text "<USER>'s"
    line "@"
    text_ram wStringBuffer1
    text " made"
    cont "<TARGET>"
    cont "fall in love!"
    prompt

AbilityText_EffectSporeSleep:
    text "<USER>'s"
    line "@"
    text_ram wStringBuffer1
    text " put"
    cont "<TARGET>"
    cont "to sleep!"
    prompt

AbilityText_EffectSporePoison:
    text "<USER>'s"
    line "@"
    text_ram wStringBuffer1
    text " "
    cont "poisoned"
    cont "<TARGET>!"
    prompt

AbilityText_EffectSporeParalyze:
    text "<USER>'s"
    line "@"
    text_ram wStringBuffer1
    text " "
    cont "paralyzed"
    cont "<TARGET>!"
    prompt

AbilityText_FlameBody:
    text "<USER>'s"
    line "@"
    text_ram wStringBuffer1
    text " "
    cont "burned"
    cont "<TARGET>!"
    prompt

AbilityText_PoisonPoint:
    text "<USER>'s"
    line "@"
    text_ram wStringBuffer1
    text " "
    cont "poisoned"
    cont "<TARGET>!"
    prompt

AbilityText_RoughSkin:
    text "<USER>'s"
    line "@"
    text_ram wStringBuffer1
    text " hurt"
    cont "<TARGET>!"
    prompt

AbilityText_SynchronizePoison:
    text "<USER>'s"
    line "@"
    text_ram wStringBuffer1
    text " "
    cont "poisoned"
    cont "<TARGET>!"
    prompt

AbilityText_CursedBody:
    text "<USER>'s"
    line "CURSED BODY"
    cont "disabled"
    cont "<TARGET>'s "
	cont "@"
    text_ram wStringBuffer1
    text "!"
    prompt

AbilityText_ColorChange:
    text "<USER>'s"
    line "@"
    text_ram wStringBuffer1
    text " made"
    cont "it @"
    text_ram wStringBuffer2
    text "-type!"
    prompt

AbilityText_Static:
    text "<USER>'s"
    line "@"
    text_ram wStringBuffer1
    text " "
    cont "paralyzed"
    cont "<TARGET>!"
    prompt

AbilityText_SynchronizeBurn:
    text "<USER>'s"
    line "@"
    text_ram wStringBuffer1
    text " "
    cont "burned"
    cont "<TARGET>!"
    prompt

AbilityText_SynchronizeParalyze:
    text "<USER>'s"
    line "@"
    text_ram wStringBuffer1
    text " "
    cont "paralyzed"
    cont "<TARGET>!"
    prompt

AbilityText_LiquidOoze:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " hurt"
    cont "<USER>!"
    prompt

AbilityText_LiquidOozeLeechSeed:
    text "<USER>'s"
    line "@"
    text_ram wStringBuffer1
    text " hurt"
    cont "<TARGET>!"
    prompt

AbilityText_OwnTempo:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " prevents"
    cont "confusion!"
    prompt

AbilityText_InnerFocus:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " pre-"
    cont "vents flinching!"
    prompt

AbilityText_Levitate:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " made"
    cont "GROUND moves"
    cont "miss!"
    prompt

AbilityText_FlashFire:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " absorbs"
    cont "it!"
    prompt

AbilityText_VoltAbsorb:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " "
    cont "restored HP!"
    prompt

AbilityText_WaterAbsorb:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " "
    cont "restored HP!"
    prompt

AbilityText_Lightningrod:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " "
    cont "charged it up!"
	cont "SP. ATK went up!"
    prompt

AbilityText_WonderGuard:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " "
    cont "blocks the attack!"
    prompt

AbilityText_SturdyBlockedOHKO:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " blocked"
    cont "the OHKO move!"
    prompt

AbilityText_SturdyHangOn:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " let it"
    cont "hang on!"
    prompt
