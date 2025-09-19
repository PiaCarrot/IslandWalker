; Ability descriptions for Pokémon abilities of Gen III
;
; Directly corresponds to the ability IDs (see constants/ability_constants.asm)
; Used to display the ability description on the Stats screen

AbilityDescriptions:
	dw NoAbilityDesc
	dw ArenaTrapDesc
	dw ShadowTagDesc
	dw MagnetPullDesc
	dw BlazeDesc
	dw OvergrowDesc
	dw TorrentDesc
	dw SwarmDesc
    dw PersistanceDesc
    dw OverchargedDesc
    dw DragoonDesc
	dw GutsDesc
	dw MarvelScaleDesc
	dw TangledFeetDesc
	dw QuickFeetDesc
	dw ToxicBoostDesc  
    dw FlareBoostDesc
	dw CompoundeyesDesc
	dw HustleDesc
	dw HugePowerDesc
	dw FurCoatDesc
	dw SpeedBoostDesc
	dw PlusDesc
	dw MinusDesc
    dw BattleBondDesc
	dw CloudNineDesc
	dw ChlorophyllDesc
	dw SwiftSwimDesc
	dw ForecastDesc
	dw DroughtDesc
	dw DrizzleDesc
	dw SandStreamDesc
	dw SnowWarningDesc
	dw SandVeilDesc
	dw RainDishDesc
	dw CacophonyDesc
	dw SoundproofDesc
	dw LevitateDesc
	dw WonderGuardDesc
	dw SturdyDesc
	dw SuctionCupsDesc
	dw DampDesc
	dw ClearBodyDesc
	dw WhiteSmokeDesc
	dw RockHeadDesc
	dw BattleArmorDesc
	dw ShellArmorDesc
	dw InnerFocusDesc
	dw KeenEyeDesc
	dw HyperCutterDesc
	dw VitalSpiritDesc
	dw InsomniaDesc
	dw ImmunityDesc
	dw LimberDesc
	dw WaterVeilDesc
	dw ObliviousDesc
	dw OwnTempoDesc
	dw MagmaArmorDesc
	dw ShieldDustDesc
	dw StickyHoldDesc
	dw GoodAsGoldDesc
	dw ThickFatDesc
	dw CuteCharmDesc
	dw EffectSporeDesc
	dw FlameBodyDesc
	dw PoisonPointDesc
	dw StaticDesc
	dw LiquidOozeDesc
	dw SereneGraceDesc
	dw ColorChangeDesc
	dw FlashFireDesc
	dw SynchronizeDesc
	dw LightningrodDesc
	dw VoltAbsorbDesc
	dw WaterAbsorbDesc
    dw RoughSkinDesc
	dw ShedSkinDesc
	dw EarlyBirdDesc
	dw NaturalCureDesc
	dw IntimidateDesc
	dw TraceDesc
	dw PressureDesc
	dw RunAwayDesc
	dw ImposterDesc
	dw IlluminateDesc
	dw StenchDesc
	dw PickupDesc
	dw HoneyGatherDesc
	dw PowerOfAlchemyDesc
	dw MotorDriveDesc
	dw RivalryDesc
	dw SteadfastDesc
	dw SnowCloakDesc
	dw GluttonyDesc
	dw AngerPointDesc
	dw UnburdenDesc
	dw SimpleDesc
	dw DrySkinDesc
	dw DownloadDesc
	dw IronFistDesc
	dw PoisonHealDesc
	dw AdaptabilityDesc
	dw SkillLinkDesc
	dw HydrationDesc
	dw SolarPowerDesc
	dw NormalizeDesc
	dw SniperDesc
	dw MagicGuardDesc
	dw NoGuardDesc
	dw TechnicianDesc
	dw LeafGuardDesc
	dw MoldBreakerDesc
	dw SuperLuckDesc
	dw AftermathDesc
	dw AnticipationDesc
	dw ForewarnDesc
	dw UnawareDesc
	dw TintedLensDesc
	dw FilterDesc
	dw SolidRockDesc
	dw ScrappyDesc
	dw StormDrainDesc
	dw IceBodyDesc
	dw FriskDesc
	dw RecklessDesc
	dw FlowerGiftDesc
	dw SheerForceDesc  
	dw ContraryDesc  
	dw UnnerveDesc  
	dw DefiantDesc  
	dw CursedBodyDesc  
	dw WeakArmorDesc  
	dw MultiscaleDesc  
	dw HarvestDesc  
	dw OvercoatDesc  
	dw PoisonTouchDesc  
	dw RegeneratorDesc  
	dw SandRushDesc  
	dw AnalyticDesc  
	dw IllusionDesc  
	dw InfiltratorDesc  
	dw MoxieDesc  
	dw RattledDesc  
	dw MagicBounceDesc  
	dw SapSipperDesc  
	dw IronBarbsDesc  
	dw ProteanDesc  
	dw BulletproofDesc  
	dw CompetitiveDesc  
	dw StanceChangeDesc  
	dw MegaLauncherDesc  
	dw ToughClawsDesc  
	dw PixilateDesc  
	dw GooeyDesc  
	dw WaterCompactionDesc  
	dw MercilessDesc  
	dw SteelworkerDesc  
	dw BerserkDesc  
	dw SlushRushDesc  
	dw GalvanizeDesc  
	dw SurgeSurferDesc  
	dw DisguiseDesc  
	dw CorrosionDesc  
	dw TanglingHairDesc  
	dw ElectricSurgeDesc  
	dw PsychicSurgeDesc  
	dw MistySurgeDesc  
	dw GrassySurgeDesc  
	dw GulpMissileDesc  
	dw RipenDesc  
	dw MimicryDesc  
	dw ScreenCleanerDesc  
	dw SteelySpiritDesc  
	dw PerishBodyDesc  
	dw NeutralizingGasDesc  
	dw PastelVeilDesc  
	dw QuickDrawDesc  
	dw CuriousMedicineDesc  
	dw WindPowerDesc  
	dw CudChewDesc  
	dw SharpnessDesc  
	dw SupremeOverlordDesc
	dw ArmorTailDesc
	dw MindsEyeDesc
        dw SupersweetSyrupDesc
        dw CrystalBodyDesc
        dw CoinCollectorDesc

