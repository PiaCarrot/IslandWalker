SECTION "Evolutions and Attacks 1", ROMX

EvosAttacksPointers1::
	dw BulbasaurEvosAttacks
	dw IvysaurEvosAttacks
	dw VenusaurEvosAttacks
	dw CharmanderEvosAttacks
	dw CharmeleonEvosAttacks
	dw CharizardEvosAttacks
	dw SquirtleEvosAttacks
	dw WartortleEvosAttacks
	dw BlastoiseEvosAttacks
	dw CaterpieEvosAttacks
	dw MetapodEvosAttacks
	dw ButterfreeEvosAttacks
	dw WeedleEvosAttacks
	dw KakunaEvosAttacks
	dw BeedrillEvosAttacks
	dw PidgeyEvosAttacks
	dw PidgeottoEvosAttacks
	dw PidgeotEvosAttacks
	dw RattataEvosAttacks
	dw RaticateEvosAttacks
	dw SpearowEvosAttacks
	dw FearowEvosAttacks
	dw EkansEvosAttacks
	dw ArbokEvosAttacks
	dw PikachuEvosAttacks
	dw RaichuEvosAttacks
	dw SandshrewEvosAttacks
	dw SandslashEvosAttacks
	dw NidoranFEvosAttacks
	dw NidorinaEvosAttacks
	dw NidoqueenEvosAttacks
	dw NidoranMEvosAttacks
	dw NidorinoEvosAttacks
	dw NidokingEvosAttacks
	dw ClefairyEvosAttacks
	dw ClefableEvosAttacks
	dw VulpixEvosAttacks
	dw NinetalesEvosAttacks
	dw JigglypuffEvosAttacks
	dw WigglytuffEvosAttacks
	dw ZubatEvosAttacks
	dw GolbatEvosAttacks
	dw OddishEvosAttacks
	dw GloomEvosAttacks
	dw VileplumeEvosAttacks
	dw ParasEvosAttacks
	dw ParasectEvosAttacks
	dw VenonatEvosAttacks
	dw VenomothEvosAttacks
	dw DiglettEvosAttacks
	dw DugtrioEvosAttacks
	dw MeowthEvosAttacks
	dw PersianEvosAttacks
	dw PsyduckEvosAttacks
	dw GolduckEvosAttacks
	dw MankeyEvosAttacks
	dw PrimeapeEvosAttacks
	dw GrowlitheEvosAttacks
	dw ArcanineEvosAttacks
	dw PoliwagEvosAttacks
	dw PoliwhirlEvosAttacks
	dw PoliwrathEvosAttacks
	dw AbraEvosAttacks
	dw KadabraEvosAttacks
	dw AlakazamEvosAttacks
	dw MachopEvosAttacks
	dw MachokeEvosAttacks
	dw MachampEvosAttacks
	dw BellsproutEvosAttacks
	dw WeepinbellEvosAttacks
	dw VictreebelEvosAttacks
	dw TentacoolEvosAttacks
	dw TentacruelEvosAttacks
	dw GeodudeEvosAttacks
	dw GravelerEvosAttacks
	dw GolemEvosAttacks
	dw PonytaEvosAttacks
	dw RapidashEvosAttacks
	dw SlowpokeEvosAttacks
	dw SlowbroEvosAttacks
	dw MagnemiteEvosAttacks
	dw MagnetonEvosAttacks
	dw FarfetchDEvosAttacks
	dw DoduoEvosAttacks
	dw DodrioEvosAttacks
	dw SeelEvosAttacks
	dw DewgongEvosAttacks
	dw GrimerEvosAttacks
	dw MukEvosAttacks
	dw ShellderEvosAttacks
	dw CloysterEvosAttacks
	dw GastlyEvosAttacks
	dw HaunterEvosAttacks
	dw GengarEvosAttacks
	dw OnixEvosAttacks
	dw DrowzeeEvosAttacks
	dw HypnoEvosAttacks
	dw KrabbyEvosAttacks
	dw KinglerEvosAttacks
	dw VoltorbEvosAttacks
	dw ElectrodeEvosAttacks
	dw ExeggcuteEvosAttacks
	dw ExeggutorEvosAttacks
	dw CuboneEvosAttacks
	dw MarowakEvosAttacks
	dw HitmonleeEvosAttacks
	dw HitmonchanEvosAttacks
	dw LickitungEvosAttacks
	dw KoffingEvosAttacks
	dw WeezingEvosAttacks
	dw RhyhornEvosAttacks
	dw RhydonEvosAttacks
	dw ChanseyEvosAttacks
	dw TangelaEvosAttacks
	dw KangaskhanEvosAttacks
	dw HorseaEvosAttacks
	dw SeadraEvosAttacks
	dw GoldeenEvosAttacks
	dw SeakingEvosAttacks
	dw StaryuEvosAttacks
	dw StarmieEvosAttacks
	dw MrMimeEvosAttacks
	dw ScytherEvosAttacks
	dw JynxEvosAttacks
	dw ElectabuzzEvosAttacks
	dw MagmarEvosAttacks
	dw PinsirEvosAttacks
	dw TaurosEvosAttacks
	dw MagikarpEvosAttacks
	dw GyaradosEvosAttacks
	dw LaprasEvosAttacks
	dw DittoEvosAttacks
	dw EeveeEvosAttacks
	dw VaporeonEvosAttacks
	dw JolteonEvosAttacks
	dw FlareonEvosAttacks
	dw PorygonEvosAttacks
	dw OmanyteEvosAttacks
	dw OmastarEvosAttacks
	dw KabutoEvosAttacks
	dw KabutopsEvosAttacks
	dw AerodactylEvosAttacks
	dw SnorlaxEvosAttacks
	dw ArticunoEvosAttacks
	dw ZapdosEvosAttacks
	dw MoltresEvosAttacks
	dw DratiniEvosAttacks
	dw DragonairEvosAttacks
	dw DragoniteEvosAttacks
	dw MewtwoEvosAttacks
.IndirectEnd::

BulbasaurEvosAttacks:
	evolve EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 3, GROWL
	dbw 7, LEECH_SEED
	dbw 9, VINE_WHIP
	dbw 13, POISONPOWDER
	dbw 13, SLEEP_POWDER
	dbw 15, TAKE_DOWN
	dbw 19, RAZOR_LEAF
	dbw 21, SWEET_SCENT
	dbw 25, GROWTH
	dbw 27, DOUBLE_EDGE
	dbw 31, WORRY_SEED
	dbw 33, SYNTHESIS
	dbw 37, SEED_BOMB
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	evolve EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, LEECH_SEED
	dbw 3, GROWL
	dbw 7, LEECH_SEED
	dbw 9, VINE_WHIP
	dbw 13, POISONPOWDER
	dbw 13, SLEEP_POWDER
	dbw 15, TAKE_DOWN
	dbw 20, RAZOR_LEAF
	dbw 23, SWEET_SCENT
	dbw 28, GROWTH
	dbw 31, DOUBLE_EDGE
	dbw 36, WORRY_SEED
	dbw 39, SYNTHESIS
	dbw 44, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, LEECH_SEED
	dbw 1, VINE_WHIP
	dbw 3, GROWL
	dbw 7, LEECH_SEED
	dbw 9, VINE_WHIP
	dbw 13, POISONPOWDER
	dbw 13, SLEEP_POWDER
	dbw 15, TAKE_DOWN
	dbw 20, RAZOR_LEAF
	dbw 23, SWEET_SCENT
	dbw 28, GROWTH
	dbw 31, DOUBLE_EDGE
	dbw 32, PETAL_DANCE
	dbw 39, WORRY_SEED
	dbw 45, SYNTHESIS
	dbw 53, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	evolve EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 7, EMBER
	dbw 10, SMOKESCREEN
	dbw 16, DRAGON_RAGE
	dbw 19, SCARY_FACE
	dbw 25, FIRE_FANG
	dbw 28, SLASH
	dbw 34, FLAMETHROWER
	dbw 37, FIRE_SPIN
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	evolve EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, EMBER
	dbw 7, EMBER
	dbw 10, SMOKESCREEN
	dbw 17, DRAGON_RAGE
	dbw 21, SCARY_FACE
	dbw 28, FIRE_FANG
	dbw 32, SLASH
	dbw 39, FLAMETHROWER
	dbw 43, FIRE_SPIN
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, DRAGON_CLAW
	dbw 1, SHADOW_CLAW
	dbw 1, AIR_SLASH
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, EMBER
	dbw 1, SMOKESCREEN
	dbw 7, EMBER
	dbw 10, SMOKESCREEN
	dbw 17, DRAGON_RAGE
	dbw 21, SCARY_FACE
	dbw 28, FIRE_FANG
	dbw 32, SLASH
	dbw 36, WING_ATTACK
	dbw 42, FLAMETHROWER
	dbw 49, FIRE_SPIN
	dbw 59, HEAT_WAVE
	dbw 66, FLARE_BLITZ
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	evolve EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 10, WITHDRAW
	dbw 13, WATER_GUN
	dbw 16, BITE
	dbw 19, RAPID_SPIN
	dbw 22, PROTECT
	dbw 25, WATER_PULSE
	dbw 28, AQUA_TAIL
	dbw 31, SKULL_BASH
	dbw 34, IRON_DEFENSE
	dbw 37, RAIN_DANCE
	dbw 40, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	evolve EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, BUBBLE
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 10, WITHDRAW
	dbw 13, WATER_GUN
	dbw 16, BITE
	dbw 20, RAPID_SPIN
	dbw 24, PROTECT
	dbw 28, WATER_PULSE
	dbw 32, AQUA_TAIL
	dbw 36, SKULL_BASH
	dbw 40, IRON_DEFENSE
	dbw 44, RAIN_DANCE
	dbw 48, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FLASH_CANNON
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, BUBBLE
	dbw 1, WITHDRAW
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 10, WITHDRAW
	dbw 13, WATER_GUN
	dbw 16, BITE
	dbw 20, RAPID_SPIN
	dbw 24, PROTECT
	dbw 28, WATER_PULSE
	dbw 32, AQUA_TAIL
	dbw 39, SKULL_BASH
	dbw 46, IRON_DEFENSE
	dbw 53, RAIN_DANCE
	dbw 60, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	evolve EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	dbw 15, BUG_BITE
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	evolve EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 10, CONFUSION
	dbw 12, POISONPOWDER
	dbw 12, STUN_SPORE
	dbw 12, SLEEP_POWDER
	dbw 16, GUST
	dbw 18, SUPERSONIC
	dbw 22, WHIRLWIND
	dbw 24, PSYBEAM
	dbw 28, SILVER_WIND
	dbw 30, TAILWIND
	dbw 34, SAFEGUARD
	dbw 36, CAPTIVATE
	dbw 40, BUG_BUZZ
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	evolve EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	dbw 15, BUG_BITE
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	evolve EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FURY_ATTACK
	dbw 10, FURY_ATTACK
	dbw 13, FOCUS_ENERGY
	dbw 16, TWINEEDLE
	dbw 19, RAGE
	dbw 22, PURSUIT
	dbw 25, TOXIC_SPIKES
	dbw 28, PIN_MISSILE
	dbw 31, AGILITY
	dbw 34, ASSURANCE
	dbw 37, POISON_JAB
	dbw 40, ENDEAVOR
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	evolve EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, SAND_ATTACK
	dbw 9, GUST
	dbw 13, QUICK_ATTACK
	dbw 17, WHIRLWIND
	dbw 21, TWISTER
	dbw 25, FEATHERDANCE
	dbw 29, AGILITY
	dbw 33, WING_ATTACK
	dbw 37, ROOST
	dbw 41, TAILWIND
	dbw 45, MIRROR_MOVE
	dbw 49, AIR_SLASH
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	evolve EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SAND_ATTACK
	dbw 1, GUST
	dbw 5, SAND_ATTACK
	dbw 9, GUST
	dbw 13, QUICK_ATTACK
	dbw 17, WHIRLWIND
	dbw 22, TWISTER
	dbw 27, FEATHERDANCE
	dbw 32, AGILITY
	dbw 37, WING_ATTACK
	dbw 42, ROOST
	dbw 47, TAILWIND
	dbw 52, MIRROR_MOVE
	dbw 57, AIR_SLASH
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SAND_ATTACK
	dbw 1, GUST
	dbw 1, QUICK_ATTACK
	dbw 5, SAND_ATTACK
	dbw 9, GUST
	dbw 13, QUICK_ATTACK
	dbw 17, WHIRLWIND
	dbw 22, TWISTER
	dbw 27, FEATHERDANCE
	dbw 32, AGILITY
	dbw 38, WING_ATTACK
	dbw 44, ROOST
	dbw 50, TAILWIND
	dbw 56, MIRROR_MOVE
	dbw 62, AIR_SLASH
	db 0 ; no more level-up moves

