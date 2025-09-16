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

AbilityText_SuctionCups:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " "
    cont "anchored itself in"
    cont "place!"
    prompt

AbilityText_Levitate:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " made"
    cont "GROUND moves"
    cont "miss!"
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