; Actual descriptions start here
NoAbilityDesc:
; This shouldn't be possible, but just in case.
	db    "No special"
	next1 "ability.@"

ArenaTrapDesc:
ShadowTagDesc:
	db    "Prevents foes"
	next1 "from escaping.@"

MagnetPullDesc:
	db    "Prevents STEEL"
	next1 "#MON's escape.@"

BlazeDesc:
	db    "Boosts FIRE moves"
	next1 "in a pinch.@"

OvergrowDesc:
	db    "Boosts GRASS moves"
	next1 "in a pinch.@"

TorrentDesc:
	db    "Boosts WATER moves"
	next1 "in a pinch.@"

SwarmDesc:
	db    "Boosts BUG moves"
	next1 "in a pinch.@"

GutsDesc:
	db    "Boosts ATTACK if"
	next1 "status afflicted.@"

MarvelScaleDesc:
	db    "Boosts DEFENSE if"
	next1 "status afflicted.@"

PlusDesc:
	db    "Constantly raises"
	next1 "the SP. ATK stat.@"

MinusDesc:
	db    "Constantly raises"
	next1 "the SP. DEF stat.@"

CompoundeyesDesc:
	db    "Boosts ACCURACY"
	next1 "of moves.@"

HustleDesc:
	db    "Boosts ATTACK, but"
	next1 "lowers ACCURACY.@"

HugePowerDesc:
PurePowerDesc:
	    db    "Doubles ATTACK"
	    next1 "power of moves.@"

SpeedBoostDesc:
	db    "Constantly raises"
	next1 "the SPEED stat.@"