RattataEvosAttacks:
	evolve EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, QUICK_ATTACK
	dbw 7, FOCUS_ENERGY
	dbw 10, BITE
	dbw 13, PURSUIT
	dbw 16, HYPER_FANG
	dbw 19, SUCKER_PUNCH
	dbw 22, CRUNCH
	dbw 25, ASSURANCE
	dbw 28, SUPER_FANG
	dbw 31, DOUBLE_EDGE
	dbw 34, ENDEAVOR
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SWORDS_DANCE
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, QUICK_ATTACK
	dbw 1, FOCUS_ENERGY
	dbw 4, QUICK_ATTACK
	dbw 7, FOCUS_ENERGY
	dbw 10, BITE
	dbw 13, PURSUIT
	dbw 16, HYPER_FANG
	dbw 19, SUCKER_PUNCH
	dbw 20, SCARY_FACE
	dbw 24, CRUNCH
	dbw 29, ASSURANCE
	dbw 34, SUPER_FANG
	dbw 39, DOUBLE_EDGE
	dbw 44, ENDEAVOR
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	evolve EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 5, LEER
	dbw 9, FURY_ATTACK
	dbw 13, PURSUIT
	dbw 17, AERIAL_ACE
	dbw 21, MIRROR_MOVE
	dbw 25, AGILITY
	dbw 29, ASSURANCE
	dbw 33, ROOST
	dbw 37, DRILL_PECK
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PLUCK
	dbw 1, PECK
	dbw 1, GROWL
	dbw 1, LEER
	dbw 1, FURY_ATTACK
	dbw 5, LEER
	dbw 9, FURY_ATTACK
	dbw 13, PURSUIT
	dbw 17, AERIAL_ACE
	dbw 23, MIRROR_MOVE
	dbw 29, AGILITY
	dbw 35, ASSURANCE
	dbw 41, ROOST
	dbw 47, DRILL_PECK
	db 0 ; no more level-up moves

EkansEvosAttacks:
	evolve EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 4, POISON_STING
	dbw 9, BITE
	dbw 12, GLARE
	dbw 17, SCREECH
	dbw 20, ACID
	dbw 25, STOCKPILE
	dbw 25, SWALLOW
	dbw 25, SPIT_UP
	dbw 28, MUD_BOMB
	dbw 33, GASTRO_ACID
	dbw 36, HAZE
	dbw 41, GUNK_SHOT
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ICE_FANG
	dbw 1, THUNDER_FANG
	dbw 1, FIRE_FANG
	dbw 1, WRAP
	dbw 1, LEER
	dbw 1, POISON_STING
	dbw 1, BITE
	dbw 4, POISON_STING
	dbw 9, BITE
	dbw 12, GLARE
	dbw 17, SCREECH
	dbw 20, ACID
	dbw 22, CRUNCH
	dbw 28, STOCKPILE
	dbw 28, SWALLOW
	dbw 28, SPIT_UP
	dbw 34, MUD_BOMB
	dbw 42, GASTRO_ACID
	dbw 48, HAZE
	dbw 56, GUNK_SHOT
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	evolve EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, GROWL
	dbw 5, TAIL_WHIP
	dbw 10, THUNDER_WAVE
	dbw 13, QUICK_ATTACK
	dbw 18, DOUBLE_TEAM
	dbw 21, SLAM
	dbw 26, THUNDERBOLT
	dbw 29, FEINT
	dbw 34, AGILITY
	dbw 37, DISCHARGE
	dbw 42, LIGHT_SCREEN
	dbw 45, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, TAIL_WHIP
	dbw 1, QUICK_ATTACK
	dbw 1, THUNDERBOLT
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	evolve EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 3, DEFENSE_CURL
	dbw 7, SAND_ATTACK
	dbw 9, POISON_STING
	dbw 13, RAPID_SPIN
	dbw 15, SWIFT
	dbw 19, FURY_SWIPES
	dbw 21, ROLLOUT
	dbw 25, FURY_CUTTER
	dbw 27, SAND_TOMB
	dbw 31, SLASH
	dbw 33, GYRO_BALL
	dbw 37, SANDSTORM
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, DEFENSE_CURL
	dbw 1, SAND_ATTACK
	dbw 3, DEFENSE_CURL
	dbw 7, SAND_ATTACK
	dbw 9, POISON_STING
	dbw 13, RAPID_SPIN
	dbw 15, SWIFT
	dbw 19, FURY_SWIPES
	dbw 21, ROLLOUT
	dbw 22, CRUSH_CLAW
	dbw 28, FURY_CUTTER
	dbw 33, SAND_TOMB
	dbw 40, SLASH
	dbw 45, GYRO_BALL
	dbw 52, SANDSTORM
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	evolve EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, SCRATCH
	dbw 7, TAIL_WHIP
	dbw 9, DOUBLE_KICK
	dbw 13, POISON_STING
	dbw 19, FURY_SWIPES
	dbw 21, BITE
	dbw 31, TOXIC_SPIKES
	dbw 33, FLATTER
	dbw 37, CRUNCH
	dbw 43, CAPTIVATE
	dbw 45, POISON_FANG
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	evolve EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, SCRATCH
	dbw 7, TAIL_WHIP
	dbw 9, DOUBLE_KICK
	dbw 13, POISON_STING
	dbw 20, FURY_SWIPES
	dbw 23, BITE
	dbw 35, TOXIC_SPIKES
	dbw 38, FLATTER
	dbw 43, CRUNCH
	dbw 50, CAPTIVATE
	dbw 58, POISON_FANG
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 1, DOUBLE_KICK
	dbw 1, POISON_STING
	dbw 23, BODY_SLAM
	dbw 43, EARTH_POWER
	dbw 58, SUPERPOWER
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	evolve EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, PECK
	dbw 7, FOCUS_ENERGY
	dbw 9, DOUBLE_KICK
	dbw 13, POISON_STING
	dbw 19, FURY_ATTACK
	dbw 21, HORN_ATTACK
	dbw 31, TOXIC_SPIKES
	dbw 33, FLATTER
	dbw 37, POISON_JAB
	dbw 43, CAPTIVATE
	dbw 45, HORN_DRILL
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	evolve EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, PECK
	dbw 7, FOCUS_ENERGY
	dbw 9, DOUBLE_KICK
	dbw 13, POISON_STING
	dbw 20, FURY_ATTACK
	dbw 23, HORN_ATTACK
	dbw 35, TOXIC_SPIKES
	dbw 38, FLATTER
	dbw 43, POISON_JAB
	dbw 50, CAPTIVATE
	dbw 58, HORN_DRILL
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, FOCUS_ENERGY
	dbw 1, DOUBLE_KICK
	dbw 1, POISON_STING
	dbw 23, THRASH
	dbw 43, EARTH_POWER
	dbw 58, MEGAHORN
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	evolve EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 4, ENCORE
	dbw 7, SING
	dbw 10, DOUBLESLAP
	dbw 13, DEFENSE_CURL
	dbw 19, MINIMIZE
	dbw 22, WAKE_UP_SLAP
	dbw 25, COSMIC_POWER
	dbw 28, LUCKY_CHANT
	dbw 31, METRONOME
	dbw 34, GRAVITY
	dbw 37, MOONLIGHT
	dbw 40, LIGHT_SCREEN
	dbw 43, METEOR_MASH
	dbw 46, HEALING_WISH
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 1, DOUBLESLAP
	dbw 1, MINIMIZE
	dbw 1, METRONOME
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	evolve EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 4, TAIL_WHIP
	dbw 7, ROAR
	dbw 11, QUICK_ATTACK
	dbw 14, WILL_O_WISP
	dbw 17, CONFUSE_RAY
	dbw 21, IMPRISON
	dbw 24, FLAMETHROWER
	dbw 27, SAFEGUARD
	dbw 31, PAYBACK
	dbw 34, FIRE_SPIN
	dbw 37, CAPTIVATE
	dbw 41, GRUDGE
	dbw 44, EXTRASENSORY
	dbw 47, FIRE_BLAST
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, NASTY_PLOT
	dbw 1, EMBER
	dbw 1, QUICK_ATTACK
	dbw 1, CONFUSE_RAY
	dbw 1, SAFEGUARD
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	evolve EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 5, DEFENSE_CURL
	dbw 9, POUND
	dbw 13, DISABLE
	dbw 17, ROLLOUT
	dbw 21, DOUBLESLAP
	dbw 25, REST
	dbw 29, BODY_SLAM
	dbw 33, GYRO_BALL
	dbw 37, WAKE_UP_SLAP
	dbw 41, MIMIC
	dbw 45, HYPER_VOICE
	dbw 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 1, DISABLE
	dbw 1, DEFENSE_CURL
	dbw 1, DOUBLESLAP
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	evolve EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	dbw 1, LEECH_LIFE
	dbw 5, SUPERSONIC
	dbw 9, ASTONISH
	dbw 13, BITE
	dbw 17, WING_ATTACK
	dbw 21, CONFUSE_RAY
	dbw 25, AIR_CUTTER
	dbw 29, MEAN_LOOK
	dbw 33, POISON_FANG
	dbw 37, HAZE
	dbw 41, AIR_SLASH
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	evolve EVOLVE_HAPPINESS, CROBAT
	db 0 ; no more evolutions
	dbw 1, SCREECH
	dbw 1, LEECH_LIFE
	dbw 1, SUPERSONIC
	dbw 1, ASTONISH
	dbw 5, SUPERSONIC
	dbw 9, ASTONISH
	dbw 13, BITE
	dbw 17, WING_ATTACK
	dbw 21, CONFUSE_RAY
	dbw 27, AIR_CUTTER
	dbw 33, MEAN_LOOK
	dbw 39, POISON_FANG
	dbw 45, HAZE
	dbw 51, AIR_SLASH
	db 0 ; no more level-up moves