AirLockDesc:
CloudNineDesc:
	db    "Protects against"
	next1 "weather effects.@"

ChlorophyllDesc:
	db    "Boosts SPEED in"
	next1 "sunny conditions.@"

SwiftSwimDesc:
	db    "Boosts SPEED in"
	next1 "rainy conditions.@"

ForecastDesc:
	db    "Transforms upon"
	next1 "weather changes.@"

DroughtDesc:
	db    "Causes harsh sun"
	next1 "upon entrance.@"

DrizzleDesc:
	db    "Causes heavy rain"
	next1 "upon entrance.@"

SandStreamDesc:
	db    "Causes a sandstorm"
	next1 "upon entrance.@"

SandVeilDesc:
	db    "Boosts EVASION in"
	next1 "sandstorms.@"

RainDishDesc:
	db    "Heals HP during"
	next1 "rainy weather.@"

CacophonyDesc:
SoundproofDesc:
	db    "Protects against"
	next1 "sound-based moves.@"

LevitateDesc:
	db    "Protects against"
	next1 "GROUND moves.@"

WonderGuardDesc:
	db    "Can only be hit by"
	next1 "SE moves.@"

SturdyDesc:
	db    "Protects against"
	next1 "1-hit KO attacks.@"

SuctionCupsDesc:
	db    "Cannot be forced"
	next1 "to switch or flee.@"

DampDesc:
	db    "Prevents explosive"
	next1 "moves.@"

ClearBodyDesc:
WhiteSmokeDesc:
	db    "Prevents stat loss"
	next1 "from foe's moves.@"

RockHeadDesc:
	db    "Prevents damage"
	next1 "from recoil.@"

BattleArmorDesc:
ShellArmorDesc:
	db    "Prevents critical"
	next1 "hit damage.@"

InnerFocusDesc:
	db    "Prevents flinching"
	next1 "from foe's moves.@"

KeenEyeDesc:
	db    "ACCURACY cannot be"
	next1 "lowered.@"

HyperCutterDesc:
	db    "ATTACK cannot be"
	next1 "lowered by foes.@"

InsomniaDesc:
VitalSpiritDesc:
	db    "Prevents SLEEP."
	next1 "@"

ImmunityDesc:
	db    "Prevents being"
	next1 "POISONED.@"

LimberDesc:
	db    "Prevents being"
	next1 "PARALYZED.@"

WaterVeilDesc:
	db    "Prevents being"
	next1 "BURNED.@"

ObliviousDesc:
        db    "Prevents being"
        next1 "INFATUATED.@"

OwnTempoDesc:
	db    "Prevents being"
	next1 "CONFUSED.@"

MagmaArmorDesc:
	db    "Prevents being"
	next1 "FREEZED.@"

ShieldDustDesc:
	db    "Prevents added"
	next1 "move effects.@"

StickyHoldDesc:
	db    "Prevents item loss"
	next1 "from foes.@"

ThickFatDesc:
	db    "Resists ICE and"
	next1 "FIRE moves.@"

CuteCharmDesc:
	db    "May cause INFATU-"
	next1 "ATION on contact.@"

EffectSporeDesc:
	db    "May cause a status"
	next1 "effect on contact.@"

FlameBodyDesc:
	db    "May cause a BURN"
	next1 "on contact.@"

PoisonTouchDesc:
PoisonPointDesc:
	db    "May cause POISON-"
	next1 "ING on contact.@"

StaticDesc:
	db    "May cause PARA-"
	next1 "LYSIS on contact.@"

LiquidOozeDesc:
	db    "Damages users of"
	next1 "draining moves.@"

SereneGraceDesc:
	db    "Increases chances"
	next1 "of move effects.@"

ColorChangeDesc:
	db    "Matches type of"
	next1 "damaging moves.@"

FlashFireDesc:
	db    "Absorbs FIRE"
	next1 "moves for power.@"