OddishEvosAttacks:
	evolve EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 5, SWEET_SCENT
	dbw 9, ACID
	dbw 13, POISONPOWDER
	dbw 15, STUN_SPORE
	dbw 17, SLEEP_POWDER
	dbw 21, MEGA_DRAIN
	dbw 25, LUCKY_CHANT
	dbw 29, NATURAL_GIFT
	dbw 33, MOONLIGHT
	dbw 37, GIGA_DRAIN
	dbw 41, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	evolve EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	evolve EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, SWEET_SCENT
	dbw 1, ACID
	dbw 5, SWEET_SCENT
	dbw 9, ACID
	dbw 13, POISONPOWDER
	dbw 15, STUN_SPORE
	dbw 17, SLEEP_POWDER
	dbw 23, MEGA_DRAIN
	dbw 29, LUCKY_CHANT
	dbw 35, NATURAL_GIFT
	dbw 41, MOONLIGHT
	dbw 47, GIGA_DRAIN
	dbw 53, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MEGA_DRAIN
	dbw 1, AROMATHERAPY
	dbw 1, STUN_SPORE
	dbw 1, POISONPOWDER
	dbw 53, PETAL_DANCE
	dbw 65, SOLARBEAM
	db 0 ; no more level-up moves

ParasEvosAttacks:
	evolve EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 6, STUN_SPORE
	dbw 6, POISONPOWDER
	dbw 11, LEECH_LIFE
	dbw 17, SPORE
	dbw 22, SLASH
	dbw 27, GROWTH
	dbw 33, GIGA_DRAIN
	dbw 38, AROMATHERAPY
	dbw 43, X_SCISSOR
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CROSS_POISON
	dbw 1, SCRATCH
	dbw 1, STUN_SPORE
	dbw 1, POISONPOWDER
	dbw 1, LEECH_LIFE
	dbw 6, STUN_SPORE
	dbw 6, POISONPOWDER
	dbw 11, LEECH_LIFE
	dbw 17, SPORE
	dbw 22, SLASH
	dbw 30, GROWTH
	dbw 39, GIGA_DRAIN
	dbw 47, AROMATHERAPY
	dbw 55, X_SCISSOR
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	evolve EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DISABLE
	dbw 1, FORESIGHT
	dbw 5, SUPERSONIC
	dbw 11, CONFUSION
	dbw 13, POISONPOWDER
	dbw 17, LEECH_LIFE
	dbw 23, STUN_SPORE
	dbw 25, PSYBEAM
	dbw 29, SLEEP_POWDER
	dbw 35, SIGNAL_BEAM
	dbw 37, ZEN_HEADBUTT
	dbw 41, POISON_FANG
	dbw 47, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SILVER_WIND
	dbw 1, TACKLE
	dbw 1, DISABLE
	dbw 1, FORESIGHT
	dbw 1, SUPERSONIC
	dbw 5, SUPERSONIC
	dbw 11, CONFUSION
	dbw 13, POISONPOWDER
	dbw 17, LEECH_LIFE
	dbw 23, STUN_SPORE
	dbw 25, PSYBEAM
	dbw 29, SLEEP_POWDER
	dbw 31, GUST
	dbw 37, SIGNAL_BEAM
	dbw 41, ZEN_HEADBUTT
	dbw 47, POISON_FANG
	dbw 55, PSYCHIC_M
	dbw 59, BUG_BUZZ
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	evolve EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, SAND_ATTACK
	dbw 4, GROWL
	dbw 7, ASTONISH
	dbw 12, MAGNITUDE
	dbw 15, MUD_SLAP
	dbw 18, DIG
	dbw 23, SUCKER_PUNCH
	dbw 26, EARTH_POWER
	dbw 29, MUD_BOMB
	dbw 34, SLASH
	dbw 37, EARTHQUAKE
	dbw 40, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, NIGHT_SLASH
	dbw 1, TRI_ATTACK
	dbw 1, SCRATCH
	dbw 1, SAND_ATTACK
	dbw 1, GROWL
	dbw 4, GROWL
	dbw 7, ASTONISH
	dbw 12, MAGNITUDE
	dbw 15, MUD_SLAP
	dbw 18, DIG
	dbw 23, SUCKER_PUNCH
	dbw 26, SAND_TOMB
	dbw 28, EARTH_POWER
	dbw 33, MUD_BOMB
	dbw 40, SLASH
	dbw 45, EARTHQUAKE
	dbw 50, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	evolve EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 6, BITE
	dbw 9, FAKE_OUT
	dbw 14, FURY_SWIPES
	dbw 17, SCREECH
	dbw 22, FAINT_ATTACK
	dbw 25, TAUNT
	dbw 30, PAY_DAY
	dbw 33, SLASH
	dbw 38, NASTY_PLOT
	dbw 41, ASSURANCE
	dbw 46, CAPTIVATE
	dbw 49, NIGHT_SLASH
	dbw 54, FEINT
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SWITCHEROO
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, BITE
	dbw 1, FAKE_OUT
	dbw 6, BITE
	dbw 9, FAKE_OUT
	dbw 14, FURY_SWIPES
	dbw 17, SCREECH
	dbw 22, FAINT_ATTACK
	dbw 25, TAUNT
	dbw 32, POWER_GEM
	dbw 37, SLASH
	dbw 44, NASTY_PLOT
	dbw 49, ASSURANCE
	dbw 56, CAPTIVATE
	dbw 61, NIGHT_SLASH
	dbw 68, FEINT
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	evolve EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	dbw 1, WATER_SPORT
	dbw 1, SCRATCH
	dbw 5, TAIL_WHIP
	dbw 9, WATER_GUN
	dbw 14, DISABLE
	dbw 18, CONFUSION
	dbw 22, WATER_PULSE
	dbw 27, FURY_SWIPES
	dbw 31, SCREECH
	dbw 35, PSYCH_UP
	dbw 40, ZEN_HEADBUTT
	dbw 44, AMNESIA
	dbw 48, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, AQUA_JET
	dbw 1, WATER_SPORT
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 1, WATER_GUN
	dbw 5, TAIL_WHIP
	dbw 9, WATER_GUN
	dbw 14, DISABLE
	dbw 18, CONFUSION
	dbw 22, WATER_PULSE
	dbw 27, FURY_SWIPES
	dbw 31, SCREECH
	dbw 37, PSYCH_UP
	dbw 44, ZEN_HEADBUTT
	dbw 50, AMNESIA
	dbw 56, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	evolve EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	dbw 1, COVET
	dbw 1, SCRATCH
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 1, FOCUS_ENERGY
	dbw 9, FURY_SWIPES
	dbw 13, KARATE_CHOP
	dbw 17, SEISMIC_TOSS
	dbw 21, SCREECH
	dbw 25, ASSURANCE
	dbw 33, SWAGGER
	dbw 37, CROSS_CHOP
	dbw 41, THRASH
	dbw 45, PUNISHMENT
	dbw 49, CLOSE_COMBAT
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FLING
	dbw 1, SCRATCH
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 1, FOCUS_ENERGY
	dbw 9, FURY_SWIPES
	dbw 13, KARATE_CHOP
	dbw 17, SEISMIC_TOSS
	dbw 21, SCREECH
	dbw 25, ASSURANCE
	dbw 28, RAGE
	dbw 35, SWAGGER
	dbw 41, CROSS_CHOP
	dbw 47, THRASH
	dbw 53, PUNISHMENT
	dbw 59, CLOSE_COMBAT
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	evolve EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, ROAR
	dbw 6, EMBER
	dbw 9, LEER
	dbw 14, ODOR_SLEUTH
	dbw 20, FLAME_WHEEL
	dbw 25, REVERSAL
	dbw 28, FIRE_FANG
	dbw 31, TAKE_DOWN
	dbw 34, FLAMETHROWER
	dbw 39, AGILITY
	dbw 42, CRUNCH
	dbw 45, HEAT_WAVE
	dbw 48, FLARE_BLITZ
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDER_FANG
	dbw 1, BITE
	dbw 1, ROAR
	dbw 1, FIRE_FANG
	dbw 1, ODOR_SLEUTH
	dbw 39, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	evolve EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	dbw 1, WATER_SPORT
	dbw 5, BUBBLE
	dbw 8, HYPNOSIS
	dbw 11, WATER_GUN
	dbw 15, DOUBLESLAP
	dbw 18, RAIN_DANCE
	dbw 21, BODY_SLAM
	dbw 25, BUBBLEBEAM
	dbw 28, MUD_SHOT
	dbw 31, BELLY_DRUM
	dbw 35, WAKE_UP_SLAP
	dbw 38, HYDRO_PUMP
	dbw 41, MUD_BOMB
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	evolve EVOLVE_ITEM, WATER_STONE, POLIWRATH
	evolve EVOLVE_TRADE, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	dbw 1, WATER_SPORT
	dbw 1, BUBBLE
	dbw 1, HYPNOSIS
	dbw 5, BUBBLE
	dbw 8, HYPNOSIS
	dbw 11, WATER_GUN
	dbw 15, DOUBLESLAP
	dbw 18, RAIN_DANCE
	dbw 21, BODY_SLAM
	dbw 27, BUBBLEBEAM
	dbw 32, MUD_SHOT
	dbw 37, BELLY_DRUM
	dbw 43, WAKE_UP_SLAP
	dbw 48, HYDRO_PUMP
	dbw 53, MUD_BOMB
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLEBEAM
	dbw 1, HYPNOSIS
	dbw 1, DOUBLESLAP
	dbw 1, SUBMISSION
	dbw 43, DYNAMICPUNCH
	dbw 53, MIND_READER
	db 0 ; no more level-up moves

AbraEvosAttacks:
	evolve EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	evolve EVOLVE_TRADE, -1, ALAKAZAM
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	dbw 1, KINESIS
	dbw 1, CONFUSION
	dbw 16, CONFUSION
	dbw 18, DISABLE
	dbw 22, MIRACLE_EYE
	dbw 24, PSYBEAM
	dbw 28, REFLECT
	dbw 30, RECOVER
	dbw 34, PSYCHO_CUT
	dbw 36, ROLE_PLAY
	dbw 40, PSYCHIC_M
	dbw 42, FUTURE_SIGHT
	dbw 46, TRICK
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	dbw 1, KINESIS
	dbw 1, CONFUSION
	dbw 16, CONFUSION
	dbw 18, DISABLE
	dbw 22, MIRACLE_EYE
	dbw 24, PSYBEAM
	dbw 28, REFLECT
	dbw 30, RECOVER
	dbw 34, PSYCHO_CUT
	dbw 36, CALM_MIND
	dbw 40, PSYCHIC_M
	dbw 42, FUTURE_SIGHT
	dbw 46, TRICK
	db 0 ; no more level-up moves

MachopEvosAttacks:
	evolve EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 7, FOCUS_ENERGY
	dbw 10, KARATE_CHOP
	dbw 13, FORESIGHT
	dbw 19, SEISMIC_TOSS
	dbw 22, REVENGE
	dbw 25, VITAL_THROW
	dbw 31, SUBMISSION
	dbw 34, WAKE_UP_SLAP
	dbw 37, CROSS_CHOP
	dbw 43, SCARY_FACE
	dbw 46, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	evolve EVOLVE_TRADE, -1, MACHAMP
	db 0 ; no more evolutions
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 1, FOCUS_ENERGY
	dbw 7, FOCUS_ENERGY
	dbw 10, KARATE_CHOP
	dbw 13, FORESIGHT
	dbw 19, SEISMIC_TOSS
	dbw 22, REVENGE
	dbw 25, VITAL_THROW
	dbw 32, SUBMISSION
	dbw 36, WAKE_UP_SLAP
	dbw 40, CROSS_CHOP
	dbw 44, SCARY_FACE
	dbw 51, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 1, FOCUS_ENERGY
	dbw 7, FOCUS_ENERGY
	dbw 10, KARATE_CHOP
	dbw 13, FORESIGHT
	dbw 19, SEISMIC_TOSS
	dbw 22, REVENGE
	dbw 25, VITAL_THROW
	dbw 32, SUBMISSION
	dbw 36, WAKE_UP_SLAP
	dbw 40, CROSS_CHOP
	dbw 44, SCARY_FACE
	dbw 51, DYNAMICPUNCH
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	evolve EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 7, GROWTH
	dbw 11, WRAP
	dbw 13, SLEEP_POWDER
	dbw 15, POISONPOWDER
	dbw 17, STUN_SPORE
	dbw 23, ACID
	dbw 27, KNOCK_OFF
	dbw 29, SWEET_SCENT
	dbw 35, GASTRO_ACID
	dbw 39, RAZOR_LEAF
	dbw 41, SLAM
	dbw 47, WRING_OUT
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	evolve EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 1, GROWTH
	dbw 1, WRAP
	dbw 7, GROWTH
	dbw 11, WRAP
	dbw 13, SLEEP_POWDER
	dbw 15, POISONPOWDER
	dbw 17, STUN_SPORE
	dbw 23, ACID
	dbw 27, KNOCK_OFF
	dbw 29, SWEET_SCENT
	dbw 35, GASTRO_ACID
	dbw 39, RAZOR_LEAF
	dbw 41, SLAM
	dbw 47, WRING_OUT
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, STOCKPILE
	dbw 1, SWALLOW
	dbw 1, SPIT_UP
	dbw 1, VINE_WHIP
	dbw 1, SLEEP_POWDER
	dbw 1, SWEET_SCENT
	dbw 1, RAZOR_LEAF
	dbw 47, LEAF_STORM
	dbw 47, LEAF_BLADE
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	evolve EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 5, SUPERSONIC
	dbw 8, CONSTRICT
	dbw 12, ACID
	dbw 15, TOXIC_SPIKES
	dbw 19, BUBBLEBEAM
	dbw 22, WRAP
	dbw 26, BARRIER
	dbw 29, WATER_PULSE
	dbw 33, POISON_JAB
	dbw 36, SCREECH
	dbw 40, HYDRO_PUMP
	dbw 43, WRING_OUT
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, SUPERSONIC
	dbw 1, CONSTRICT
	dbw 5, SUPERSONIC
	dbw 8, CONSTRICT
	dbw 12, ACID
	dbw 15, TOXIC_SPIKES
	dbw 19, BUBBLEBEAM
	dbw 22, WRAP
	dbw 26, BARRIER
	dbw 29, WATER_PULSE
	dbw 36, POISON_JAB
	dbw 42, SCREECH
	dbw 49, HYDRO_PUMP
	dbw 55, WRING_OUT
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	evolve EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 4, MUD_SPORT
	dbw 8, ROCK_POLISH
	dbw 11, ROCK_THROW
	dbw 15, MAGNITUDE
	dbw 18, SELFDESTRUCT
	dbw 22, ROLLOUT
	dbw 25, ROCK_BLAST
	dbw 29, EARTHQUAKE
	dbw 32, EXPLOSION
	dbw 36, DOUBLE_EDGE
	dbw 39, STONE_EDGE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	evolve EVOLVE_TRADE, -1, GOLEM
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 1, MUD_SPORT
	dbw 1, ROCK_POLISH
	dbw 4, MUD_SPORT
	dbw 8, ROCK_POLISH
	dbw 11, ROCK_THROW
	dbw 15, MAGNITUDE
	dbw 18, SELFDESTRUCT
	dbw 22, ROLLOUT
	dbw 27, ROCK_BLAST
	dbw 33, EARTHQUAKE
	dbw 38, EXPLOSION
	dbw 44, DOUBLE_EDGE
	dbw 49, STONE_EDGE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 1, MUD_SPORT
	dbw 1, ROCK_POLISH
	dbw 4, MUD_SPORT
	dbw 8, ROCK_POLISH
	dbw 11, ROCK_THROW
	dbw 15, MAGNITUDE
	dbw 18, SELFDESTRUCT
	dbw 22, ROLLOUT
	dbw 27, ROCK_BLAST
	dbw 33, EARTHQUAKE
	dbw 38, EXPLOSION
	dbw 44, DOUBLE_EDGE
	dbw 49, STONE_EDGE
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	evolve EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 6, TAIL_WHIP
	dbw 10, EMBER
	dbw 15, FLAME_WHEEL
	dbw 19, STOMP
	dbw 24, FIRE_SPIN
	dbw 28, TAKE_DOWN
	dbw 33, AGILITY
	dbw 37, FIRE_BLAST
	dbw 42, BOUNCE
	dbw 46, FLARE_BLITZ
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_JAB
	dbw 1, MEGAHORN
	dbw 1, GROWL
	dbw 1, QUICK_ATTACK
	dbw 1, TAIL_WHIP
	dbw 1, EMBER
	dbw 6, TAIL_WHIP
	dbw 10, EMBER
	dbw 15, FLAME_WHEEL
	dbw 19, STOMP
	dbw 24, FIRE_SPIN
	dbw 28, TAKE_DOWN
	dbw 33, AGILITY
	dbw 37, FIRE_BLAST
	dbw 40, FURY_ATTACK
	dbw 47, BOUNCE
	dbw 56, FLARE_BLITZ
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	evolve EVOLVE_LEVEL, 37, SLOWBRO
	evolve EVOLVE_TRADE, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	dbw 1, CURSE
	dbw 1, YAWN
	dbw 1, TACKLE
	dbw 6, GROWL
	dbw 11, WATER_GUN
	dbw 15, CONFUSION
	dbw 20, DISABLE
	dbw 25, HEADBUTT
	dbw 29, WATER_PULSE
	dbw 34, ZEN_HEADBUTT
	dbw 39, SLACK_OFF
	dbw 43, AMNESIA
	dbw 48, PSYCHIC_M
	dbw 53, RAIN_DANCE
	dbw 57, PSYCH_UP
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CURSE
	dbw 1, YAWN
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, GROWL
	dbw 11, WATER_GUN
	dbw 15, CONFUSION
	dbw 20, DISABLE
	dbw 25, HEADBUTT
	dbw 29, WATER_PULSE
	dbw 34, ZEN_HEADBUTT
	dbw 37, WITHDRAW
	dbw 41, SLACK_OFF
	dbw 47, AMNESIA
	dbw 54, PSYCHIC_M
	dbw 61, RAIN_DANCE
	dbw 67, PSYCH_UP
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	evolve EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	dbw 1, METAL_SOUND
	dbw 1, TACKLE
	dbw 6, THUNDERSHOCK
	dbw 11, SUPERSONIC
	dbw 14, SONICBOOM
	dbw 17, THUNDER_WAVE
	dbw 22, SPARK
	dbw 27, LOCK_ON
	dbw 30, MAGNET_BOMB
	dbw 33, SCREECH
	dbw 38, DISCHARGE
	dbw 43, MIRROR_SHOT
	dbw 46, MAGNET_RISE
	dbw 49, GYRO_BALL
	dbw 54, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
        evolve EVOLVE_ITEM, THUNDERSTONE, MAGNEZONE
        db 0 ; no more evolutions
	dbw 1, TRI_ATTACK
	dbw 1, METAL_SOUND
	dbw 1, TACKLE
	dbw 1, THUNDERSHOCK
	dbw 1, SUPERSONIC
	dbw 6, THUNDERSHOCK
	dbw 11, SUPERSONIC
	dbw 14, SONICBOOM
	dbw 17, THUNDER_WAVE
	dbw 22, SPARK
	dbw 27, LOCK_ON
	dbw 30, MAGNET_BOMB
	dbw 34, SCREECH
	dbw 40, DISCHARGE
	dbw 46, MIRROR_SHOT
	dbw 50, MAGNET_RISE
	dbw 54, GYRO_BALL
	dbw 60, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_JAB
	dbw 1, PECK
	dbw 1, SAND_ATTACK
	dbw 1, LEER
	dbw 1, FURY_CUTTER
	dbw 7, FURY_ATTACK
	dbw 9, KNOCK_OFF
	dbw 13, AERIAL_ACE
	dbw 19, SLASH
	dbw 21, AIR_CUTTER
	dbw 25, SWORDS_DANCE
	dbw 31, AGILITY
	dbw 33, NIGHT_SLASH
	dbw 37, AIR_SLASH
	dbw 43, FEINT
	dbw 45, FALSE_SWIPE
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	evolve EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 5, QUICK_ATTACK
	dbw 10, RAGE
	dbw 14, FURY_ATTACK
	dbw 19, PURSUIT
	dbw 23, UPROAR
	dbw 28, ACUPRESSURE
	dbw 32, DOUBLE_HIT
	dbw 37, AGILITY
	dbw 41, DRILL_PECK
	dbw 46, ENDEAVOR
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PLUCK
	dbw 1, PECK
	dbw 1, GROWL
	dbw 1, QUICK_ATTACK
	dbw 1, RAGE
	dbw 5, QUICK_ATTACK
	dbw 10, RAGE
	dbw 14, FURY_ATTACK
	dbw 19, PURSUIT
	dbw 23, UPROAR
	dbw 28, ACUPRESSURE
	dbw 34, TRI_ATTACK
	dbw 41, AGILITY
	dbw 47, DRILL_PECK
	dbw 54, ENDEAVOR
	db 0 ; no more level-up moves