SynchronizeDesc:
	db    "Shares inflicted"
	next1 "status effects.@"

LightningrodDesc:
	db    "Draws all ELECTRIC"
	next1 "moves.@"

VoltAbsorbDesc:
	db    "Heals HP when hit"
	next1 "by ELECTRIC moves.@"

WaterAbsorbDesc:
	db    "Heals HP when hit"
	next1 "by WATER moves.@"

RoughSkinDesc:
	db    "Damages users of"
	next1 "physical moves.@"

FlareBoostDesc:
        db    "Powers up special"
        next1 "if burned.@"

ShedSkinDesc:
	db    "May heal from a"
	next1 "status effect.@"

EarlyBirdDesc:
	db    "Wakes up quicker"
	next1 "from SLEEP.@"

NaturalCureDesc:
	db    "Heals from status"
	next1 "effects on exit.@"

IntimidateDesc:
	db    "Cuts the foe's"
	next1 "ATTACK.@"

SupersweetSyrupDesc:
	db    "Lowers the foe's"
	next1 "EVASION.@"

TraceDesc:
	db    "Copies the foe's"
	next1 "ability.@"

PressureDesc:
	db    "Increases PP usage"
	next1 "of foes.@"

RunAwayDesc:
	db    "Guarantees escape"
	next1 "from battles.@"

IlluminateDesc:
	db    "Increases #MON"
	next1 "encounter rate.@"

StenchDesc:
	db    "Decreases #MON"
	next1 "encounter rate.@"

PickupDesc:
	db    "May find items"
	next1 "after battles.@"
	
TangledFeetDesc:
    db    "Boosts EVASIVENESS"
    next1 "if CONFUSED.@"

MotorDriveDesc:
    db    "Boosts SPEED if"
    next1 "hit by electricity.@"

RivalryDesc:
    db    "Deals damage based"
    next1 "on foe's gender.@"

SteadfastDesc:
    db    "Boosts SPEED upon"
    next1 "flinching.@"

SnowCloakDesc:
    db    "Boosts EVASIVENESS"
    next1 "in HAIL.@"

GluttonyDesc:
    db    "Consumes BERRIES"
    next1 "early.@"

AngerPointDesc:
    db    "Maxes ATTACK on"
    next1 "critical-hit.@"

UnburdenDesc:
    db    "Boosts SPEED upon"
    next1 "held item usage.@"

SimpleDesc:
    db    "Doubles all stat"
    next1 "changes.@"

DrySkinDesc:
    db    "Loses HP in heat,"
    next1 "gains HP in water.@"

DownloadDesc:
    db    "Tactically adjusts"
    next1 "damaging stats.@"

IronFistDesc:
    db    "Boosts power of"
    next1 "punching moves.@"

PoisonHealDesc:
    db    "Restores HP when"
    next1 "POISONED.@"

AdaptabilityDesc:
    db    "Increases STAB"
    next1 "damage.@"

SkillLinkDesc:
    db    "Multi-strike moves"
    next1 "hit all 5 times.@"

HydrationDesc:
    db    "Heals statuses in"
    next1 "rain.@"

SolarPowerDesc:
    db    "Raises SP.ATK in"
    next1 "sun, but cuts HP.@"

QuickFeetDesc:
    db    "Boosts SPEED if"
    next1 "status afflicted.@"

NormalizeDesc:
    db    "All moves become"
    next1 "NORMAL-type.@"

SniperDesc:
    db    "Boosts critical"
    next1 "hit damage.@"

MagicGuardDesc:
    db    "Protects against"
    next1 "indirect damage.@"

NoGuardDesc:
    db    "All moves will"
    next1 "hit.@"

TechnicianDesc:
    db    "Boosts the weaker"
    next1 "moves.@"

LeafGuardDesc:
    db    "Protects against"
    next1 "statuses in sun.@"

MoldBreakerDesc:
    db    "Ignores abilities"
    next1 "that block moves.@"