SeelEvosAttacks:
	evolve EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 3, GROWL
	dbw 7, WATER_SPORT
	dbw 11, ICY_WIND
	dbw 13, ENCORE
	dbw 17, ICE_SHARD
	dbw 21, REST
	dbw 23, AQUA_RING
	dbw 27, AURORA_BEAM
	dbw 31, AQUA_JET
	dbw 33, BRINE
	dbw 37, TAKE_DOWN
	dbw 41, DIVE
	dbw 43, AQUA_TAIL
	dbw 47, ICE_BEAM
	dbw 51, SAFEGUARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 1, GROWL
	dbw 1, SIGNAL_BEAM
	dbw 1, ICY_WIND
	dbw 3, GROWL
	dbw 7, SIGNAL_BEAM
	dbw 11, ICY_WIND
	dbw 13, ENCORE
	dbw 17, ICE_SHARD
	dbw 21, REST
	dbw 23, AQUA_RING
	dbw 27, AURORA_BEAM
	dbw 31, AQUA_JET
	dbw 33, BRINE
	dbw 34, SHEER_COLD
	dbw 37, TAKE_DOWN
	dbw 41, DIVE
	dbw 43, AQUA_TAIL
	dbw 47, ICE_BEAM
	dbw 51, SAFEGUARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	evolve EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, POUND
	dbw 4, HARDEN
	dbw 7, MUD_SLAP
	dbw 12, DISABLE
	dbw 17, MINIMIZE
	dbw 20, SLUDGE
	dbw 23, MUD_BOMB
	dbw 28, FLING
	dbw 33, SCREECH
	dbw 36, SLUDGE_BOMB
	dbw 39, ACID_ARMOR
	dbw 44, GUNK_SHOT
	dbw 49, MEMENTO
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, POUND
	dbw 1, HARDEN
	dbw 1, MUD_SLAP
	dbw 4, HARDEN
	dbw 7, MUD_SLAP
	dbw 12, DISABLE
	dbw 17, MINIMIZE
	dbw 20, SLUDGE
	dbw 23, MUD_BOMB
	dbw 28, FLING
	dbw 33, SCREECH
	dbw 36, SLUDGE_BOMB
	dbw 44, ACID_ARMOR
	dbw 54, GUNK_SHOT
	dbw 65, MEMENTO
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	evolve EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, WITHDRAW
	dbw 8, SUPERSONIC
	dbw 13, ICICLE_SPEAR
	dbw 16, PROTECT
	dbw 20, LEER
	dbw 25, CLAMP
	dbw 28, ICE_SHARD
	dbw 32, AURORA_BEAM
	dbw 37, WHIRLPOOL
	dbw 40, IRON_DEFENSE
	dbw 44, BRINE
	dbw 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TOXIC_SPIKES
	dbw 1, WITHDRAW
	dbw 1, SUPERSONIC
	dbw 1, AURORA_BEAM
	dbw 1, PROTECT
	dbw 28, SPIKES
	dbw 40, SPIKE_CANNON
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	evolve EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 5, SPITE
	dbw 8, MEAN_LOOK
	dbw 12, CURSE
	dbw 15, NIGHT_SHADE
	dbw 19, CONFUSE_RAY
	dbw 22, SUCKER_PUNCH
	dbw 26, PAYBACK
	dbw 29, SHADOW_BALL
	dbw 33, DREAM_EATER
	dbw 36, DARK_PULSE
	dbw 40, DESTINY_BOND
	dbw 43, NIGHTMARE
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	evolve EVOLVE_TRADE, -1, GENGAR
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 1, SPITE
	dbw 5, SPITE
	dbw 8, MEAN_LOOK
	dbw 12, CURSE
	dbw 15, NIGHT_SHADE
	dbw 19, CONFUSE_RAY
	dbw 22, SUCKER_PUNCH
	dbw 25, SHADOW_PUNCH
	dbw 28, PAYBACK
	dbw 33, SHADOW_BALL
	dbw 39, DREAM_EATER
	dbw 44, DARK_PULSE
	dbw 50, DESTINY_BOND
	dbw 55, NIGHTMARE
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 1, SPITE
	dbw 5, SPITE
	dbw 8, MEAN_LOOK
	dbw 12, CURSE
	dbw 15, NIGHT_SHADE
	dbw 19, CONFUSE_RAY
	dbw 22, SUCKER_PUNCH
	dbw 25, SHADOW_PUNCH
	dbw 28, PAYBACK
	dbw 33, SHADOW_BALL
	dbw 39, DREAM_EATER
	dbw 44, DARK_PULSE
	dbw 50, DESTINY_BOND
	dbw 55, NIGHTMARE
	db 0 ; no more level-up moves

OnixEvosAttacks:
	evolve EVOLVE_TRADE, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	dbw 1, MUD_SPORT
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, BIND
	dbw 6, SCREECH
	dbw 9, ROCK_THROW
	dbw 14, RAGE
	dbw 17, ROCK_TOMB
	dbw 22, SANDSTORM
	dbw 25, SLAM
	dbw 30, ROCK_POLISH
	dbw 33, DRAGONBREATH
	dbw 38, CURSE
	dbw 41, IRON_TAIL
	dbw 46, SAND_TOMB
	dbw 49, DOUBLE_EDGE
	dbw 54, STONE_EDGE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	evolve EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, HYPNOSIS
	dbw 7, DISABLE
	dbw 9, CONFUSION
	dbw 15, HEADBUTT
	dbw 18, POISON_GAS
	dbw 21, MEDITATE
	dbw 26, PSYBEAM
	dbw 29, PSYCH_UP
	dbw 32, HEADBUTT
	dbw 37, SWAGGER
	dbw 40, PSYCHIC_M
	dbw 43, NASTY_PLOT
	dbw 50, ZEN_HEADBUTT
	dbw 53, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, NIGHTMARE
	dbw 1, SWITCHEROO
	dbw 1, POUND
	dbw 1, HYPNOSIS
	dbw 1, DISABLE
	dbw 1, CONFUSION
	dbw 7, DISABLE
	dbw 9, CONFUSION
	dbw 15, HEADBUTT
	dbw 18, POISON_GAS
	dbw 21, MEDITATE
	dbw 28, PSYBEAM
	dbw 33, PSYCH_UP
	dbw 38, HEADBUTT
	dbw 45, SWAGGER
	dbw 50, PSYCHIC_M
	dbw 55, NASTY_PLOT
	dbw 64, ZEN_HEADBUTT
	dbw 69, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	evolve EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	dbw 1, MUD_SPORT
	dbw 1, BUBBLE
	dbw 5, VICEGRIP
	dbw 9, LEER
	dbw 11, HARDEN
	dbw 15, BUBBLEBEAM
	dbw 19, MUD_SHOT
	dbw 21, METAL_CLAW
	dbw 25, STOMP
	dbw 29, PROTECT
	dbw 31, GUILLOTINE
	dbw 35, SLAM
	dbw 39, BRINE
	dbw 41, CRABHAMMER
	dbw 45, FLAIL
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MUD_SPORT
	dbw 1, BUBBLE
	dbw 1, VICEGRIP
	dbw 5, VICEGRIP
	dbw 9, LEER
	dbw 11, HARDEN
	dbw 15, BUBBLEBEAM
	dbw 19, MUD_SHOT
	dbw 21, METAL_CLAW
	dbw 25, STOMP
	dbw 32, PROTECT
	dbw 37, GUILLOTINE
	dbw 44, SLAM
	dbw 51, BRINE
	dbw 56, CRABHAMMER
	dbw 63, FLAIL
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	evolve EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	dbw 1, CHARGE
	dbw 5, TACKLE
	dbw 8, SONICBOOM
	dbw 12, SPARK
	dbw 15, ROLLOUT
	dbw 19, SCREECH
	dbw 22, LIGHT_SCREEN
	dbw 26, CHARGE_BEAM
	dbw 29, SELFDESTRUCT
	dbw 33, SWIFT
	dbw 36, MAGNET_RISE
	dbw 40, GYRO_BALL
	dbw 43, EXPLOSION
	dbw 47, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CHARGE
	dbw 1, TACKLE
	dbw 1, SONICBOOM
	dbw 1, SPARK
	dbw 5, TACKLE
	dbw 8, SONICBOOM
	dbw 12, SPARK
	dbw 15, ROLLOUT
	dbw 19, SCREECH
	dbw 22, LIGHT_SCREEN
	dbw 26, CHARGE_BEAM
	dbw 29, SELFDESTRUCT
	dbw 35, SWIFT
	dbw 40, MAGNET_RISE
	dbw 46, GYRO_BALL
	dbw 51, EXPLOSION
	dbw 57, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	evolve EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	dbw 1, BARRAGE
	dbw 1, UPROAR
	dbw 1, HYPNOSIS
	dbw 7, REFLECT
	dbw 11, LEECH_SEED
	dbw 17, BULLET_SEED
	dbw 19, STUN_SPORE
	dbw 21, POISONPOWDER
	dbw 23, SLEEP_POWDER
	dbw 27, CONFUSION
	dbw 33, WORRY_SEED
	dbw 37, NATURAL_GIFT
	dbw 43, SOLARBEAM
	dbw 47, PSYCHIC_M
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SEED_BOMB
	dbw 1, BARRAGE
	dbw 1, HYPNOSIS
	dbw 1, CONFUSION
	dbw 1, STOMP
	dbw 17, STOMP
	dbw 27, EGG_BOMB
	dbw 37, WOOD_HAMMER
	dbw 47, LEAF_STORM
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	evolve EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 3, TAIL_WHIP
	dbw 7, BONE_CLUB
	dbw 11, HEADBUTT
	dbw 13, LEER
	dbw 17, FOCUS_ENERGY
	dbw 21, BONEMERANG
	dbw 23, RAGE
	dbw 27, FALSE_SWIPE
	dbw 31, THRASH
	dbw 33, FLING
	dbw 37, BONE_RUSH
	dbw 41, ENDEAVOR
	dbw 43, DOUBLE_EDGE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 1, BONE_CLUB
	dbw 1, HEADBUTT
	dbw 3, TAIL_WHIP
	dbw 7, BONE_CLUB
	dbw 11, HEADBUTT
	dbw 13, LEER
	dbw 17, FOCUS_ENERGY
	dbw 21, BONEMERANG
	dbw 23, RAGE
	dbw 27, FALSE_SWIPE
	dbw 33, THRASH
	dbw 37, FLING
	dbw 43, BONE_RUSH
	dbw 49, ENDEAVOR
	dbw 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, REVENGE
	dbw 1, DOUBLE_KICK
	dbw 5, MEDITATE
	dbw 9, ROLLING_KICK
	dbw 13, JUMP_KICK
	dbw 17, BRICK_BREAK
	dbw 21, FOCUS_ENERGY
	dbw 25, FEINT
	dbw 29, HI_JUMP_KICK
	dbw 33, MIND_READER
	dbw 37, FORESIGHT
	dbw 41, BLAZE_KICK
	dbw 45, ENDURE
	dbw 49, MEGA_KICK
	dbw 53, CLOSE_COMBAT
	dbw 57, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, REVENGE
	dbw 1, COMET_PUNCH
	dbw 6, AGILITY
	dbw 11, PURSUIT
	dbw 16, MACH_PUNCH
	dbw 16, BULLET_PUNCH
	dbw 21, FEINT
	dbw 26, VACUUM_WAVE
	dbw 31, THUNDERPUNCH
	dbw 31, ICE_PUNCH
	dbw 31, FIRE_PUNCH
	dbw 36, SKY_UPPERCUT
	dbw 41, MEGA_PUNCH
	dbw 46, DETECT
	dbw 51, COUNTER
	dbw 56, CLOSE_COMBAT
	db 0 ; no more level-up moves

LickitungEvosAttacks:
        dbbw EVOLVE_LEVEL, 33, LICKILICKY
        db 0 ; no more evolutions
	dbw 1, LICK
	dbw 5, SUPERSONIC
	dbw 9, DEFENSE_CURL
	dbw 13, KNOCK_OFF
	dbw 17, WRAP
	dbw 21, STOMP
	dbw 25, DISABLE
	dbw 29, SLAM
	dbw 33, ROLLOUT
	dbw 41, REFRESH
	dbw 45, SCREECH
	dbw 49, POWER_WHIP
	dbw 53, WRING_OUT
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	evolve EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, TACKLE
	dbw 6, SMOG
	dbw 10, SMOKESCREEN
	dbw 15, ASSURANCE
	dbw 19, SELFDESTRUCT
	dbw 24, SLUDGE
	dbw 28, HAZE
	dbw 33, GYRO_BALL
	dbw 37, EXPLOSION
	dbw 42, SLUDGE_BOMB
	dbw 46, DESTINY_BOND
	dbw 51, MEMENTO
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, TACKLE
	dbw 1, SMOG
	dbw 1, SMOKESCREEN
	dbw 6, SMOG
	dbw 10, SMOKESCREEN
	dbw 15, ASSURANCE
	dbw 19, SELFDESTRUCT
	dbw 24, SLUDGE
	dbw 28, HAZE
	dbw 33, DOUBLE_HIT
	dbw 40, EXPLOSION
	dbw 48, SLUDGE_BOMB
	dbw 55, DESTINY_BOND
	dbw 63, MEMENTO
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	evolve EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 1, TAIL_WHIP
	dbw 9, STOMP
	dbw 13, FURY_ATTACK
	dbw 21, SCARY_FACE
	dbw 25, ROCK_BLAST
	dbw 33, TAKE_DOWN
	dbw 37, HORN_DRILL
	dbw 45, STONE_EDGE
	dbw 49, EARTHQUAKE
	dbw 57, MEGAHORN
	db 0 ; no more level-up moves