SuperLuckDesc:
    db    "Boosts critical"
    next1 "hit ratio.@"

AftermathDesc:
    db    "Damages attackers"
    next1 "upon fainting.@"

AnticipationDesc:
    db    "Senses dangerous"
    next1 "moves.@"

ForewarnDesc:
    db    "Detects a foe's"
    next1 "move.@"

UnawareDesc:
    db    "Ignores stat"
    next1 "changes.@"

TintedLensDesc:
    db    "Boosts 'not very"
    next1 "effective' moves.@"

FilterDesc:
SolidRockDesc:
    db    "Cuts dmg of super"
    next1 "effective moves.@"

ScrappyDesc:
    db    "Hits GHOST #MON"
    next1 "with all moves.@"

StormDrainDesc:
    db    "Absorbs WATER"
    next1 "moves.@"

IceBodyDesc:
    db    "May cause FREEZING"
    next1 "on contact.@"

SnowWarningDesc:
    db    "Causes a hailstorm"
    next1 "upon entrance.@"

HoneyGatherDesc:
    db    "May find HONEY"
    next1 "after battles.@"

FriskDesc:
    db    "Identifies foe's"
    next1 "held ITEM.@"

RecklessDesc:
    db    "Boosts recoil"
    next1 "causing moves.@"

FlowerGiftDesc:
    db    "Powers up #MON"
    next1 "when sunny.@"

CrystalBodyDesc:
        db    "Loses HP in heat,"
        next1 "gains HP in water.@"

PersistanceDesc:
        db    "Boosts NORMAL"
        next1 "moves in a pinch.@"

OverchargedDesc:
	db    "Boosts ELECTRIC"
	next1 "moves in a pinch.@"

DragoonDesc:
	db    "Boosts DRAGON"
	next1 "moves in a pinch.@"

CoinCollectorDesc:
	db    "Collects old coins"
	next1 "after battle.@"
	
SheerForceDesc:
	db    "Power up moves but"
	next1 "removes effects.@"

ContraryDesc:
	db    "Reverses stat"
	next1 "changes.@"

UnnerveDesc:
	db    "Foe is unable to"
	next1 "eat BERRIES.@"

DefiantDesc:
	db    "ATK boosts sharply"
	next1 "when stats lower.@"

CursedBodyDesc:
	db    "May disable a move"
	next1 "that damages it.@"

WeakArmorDesc:
	db    "Lowers DEF on hit,"
	next1 "but SPEED boosts.@"

MultiscaleDesc:
	db    "Tankier when full"
	next1 "HP.@"

ToxicBoostDesc:
	db    "Powers up physical"
	next1 "if poisoned.@"

HarvestDesc:
	db    "May forage a BERRY"
	next1 "after battle.@"

OvercoatDesc:
	db    "Ignores SANDSTORM,"
	next1 "powders & spores.@"

RegeneratorDesc:
	db    "Restores HP when"
	next1 "withdrawn.@"

SandRushDesc:
	db    "Boosts SPEED in"
	next1 "SANDSTORM.@"

AnalyticDesc:
	db    "Boosts power if it"
	next1 "moves last.@"

IllusionDesc:
	db    "Disguises as last"
	next1 "party member.@"

ImposterDesc:
	db    "Transforms itself"
	next1 "to its foe.@"

InfiltratorDesc:
	db    "Ignores barriers,"
	next1 "screens, etc.@"

MoxieDesc:
	db    "Boosts ATK when it"
	next1 "KOs a foe.@"

RattledDesc:
	db    "Boosts SPEED when"
	next1 "scared.@"

MagicBounceDesc:
	db    "Reflects status"
	next1 "moves.@"

SapSipperDesc:
	db    "When hit by GRASS,"
	next1 "ATTACK boosts.@"

IronBarbsDesc:
	db    "Damage attacker if"
	next1 "hit directly.@"

ProteanDesc:
	db    "Can change TYPE to"
	next1 "move its using.@"

FurCoatDesc:
	db    "Halves damage from"
	next1 "physical moves.@"

BulletproofDesc:
	db    "Protects user from"
	next1 "ball & bomb moves.@"

CompetitiveDesc:
	db    "SP. ATK sharply up"
	next1 "when stats lower.@"

StanceChangeDesc:
	db    "Changes form to"
	next1 "fit strategy.@"

MegaLauncherDesc:
	db    "Powers up pulse"
	next1 "moves.@"

ToughClawsDesc:
	db    "Powers up direct"
	next1 "contact moves.@"

PixilateDesc:
	db    "NORMAL moves turn"
	next1 "FAIRY.@"

WaterCompactionDesc:
	db    "Boosts DEF sharply"
	next1 "if hit by WATER.@"

MercilessDesc:
	db    "If poisoned, all"
	next1 "attacks crit.@"

BerserkDesc:
	db    "Boosts SP. ATK if"
	next1 "huge damage taken.@"

SlushRushDesc:
	db    "Boosts SPEED in"
	next1 "HAIL or SNOW.@"

GalvanizeDesc:
	db    "NORMAL moves turn"
	next1 "ELECTRIC.@"

SurgeSurferDesc:
	db    "Doubles SPEED on"
	next1 "ELECTRIC TERRAIN.@"

DisguiseDesc:
	db    "Protects the user"
	next1 "once for 10% HP.@"

CorrosionDesc:
	db    "Poisons regardless"
	next1 "of immunity.@"

GooeyDesc:
TanglingHairDesc:
	db    "Contact with user"
	next1 "lowers foe SPEED.@"

PowerOfAlchemyDesc:
	db    "Synthesizes rare"
	next1 "items sometimes.@"

ElectricSurgeDesc:
	db    "Creates an"
	next1 "ELECTRIC TERRAIN.@"

PsychicSurgeDesc:
	db    "Creates a PSYCHIC"
	next1 "TERRAIN.@"

MistySurgeDesc:
	db    "Creates a MISTY"
	next1 "TERRAIN.@"
 
GrassySurgeDesc:
	db    "Creates a GRASSY"
	next1 "TERRAIN.@"
 
GulpMissileDesc:
	db    "Retaliates after"
	next1 "SURF or DIVE.@"

RipenDesc:
	db    "Ripens BERRIES and"
	next1 "doubles effect.@"

MimicryDesc:
	db    "Changes TYPE based"
	next1 "on TERRAIN.@"

ScreenCleanerDesc:
	db    "Nullifies screen"
	next1 "moves on switch.@"

SteelworkerDesc:
SteelySpiritDesc:
	db    "Powers up STEEL"
	next1 "moves.@"

PerishBodyDesc:
	db    "Both user and foe"
	next1 "faint in 3 turns.@"

NeutralizingGasDesc:
	db    "Suppresses effects"
	next1 "of ABILITIES.@"

PastelVeilDesc:
	db    "Immune to being"
	next1 "poisoned.@"

QuickDrawDesc:
	db    "Sometimes allows"
	next1 "user to go first.@"

CuriousMedicineDesc:
	db    "Cures status"
	next1 "when swapped in.@"

WindPowerDesc:
	db    "Gets charged when"
	next1 "hit by wind.@"

GoodAsGoldDesc:
	db    "Fully immune to"
	next1 "status effects.@"

CudChewDesc:
	db    "Reuses BERRY once"
	next1 "at end of turn.@"

SharpnessDesc:
	db    "Powers up slicing"
	next1 "moves.@"

SupremeOverlordDesc:
	db    "Gets more powerful"
	next1 "as party faints.@"

ArmorTailDesc:
	db    "Makes enemy unable"
	next1 "to use priority.@"

MindsEyeDesc:
	db    "Ignore accuracy and"
	next1 "can hit GHOSTs.@"

BattleBondDesc:
	db    "ATK, SP. ATK & SPD"
	next1 "raise on KO.@"