RhydonEvosAttacks:
        evolve EVOLVE_ITEM, PROTECTOR, RHYPERIOR
        db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 1, TAIL_WHIP
	dbw 1, STOMP
	dbw 1, FURY_ATTACK
	dbw 9, STOMP
	dbw 13, FURY_ATTACK
	dbw 21, SCARY_FACE
	dbw 25, ROCK_BLAST
	dbw 33, TAKE_DOWN
	dbw 37, HORN_DRILL
	dbw 42, HAMMER_ARM
	dbw 45, STONE_EDGE
	dbw 49, EARTHQUAKE
	dbw 57, MEGAHORN
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	evolve EVOLVE_HAPPINESS, BLISSEY
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 5, TAIL_WHIP
	dbw 9, REFRESH
	dbw 12, SOFTBOILED
	dbw 16, DOUBLESLAP
	dbw 20, MINIMIZE
	dbw 23, SING
	dbw 27, FLING
	dbw 31, DEFENSE_CURL
	dbw 34, LIGHT_SCREEN
	dbw 38, EGG_BOMB
	dbw 42, HEALING_WISH
	dbw 46, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
        dbbw EVOLVE_LEVEL, 33, TANGROWTH
        db 0 ; no more evolutions
	dbw 1, INGRAIN
	dbw 1, CONSTRICT
	dbw 5, SLEEP_POWDER
	dbw 8, ABSORB
	dbw 12, GROWTH
	dbw 15, POISONPOWDER
	dbw 19, VINE_WHIP
	dbw 22, BIND
	dbw 26, MEGA_DRAIN
	dbw 29, STUN_SPORE
	dbw 33, ANCIENTPOWER
	dbw 36, KNOCK_OFF
	dbw 40, NATURAL_GIFT
	dbw 43, SLAM
	dbw 47, TICKLE
	dbw 50, WRING_OUT
	dbw 54, POWER_WHIP
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COMET_PUNCH
	dbw 1, LEER
	dbw 7, FAKE_OUT
	dbw 10, TAIL_WHIP
	dbw 13, BITE
	dbw 19, MEGA_PUNCH
	dbw 22, RAGE
	dbw 25, DIZZY_PUNCH
	dbw 31, CRUNCH
	dbw 34, ENDURE
	dbw 37, OUTRAGE
	dbw 43, DOUBLE_HIT
	dbw 46, SUCKER_PUNCH
	dbw 49, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	evolve EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 4, SMOKESCREEN
	dbw 8, LEER
	dbw 11, WATER_GUN
	dbw 14, FOCUS_ENERGY
	dbw 18, BUBBLEBEAM
	dbw 23, AGILITY
	dbw 26, TWISTER
	dbw 30, BRINE
	dbw 35, HYDRO_PUMP
	dbw 38, DRAGON_DANCE
	dbw 42, DRAGON_PULSE
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	evolve EVOLVE_TRADE, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, SMOKESCREEN
	dbw 1, LEER
	dbw 1, WATER_GUN
	dbw 4, SMOKESCREEN
	dbw 8, LEER
	dbw 11, WATER_GUN
	dbw 14, FOCUS_ENERGY
	dbw 18, BUBBLEBEAM
	dbw 23, AGILITY
	dbw 26, TWISTER
	dbw 30, BRINE
	dbw 40, HYDRO_PUMP
	dbw 48, DRAGON_DANCE
	dbw 57, DRAGON_PULSE
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	evolve EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, TAIL_WHIP
	dbw 1, WATER_SPORT
	dbw 7, SUPERSONIC
	dbw 11, HORN_ATTACK
	dbw 17, WATER_PULSE
	dbw 21, FLAIL
	dbw 27, AQUA_RING
	dbw 31, FURY_ATTACK
	dbw 37, WATERFALL
	dbw 41, HORN_DRILL
	dbw 47, AGILITY
	dbw 51, MEGAHORN
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_JAB
	dbw 1, PECK
	dbw 1, TAIL_WHIP
	dbw 1, WATER_SPORT
	dbw 1, SUPERSONIC
	dbw 7, SUPERSONIC
	dbw 11, HORN_ATTACK
	dbw 17, WATER_PULSE
	dbw 21, FLAIL
	dbw 27, AQUA_RING
	dbw 31, FURY_ATTACK
	dbw 40, WATERFALL
	dbw 47, HORN_DRILL
	dbw 56, AGILITY
	dbw 63, MEGAHORN
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	evolve EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 6, WATER_GUN
	dbw 10, RAPID_SPIN
	dbw 15, RECOVER
	dbw 19, CAMOUFLAGE
	dbw 24, SWIFT
	dbw 28, BUBBLEBEAM
	dbw 33, MINIMIZE
	dbw 37, GYRO_BALL
	dbw 42, LIGHT_SCREEN
	dbw 46, POWER_GEM
	dbw 51, COSMIC_POWER
	dbw 55, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, RAPID_SPIN
	dbw 1, RECOVER
	dbw 1, SWIFT
	dbw 28, CONFUSE_RAY
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MAGICAL_LEAF
	dbw 1, POWER_SWAP
	dbw 1, GUARD_SWAP
	dbw 1, BARRIER
	dbw 1, CONFUSION
	dbw 4, COPYCAT
	dbw 8, MEDITATE
	dbw 11, ENCORE
	dbw 15, DOUBLESLAP
	dbw 18, MIMIC
	dbw 22, LIGHT_SCREEN
	dbw 22, REFLECT
	dbw 25, PSYBEAM
	dbw 29, SUBSTITUTE
	dbw 32, RECYCLE
	dbw 36, TRICK
	dbw 39, PSYCHIC_M
	dbw 43, ROLE_PLAY
	dbw 46, BATON_PASS
	dbw 50, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	evolve EVOLVE_TRADE, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	dbw 1, VACUUM_WAVE
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 5, FOCUS_ENERGY
	dbw 9, PURSUIT
	dbw 13, FALSE_SWIPE
	dbw 17, AGILITY
	dbw 21, WING_ATTACK
	dbw 25, FURY_CUTTER
	dbw 29, SLASH
	dbw 33, RAZOR_WIND
	dbw 37, DOUBLE_TEAM
	dbw 41, X_SCISSOR
	dbw 45, NIGHT_SLASH
	dbw 49, DOUBLE_HIT
	dbw 53, AIR_SLASH
	dbw 57, SWORDS_DANCE
	dbw 61, FEINT
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LICK
	dbw 1, LOVELY_KISS
	dbw 1, POWDER_SNOW
	dbw 5, LICK
	dbw 8, LOVELY_KISS
	dbw 11, POWDER_SNOW
	dbw 15, DOUBLESLAP
	dbw 18, ICE_PUNCH
	dbw 21, MEAN_LOOK
	dbw 25, FAKE_TEARS
	dbw 28, WAKE_UP_SLAP
	dbw 33, AVALANCHE
	dbw 39, BODY_SLAM
	dbw 44, WRING_OUT
	dbw 49, PERISH_SONG
	dbw 55, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
        evolve EVOLVE_ITEM, ELECTIRIZER, ELECTIVIRE
        db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 1, THUNDERSHOCK
	dbw 7, THUNDERSHOCK
	dbw 10, LOW_KICK
	dbw 16, SWIFT
	dbw 19, SHOCK_WAVE
	dbw 25, LIGHT_SCREEN
	dbw 28, THUNDERPUNCH
	dbw 37, DISCHARGE
	dbw 43, THUNDERBOLT
	dbw 52, SCREECH
	dbw 58, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
        evolve EVOLVE_ITEM, MAGMARIZER, MAGMORTAR
        db 0 ; no more evolutions
	dbw 1, SMOG
	dbw 1, LEER
	dbw 1, EMBER
	dbw 7, EMBER
	dbw 10, SMOKESCREEN
	dbw 16, FAINT_ATTACK
	dbw 19, FIRE_SPIN
	dbw 25, CONFUSE_RAY
	dbw 28, FIRE_PUNCH
	dbw 36, LAVA_PLUME
	dbw 41, FLAMETHROWER
	dbw 49, SUNNY_DAY
	dbw 54, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, VICEGRIP
	dbw 1, FOCUS_ENERGY
	dbw 4, BIND
	dbw 8, SEISMIC_TOSS
	dbw 13, HARDEN
	dbw 18, REVENGE
	dbw 21, BRICK_BREAK
	dbw 25, VITAL_THROW
	dbw 30, X_SCISSOR
	dbw 35, THRASH
	dbw 38, SWORDS_DANCE
	dbw 42, SUBMISSION
	dbw 47, GUILLOTINE
	dbw 52, SUPERPOWER
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 3, TAIL_WHIP
	dbw 5, RAGE
	dbw 8, HORN_ATTACK
	dbw 11, SCARY_FACE
	dbw 15, PURSUIT
	dbw 19, REST
	dbw 24, PAYBACK
	dbw 29, ZEN_HEADBUTT
	dbw 35, TAKE_DOWN
	dbw 41, SWAGGER
	dbw 48, THRASH
	dbw 55, GIGA_IMPACT
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	evolve EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 15, TACKLE
	dbw 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THRASH
	dbw 20, BITE
	dbw 23, DRAGON_RAGE
	dbw 26, LEER
	dbw 29, TWISTER
	dbw 32, ICE_FANG
	dbw 35, AQUA_TAIL
	dbw 38, RAIN_DANCE
	dbw 41, HYDRO_PUMP
	dbw 44, DRAGON_DANCE
	dbw 47, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 4, MIST
	dbw 7, CONFUSE_RAY
	dbw 10, ICE_SHARD
	dbw 14, WATER_PULSE
	dbw 18, BODY_SLAM
	dbw 22, RAIN_DANCE
	dbw 27, PERISH_SONG
	dbw 32, ICE_BEAM
	dbw 37, BRINE
	dbw 43, SAFEGUARD
	dbw 49, HYDRO_PUMP
	dbw 55, SHEER_COLD
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	evolve EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	evolve EVOLVE_ITEM, WATER_STONE, VAPOREON
    evolve EVOLVE_ITEM, FIRE_STONE, FLAREON
    evolve EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
    evolve EVOLVE_HAPPINESS, TR_EVENITE, UMBREON
    evolve EVOLVE_ITEM, LEAF_STONE, LEAFEON
    evolve EVOLVE_ITEM, ICE_STONE, GLACEON
    db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, TACKLE
	dbw 8, SAND_ATTACK
	dbw 15, GROWL
	dbw 22, QUICK_ATTACK
	dbw 29, BITE
	dbw 36, BATON_PASS
	dbw 43, TAKE_DOWN
	dbw 50, LAST_RESORT
	dbw 57, TRUMP_CARD
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TAIL_WHIP
	dbw 1, TACKLE
	dbw 8, SAND_ATTACK
	dbw 15, WATER_GUN
	dbw 22, QUICK_ATTACK
	dbw 29, BITE
	dbw 36, AURORA_BEAM
	dbw 43, AQUA_RING
	dbw 50, LAST_RESORT
	dbw 57, HAZE
	dbw 64, ACID_ARMOR
	dbw 71, HYDRO_PUMP
	dbw 78, MUDDY_WATER
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TAIL_WHIP
	dbw 1, TACKLE
	dbw 8, SAND_ATTACK
	dbw 15, THUNDERSHOCK
	dbw 22, QUICK_ATTACK
	dbw 29, DOUBLE_KICK
	dbw 36, PIN_MISSILE
	dbw 43, THUNDER_FANG
	dbw 50, LAST_RESORT
	dbw 57, THUNDER_WAVE
	dbw 64, AGILITY
	dbw 71, THUNDER
	dbw 78, DISCHARGE
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TAIL_WHIP
	dbw 1, TACKLE
	dbw 8, SAND_ATTACK
	dbw 15, EMBER
	dbw 22, QUICK_ATTACK
	dbw 29, BITE
	dbw 36, FIRE_SPIN
	dbw 43, FIRE_FANG
	dbw 50, LAST_RESORT
	dbw 57, SMOG
	dbw 64, SCARY_FACE
	dbw 71, FIRE_BLAST
	dbw 78, LAVA_PLUME
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	evolve EVOLVE_TRADE, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	dbw 1, CONVERSION2
	dbw 1, TACKLE
	dbw 1, CONVERSION
	dbw 1, SHARPEN
	dbw 7, PSYBEAM
	dbw 12, AGILITY
	dbw 18, RECOVER
	dbw 23, MAGNET_RISE
	dbw 29, SIGNAL_BEAM
	dbw 34, RECYCLE
	dbw 40, DISCHARGE
	dbw 45, LOCK_ON
	dbw 51, TRI_ATTACK
	dbw 56, MAGIC_COAT
	dbw 62, ZAP_CANNON
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	evolve EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 7, BITE
	dbw 10, WATER_GUN
	dbw 16, ROLLOUT
	dbw 19, LEER
	dbw 25, MUD_SHOT
	dbw 28, BRINE
	dbw 34, PROTECT
	dbw 37, ANCIENTPOWER
	dbw 43, TICKLE
	dbw 46, ROCK_BLAST
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 1, BITE
	dbw 7, BITE
	dbw 10, WATER_GUN
	dbw 16, ROLLOUT
	dbw 19, LEER
	dbw 25, MUD_SHOT
	dbw 28, BRINE
	dbw 34, PROTECT
	dbw 37, ANCIENTPOWER
	dbw 40, SPIKE_CANNON
	dbw 48, TICKLE
	dbw 56, ROCK_BLAST
	dbw 67, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	evolve EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 6, ABSORB
	dbw 11, LEER
	dbw 16, MUD_SHOT
	dbw 21, SAND_ATTACK
	dbw 26, ENDURE
	dbw 31, AQUA_JET
	dbw 36, MEGA_DRAIN
	dbw 41, METAL_SOUND
	dbw 46, ANCIENTPOWER
	dbw 51, WRING_OUT
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FEINT
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 1, ABSORB
	dbw 1, LEER
	dbw 6, ABSORB
	dbw 11, LEER
	dbw 16, MUD_SHOT
	dbw 21, SAND_ATTACK
	dbw 26, ENDURE
	dbw 31, AQUA_JET
	dbw 36, MEGA_DRAIN
	dbw 40, SLASH
	dbw 45, METAL_SOUND
	dbw 54, ANCIENTPOWER
	dbw 63, WRING_OUT
	dbw 72, NIGHT_SLASH
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ICE_FANG
	dbw 1, FIRE_FANG
	dbw 1, THUNDER_FANG
	dbw 1, WING_ATTACK
	dbw 1, SUPERSONIC
	dbw 1, BITE
	dbw 1, SCARY_FACE
	dbw 9, ROAR
	dbw 17, AGILITY
	dbw 25, ANCIENTPOWER
	dbw 33, CRUNCH
	dbw 41, TAKE_DOWN
	dbw 49, IRON_HEAD
	dbw 57, HYPER_BEAM
	dbw 65, ROCK_SLIDE
	dbw 73, GIGA_IMPACT
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, DEFENSE_CURL
	dbw 9, AMNESIA
	dbw 12, LICK
	dbw 17, BELLY_DRUM
	dbw 20, YAWN
	dbw 25, REST
	dbw 28, SNORE
	dbw 28, SLEEP_TALK
	dbw 33, BODY_SLAM
	dbw 36, BLOCK
	dbw 41, ROLLOUT
	dbw 44, CRUNCH
	dbw 49, GIGA_IMPACT
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GUST
	dbw 1, POWDER_SNOW
	dbw 8, MIST
	dbw 15, ICE_SHARD
	dbw 22, MIND_READER
	dbw 29, ANCIENTPOWER
	dbw 36, AGILITY
	dbw 43, ICE_BEAM
	dbw 50, REFLECT
	dbw 57, ROOST
	dbw 64, TAILWIND
	dbw 71, BLIZZARD
	dbw 78, SHEER_COLD
	dbw 85, HAIL
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, THUNDERSHOCK
	dbw 8, THUNDER_WAVE
	dbw 15, DETECT
	dbw 22, PLUCK
	dbw 29, ANCIENTPOWER
	dbw 36, CHARGE
	dbw 43, AGILITY
	dbw 50, DISCHARGE
	dbw 57, ROOST
	dbw 64, LIGHT_SCREEN
	dbw 71, DRILL_PECK
	dbw 78, THUNDER
	dbw 85, RAIN_DANCE
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WING_ATTACK
	dbw 1, EMBER
	dbw 8, FIRE_SPIN
	dbw 15, AGILITY
	dbw 22, ENDURE
	dbw 29, ANCIENTPOWER
	dbw 36, FLAMETHROWER
	dbw 43, SAFEGUARD
	dbw 50, AIR_SLASH
	dbw 57, ROOST
	dbw 64, HEAT_WAVE
	dbw 71, SOLARBEAM
	dbw 78, SKY_ATTACK
	dbw 85, SUNNY_DAY
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	evolve EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 5, THUNDER_WAVE
	dbw 11, TWISTER
	dbw 15, DRAGON_RAGE
	dbw 21, SLAM
	dbw 25, AGILITY
	dbw 31, AQUA_TAIL
	dbw 35, DRAGON_RUSH
	dbw 41, SAFEGUARD
	dbw 45, DRAGON_DANCE
	dbw 51, OUTRAGE
	dbw 55, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	evolve EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 1, THUNDER_WAVE
	dbw 1, TWISTER
	dbw 5, THUNDER_WAVE
	dbw 11, TWISTER
	dbw 15, DRAGON_RAGE
	dbw 21, SLAM
	dbw 25, AGILITY
	dbw 33, AQUA_TAIL
	dbw 39, DRAGON_RUSH
	dbw 47, SAFEGUARD
	dbw 53, DRAGON_DANCE
	dbw 61, OUTRAGE
	dbw 67, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FIRE_PUNCH
	dbw 1, THUNDERPUNCH
	dbw 1, ROOST
	dbw 1, WRAP
	dbw 1, LEER
	dbw 1, THUNDER_WAVE
	dbw 1, TWISTER
	dbw 5, THUNDER_WAVE
	dbw 11, TWISTER
	dbw 15, DRAGON_RAGE
	dbw 21, SLAM
	dbw 25, AGILITY
	dbw 33, AQUA_TAIL
	dbw 39, DRAGON_RUSH
	dbw 47, SAFEGUARD
	dbw 53, DRAGON_DANCE
	dbw 55, WING_ATTACK
	dbw 64, OUTRAGE
	dbw 73, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DISABLE
	dbw 8, BARRIER
	dbw 15, SWIFT
	dbw 22, FUTURE_SIGHT
	dbw 29, PSYCH_UP
	dbw 36, MIRACLE_EYE
	dbw 43, MIST
	dbw 50, PSYCHO_CUT
	dbw 57, AMNESIA
	dbw 64, POWER_SWAP
	dbw 64, GUARD_SWAP
	dbw 71, PSYCHIC_M
	dbw 86, RECOVER
	dbw 93, SAFEGUARD
	dbw 100, AURA_SPHERE
	db 0 ; no more level-up moves

ENDSECTION
