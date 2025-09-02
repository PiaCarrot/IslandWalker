SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw PoochyenaEvosAttacks
	dw MightyenaEvosAttacks
	dw ZigzagoonEvosAttacks
	dw LinooneEvosAttacks
	dw WingullEvosAttacks
	dw PelipperEvosAttacks
	dw RaltsEvosAttacks
	dw KirliaEvosAttacks
	dw GardevoirEvosAttacks
	dw ShroomishEvosAttacks
	dw BreloomEvosAttacks
	dw NincadaEvosAttacks
	dw NinjaskEvosAttacks
	dw ShedinjaEvosAttacks
	dw AzurillEvosAttacks
	dw AronEvosAttacks
	dw LaironEvosAttacks
	dw AggronEvosAttacks
	dw CarvanhaEvosAttacks
	dw SharpedoEvosAttacks
	dw WailmerEvosAttacks
	dw WailordEvosAttacks
	dw NumelEvosAttacks
	dw CameruptEvosAttacks
	dw SpoinkEvosAttacks
	dw GrumpigEvosAttacks
	dw SpindaEvosAttacks
	dw TrapinchEvosAttacks
	dw VibravaEvosAttacks
	dw FlygonEvosAttacks
	dw SwabluEvosAttacks
	dw AltariaEvosAttacks
	dw ZangooseEvosAttacks
	dw SeviperEvosAttacks
	dw FeebasEvosAttacks
	dw MiloticEvosAttacks
	dw KecleonEvosAttacks
	dw ShuppetEvosAttacks
	dw BanetteEvosAttacks
	dw DuskullEvosAttacks
	dw DusclopsEvosAttacks
	dw TropiusEvosAttacks
	dw ChimechoEvosAttacks
	dw WynautEvosAttacks
	dw SnoruntEvosAttacks
	dw GlalieEvosAttacks
	dw SphealEvosAttacks
	dw SealeoEvosAttacks
	dw WalreinEvosAttacks
        dw RelicanthEvosAttacks
        dw LuvdiscEvosAttacks
        dw LatiasEvosAttacks
        dw LatiosEvosAttacks
        dw ShinxEvosAttacks
        dw LuxioEvosAttacks
        dw LuxrayEvosAttacks
        dw CherubiEvosAttacks
        dw CherrimEvosAttacks
        dw AmbipomEvosAttacks
        dw MismagiusEvosAttacks
        dw HonchkrowEvosAttacks
        dw ChinglingEvosAttacks
        dw BonslyEvosAttacks
        dw MimeJrEvosAttacks
        dw HappinyEvosAttacks
        dw ChatotEvosAttacks
        dw MunchlaxEvosAttacks
        dw RioluEvosAttacks
        dw LucarioEvosAttacks
        dw CroagunkEvosAttacks
        dw ToxicroakEvosAttacks
       dw CarnivineEvosAttacks
       dw FinneonEvosAttacks
       dw LumineonEvosAttacks
       dw MantykeEvosAttacks
       dw WeavileEvosAttacks
       dw MagnezoneEvosAttacks
       dw LickilickyEvosAttacks
       dw RhyperiorEvosAttacks
       dw TangrowthEvosAttacks
       dw ElectivireEvosAttacks
       dw MagmortarEvosAttacks
       dw TogekissEvosAttacks
       dw YanmegaEvosAttacks
       dw LeafeonEvosAttacks
       dw GlaceonEvosAttacks
       dw GliscorEvosAttacks
       dw MamoswineEvosAttacks
       dw PorygonZEvosAttacks
       dw GalladeEvosAttacks
       dw DusknoirEvosAttacks
       dw FroslassEvosAttacks
       dw RotomEvosAttacks
       dw PhioneEvosAttacks
       dw ManaphyEvosAttacks
       dw FerroseedEvosAttacks
       dw FerrothornEvosAttacks
       dw StunfiskEvosAttacks
       dw PawniardEvosAttacks
       dw BisharpEvosAttacks
       dw ZoruaEvosAttacks
       dw ZoroarkEvosAttacks
       dw SkrelpEvosAttacks
       dw DragalgeEvosAttacks
       dw ClauncherEvosAttacks
       dw ClawitzerEvosAttacks
       dw SylveonEvosAttacks
       dw PanchamEvosAttacks
       dw PangoroEvosAttacks
       dw InkayEvosAttacks
       dw MalamarEvosAttacks
       dw NoibatEvosAttacks
       dw NoivernEvosAttacks
       dw HonedgeEvosAttacks
       dw DoubladeEvosAttacks
       dw AegislashEvosAttacks
       dw GoomyEvosAttacks
       dw SliggooEvosAttacks
       dw GoodraEvosAttacks
       dw RockruffEvosAttacks
       dw LycanrocEvosAttacks
       dw CutieflyEvosAttacks
       dw RibombeeEvosAttacks
       dw PikipekEvosAttacks
       dw TrumbeakEvosAttacks
       dw ToucannonEvosAttacks
       dw MimikyuEvosAttacks
       dw SandygastEvosAttacks
       dw PalossandEvosAttacks
       dw SalanditEvosAttacks
       dw SalazzleEvosAttacks
       dw MareanieEvosAttacks
       dw ToxapexEvosAttacks
       dw TurtonatorEvosAttacks
       dw DhelmiseEvosAttacks
       dw PincurchinEvosAttacks
       dw CramorantEvosAttacks
       dw BinacleEvosAttacks
       dw BarbaracleEvosAttacks
       dw ApplinEvosAttacks
       dw FlappleEvosAttacks
       dw AppletunEvosAttacks
       dw GimmighoulEvosAttacks
       dw GholdengoEvosAttacks
       dw AnnihilapeEvosAttacks
       dw DudunsparceEvosAttacks
       dw FarigirafEvosAttacks
       dw KingambitEvosAttacks
       dw DipplinEvosAttacks
       dw HydrappleEvosAttacks
       dw CharcadetEvosAttacks
       dw ArmarougeEvosAttacks
       dw CeruledgeEvosAttacks
       dw ClodsireEvosAttacks
       dw CursolaEvosAttacks
       dw PerrserkerEvosAttacks
       dw SirfetchdEvosAttacks
       dw MrRimeEvosAttacks
       dw ObstagoonEvosAttacks
       dw OverqwilEvosAttacks
       dw SneaslerEvosAttacks
       dw KleavorEvosAttacks
       dw UrsalunaEvosAttacks
       dw WyrdeerEvosAttacks
       dw MarshadowEvosAttacks
       dw MeltanEvosAttacks
       dw MelmetalEvosAttacks
.IndirectEnd::

PoochyenaEvosAttacks:
	evolve EVOLVE_LEVEL, 18, MIGHTYENA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, HOWL
	dbw 9, SAND_ATTACK
	dbw 13, BITE
	dbw 17, ODOR_SLEUTH
	dbw 21, ROAR
	dbw 25, SWAGGER
	dbw 29, ASSURANCE
	dbw 33, SCARY_FACE
	dbw 37, TAUNT
	dbw 41, EMBARGO
	dbw 45, TAKE_DOWN
	dbw 49, SUCKER_PUNCH
	dbw 53, CRUNCH
	db 0 ; no more level-up moves

MightyenaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HOWL
	dbw 1, SAND_ATTACK
	dbw 1, BITE
	dbw 5, HOWL
	dbw 9, SAND_ATTACK
	dbw 13, BITE
	dbw 17, ODOR_SLEUTH
	dbw 22, ROAR
	dbw 27, SWAGGER
	dbw 32, ASSURANCE
	dbw 37, SCARY_FACE
	dbw 42, TAUNT
	dbw 47, EMBARGO
	dbw 52, TAKE_DOWN
	dbw 57, THIEF
	dbw 62, SUCKER_PUNCH
	db 0 ; no more level-up moves

ZigzagoonEvosAttacks:
	evolve EVOLVE_LEVEL, 20, LINOONE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, TAIL_WHIP
	dbw 9, HEADBUTT
	dbw 13, SAND_ATTACK
	dbw 17, ODOR_SLEUTH
	dbw 21, MUD_SPORT
	dbw 25, PIN_MISSILE
	dbw 29, COVET
	dbw 33, FLAIL
	dbw 37, REST
	dbw 41, BELLY_DRUM
	dbw 45, FLING
	db 0 ; no more level-up moves

LinooneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SWITCHEROO
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 1, HEADBUTT
	dbw 5, TAIL_WHIP
	dbw 9, HEADBUTT
	dbw 13, SAND_ATTACK
	dbw 17, ODOR_SLEUTH
	dbw 23, MUD_SPORT
	dbw 29, FURY_SWIPES
	dbw 35, COVET
	dbw 41, SLASH
	dbw 47, REST
	dbw 53, BELLY_DRUM
	dbw 59, FLING
	db 0 ; no more level-up moves

WingullEvosAttacks:
	evolve EVOLVE_LEVEL, 25, PELIPPER
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 6, SUPERSONIC
	dbw 11, WING_ATTACK
	dbw 16, MIST
	dbw 19, WATER_PULSE
	dbw 24, QUICK_ATTACK
	dbw 29, ROOST
	dbw 34, PURSUIT
	dbw 37, AGILITY
	dbw 42, AERIAL_ACE
	dbw 47, AIR_SLASH
	db 0 ; no more level-up moves

PelipperEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, WATER_SPORT
	dbw 1, WING_ATTACK
	dbw 6, SUPERSONIC
	dbw 11, WING_ATTACK
	dbw 16, MIST
	dbw 19, WATER_PULSE
	dbw 24, PAYBACK
	dbw 25, PROTECT
	dbw 31, ROOST
	dbw 38, STOCKPILE
	dbw 38, SWALLOW
	dbw 38, SPIT_UP
	dbw 43, FLING
	dbw 50, TAILWIND
	dbw 57, HYDRO_PUMP
	db 0 ; no more level-up moves

RaltsEvosAttacks:
	evolve EVOLVE_LEVEL, 20, KIRLIA
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 6, CONFUSION
	dbw 10, DOUBLE_TEAM
	dbw 12, TELEPORT
	dbw 17, LUCKY_CHANT
	dbw 21, MAGICAL_LEAF
	dbw 23, CALM_MIND
	dbw 28, PSYCHIC_M
	dbw 32, IMPRISON
	dbw 34, FUTURE_SIGHT
	dbw 39, CHARM
	dbw 43, HYPNOSIS
	dbw 45, DREAM_EATER
	db 0 ; no more level-up moves

KirliaEvosAttacks:
    evolve EVOLVE_LEVEL, 30, GARDEVOIR
    evolve EVOLVE_ITEM, DAWN_STONE, GALLADE
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 1, TELEPORT
	dbw 6, CONFUSION
	dbw 10, DOUBLE_TEAM
	dbw 12, TELEPORT
	dbw 17, LUCKY_CHANT
	dbw 22, MAGICAL_LEAF
	dbw 25, CALM_MIND
	dbw 31, PSYCHIC_M
	dbw 36, IMPRISON
	dbw 39, FUTURE_SIGHT
	dbw 45, CHARM
	dbw 50, HYPNOSIS
	dbw 53, DREAM_EATER
	db 0 ; no more level-up moves

GardevoirEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HEALING_WISH
	dbw 1, GROWL
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 1, TELEPORT
	dbw 6, CONFUSION
	dbw 10, DOUBLE_TEAM
	dbw 12, TELEPORT
	dbw 17, WISH
	dbw 22, MAGICAL_LEAF
	dbw 25, CALM_MIND
	dbw 33, PSYCHIC_M
	dbw 40, IMPRISON
	dbw 45, FUTURE_SIGHT
	dbw 53, CAPTIVATE
	dbw 60, HYPNOSIS
	dbw 65, DREAM_EATER
	db 0 ; no more level-up moves

ShroomishEvosAttacks:
	evolve EVOLVE_LEVEL, 23, BRELOOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 5, TACKLE
	dbw 9, STUN_SPORE
	dbw 13, LEECH_SEED
	dbw 17, MEGA_DRAIN
	dbw 21, HEADBUTT
	dbw 25, POISONPOWDER
	dbw 29, WORRY_SEED
	dbw 33, GROWTH
	dbw 37, GIGA_DRAIN
	dbw 41, SEED_BOMB
	dbw 45, SPORE
	db 0 ; no more level-up moves

BreloomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, TACKLE
	dbw 1, STUN_SPORE
	dbw 1, LEECH_SEED
	dbw 5, TACKLE
	dbw 9, STUN_SPORE
	dbw 13, LEECH_SEED
	dbw 17, MEGA_DRAIN
	dbw 21, HEADBUTT
	dbw 23, MACH_PUNCH
	dbw 25, COUNTER
	dbw 29, FORCE_PALM
	dbw 33, SKY_UPPERCUT
	dbw 37, MIND_READER
	dbw 41, SEED_BOMB
	dbw 45, DYNAMICPUNCH
	db 0 ; no more level-up moves

NincadaEvosAttacks:
	evolve EVOLVE_LEVEL, 20, NINJASK
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 25, FALSE_SWIPE
	dbw 31, MUD_SLAP
	dbw 38, METAL_CLAW
	dbw 45, DIG
	db 0 ; no more level-up moves

NinjaskEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUG_BITE
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 1, LEECH_LIFE
	dbw 1, SAND_ATTACK
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 20, DOUBLE_TEAM
	dbw 20, FURY_CUTTER
	dbw 20, SCREECH
	dbw 25, SWORDS_DANCE
	dbw 31, SLASH
	dbw 38, AGILITY
	dbw 45, BATON_PASS
	dbw 52, X_SCISSOR
	db 0 ; no more level-up moves

ShedinjaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 25, SPITE
	dbw 31, CONFUSE_RAY
	dbw 38, SHADOW_SNEAK
	dbw 45, GRUDGE
	dbw 52, HEAL_BLOCK
	dbw 59, SHADOW_BALL
	db 0 ; no more level-up moves

AzurillEvosAttacks:
	evolve EVOLVE_HAPPINESS, MARILL
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 2, CHARM
	dbw 7, TAIL_WHIP
	dbw 10, BUBBLE
	dbw 15, SLAM
	dbw 18, WATER_GUN
	db 0 ; no more level-up moves

AronEvosAttacks:
	evolve EVOLVE_LEVEL, 32, LAIRON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 8, MUD_SLAP
	dbw 11, HEADBUTT
	dbw 15, METAL_CLAW
	dbw 18, IRON_DEFENSE
	dbw 22, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_HEAD
	dbw 32, PROTECT
	dbw 36, METAL_SOUND
	dbw 39, IRON_TAIL
	dbw 43, DOUBLE_EDGE
	dbw 46, METAL_BURST
	db 0 ; no more level-up moves

LaironEvosAttacks:
	evolve EVOLVE_LEVEL, 42, AGGRON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, MUD_SLAP
	dbw 1, HEADBUTT
	dbw 4, HARDEN
	dbw 8, MUD_SLAP
	dbw 11, HEADBUTT
	dbw 15, METAL_CLAW
	dbw 18, IRON_DEFENSE
	dbw 22, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_HEAD
	dbw 34, PROTECT
	dbw 40, METAL_SOUND
	dbw 45, IRON_TAIL
	dbw 51, DOUBLE_EDGE
	dbw 56, METAL_BURST
	db 0 ; no more level-up moves

AggronEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, MUD_SLAP
	dbw 1, HEADBUTT
	dbw 4, HARDEN
	dbw 8, MUD_SLAP
	dbw 11, HEADBUTT
	dbw 15, METAL_CLAW
	dbw 18, IRON_DEFENSE
	dbw 22, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_HEAD
	dbw 34, PROTECT
	dbw 40, METAL_SOUND
	dbw 48, IRON_TAIL
	dbw 57, DOUBLE_EDGE
	dbw 65, METAL_BURST
	db 0 ; no more level-up moves

CarvanhaEvosAttacks:
	evolve EVOLVE_LEVEL, 30, SHARPEDO
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, BITE
	dbw 6, RAGE
	dbw 8, FOCUS_ENERGY
	dbw 11, SCARY_FACE
	dbw 16, ICE_FANG
	dbw 18, SCREECH
	dbw 21, SWAGGER
	dbw 26, ASSURANCE
	dbw 28, CRUNCH
	dbw 31, AQUA_JET
	dbw 36, AGILITY
	dbw 38, TAKE_DOWN
	db 0 ; no more level-up moves

SharpedoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FEINT
	dbw 1, LEER
	dbw 1, BITE
	dbw 1, RAGE
	dbw 1, FOCUS_ENERGY
	dbw 6, RAGE
	dbw 8, FOCUS_ENERGY
	dbw 11, SCARY_FACE
	dbw 16, ICE_FANG
	dbw 18, SCREECH
	dbw 21, SWAGGER
	dbw 26, ASSURANCE
	dbw 28, CRUNCH
	dbw 30, SLASH
	dbw 34, AQUA_JET
	dbw 40, TAUNT
	dbw 45, AGILITY
	dbw 50, SKULL_BASH
	dbw 56, NIGHT_SLASH
	db 0 ; no more level-up moves

WailmerEvosAttacks:
	evolve EVOLVE_LEVEL, 40, WAILORD
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 4, GROWL
	dbw 7, WATER_GUN
	dbw 11, ROLLOUT
	dbw 14, WHIRLPOOL
	dbw 17, ASTONISH
	dbw 21, WATER_PULSE
	dbw 24, MIST
	dbw 27, REST
	dbw 31, BRINE
	dbw 34, WATER_SPOUT
	dbw 37, AMNESIA
	dbw 41, DIVE
	dbw 44, BOUNCE
	dbw 47, HYDRO_PUMP
	db 0 ; no more level-up moves

WailordEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, ROLLOUT
	dbw 4, GROWL
	dbw 7, WATER_GUN
	dbw 11, ROLLOUT
	dbw 14, WHIRLPOOL
	dbw 17, ASTONISH
	dbw 21, WATER_PULSE
	dbw 24, MIST
	dbw 27, REST
	dbw 31, BRINE
	dbw 34, WATER_SPOUT
	dbw 37, AMNESIA
	dbw 46, DIVE
	dbw 54, BOUNCE
	dbw 62, HYDRO_PUMP
	db 0 ; no more level-up moves

NumelEvosAttacks:
	evolve EVOLVE_LEVEL, 33, CAMERUPT
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 5, EMBER
	dbw 11, MAGNITUDE
	dbw 15, FOCUS_ENERGY
	dbw 21, TAKE_DOWN
	dbw 25, AMNESIA
	dbw 31, LAVA_PLUME
	dbw 35, EARTH_POWER
	dbw 41, EARTHQUAKE
	dbw 45, FLAMETHROWER
	dbw 51, DOUBLE_EDGE
	db 0 ; no more level-up moves

CameruptEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 1, EMBER
	dbw 1, MAGNITUDE
	dbw 5, EMBER
	dbw 11, MAGNITUDE
	dbw 15, FOCUS_ENERGY
	dbw 21, TAKE_DOWN
	dbw 25, AMNESIA
	dbw 31, LAVA_PLUME
	dbw 33, ROCK_SLIDE
	dbw 39, EARTH_POWER
	dbw 49, EARTHQUAKE
	dbw 57, ERUPTION
	dbw 67, FISSURE
	db 0 ; no more level-up moves

SpoinkEvosAttacks:
	evolve EVOLVE_LEVEL, 32, GRUMPIG
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 7, PSYWAVE
	dbw 10, ODOR_SLEUTH
	dbw 14, PSYBEAM
	dbw 15, PSYCH_UP
	dbw 18, CONFUSE_RAY
	dbw 21, MAGIC_COAT
	dbw 26, ZEN_HEADBUTT
	dbw 29, REST
	dbw 29, SNORE
	dbw 34, PAYBACK
	dbw 41, PSYCHIC_M
	dbw 46, POWER_GEM
	dbw 48, BOUNCE
	db 0 ; no more level-up moves

GrumpigEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, PSYWAVE
	dbw 1, ODOR_SLEUTH
	dbw 1, PSYBEAM
	dbw 7, PSYWAVE
	dbw 10, ODOR_SLEUTH
	dbw 14, PSYBEAM
	dbw 15, PSYCH_UP
	dbw 18, CONFUSE_RAY
	dbw 21, MAGIC_COAT
	dbw 26, ZEN_HEADBUTT
	dbw 29, REST
	dbw 29, SNORE
	dbw 37, PAYBACK
	dbw 47, PSYCHIC_M
	dbw 55, POWER_GEM
	dbw 60, BOUNCE
	db 0 ; no more level-up moves

SpindaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, UPROAR
	dbw 10, COPYCAT
	dbw 14, FAINT_ATTACK
	dbw 19, PSYBEAM
	dbw 23, HYPNOSIS
	dbw 28, DIZZY_PUNCH
	dbw 32, SUCKER_PUNCH
	dbw 37, TEETER_DANCE
	dbw 41, PSYCH_UP
	dbw 46, DOUBLE_EDGE
	dbw 50, FLAIL
	dbw 55, THRASH
	db 0 ; no more level-up moves

TrapinchEvosAttacks:
	evolve EVOLVE_LEVEL, 35, VIBRAVA
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 9, SAND_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, SAND_TOMB
	dbw 33, CRUNCH
	dbw 41, DIG
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	dbw 65, EARTH_POWER
	dbw 73, EARTHQUAKE
	dbw 81, FEINT
	dbw 89, FISSURE
	db 0 ; no more level-up moves

VibravaEvosAttacks:
	evolve EVOLVE_LEVEL, 45, FLYGON
	db 0 ; no more evolutions
	dbw 1, SONICBOOM
	dbw 1, SAND_ATTACK
	dbw 1, FAINT_ATTACK
	dbw 1, SAND_TOMB
	dbw 9, SAND_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, SAND_TOMB
	dbw 33, SUPERSONIC
	dbw 35, DRAGONBREATH
	dbw 41, SCREECH
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

FlygonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SONICBOOM
	dbw 1, SAND_ATTACK
	dbw 1, FAINT_ATTACK
	dbw 1, SAND_TOMB
	dbw 9, SAND_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, SAND_TOMB
	dbw 33, SUPERSONIC
	dbw 35, DRAGONBREATH
	dbw 41, SCREECH
	dbw 45, DRAGON_CLAW
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

SwabluEvosAttacks:
	evolve EVOLVE_LEVEL, 35, ALTARIA
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 5, ASTONISH
	dbw 9, SING
	dbw 13, FURY_ATTACK
	dbw 18, SAFEGUARD
	dbw 23, MIST
	dbw 28, TAKE_DOWN
	dbw 32, NATURAL_GIFT
	dbw 36, MIRROR_MOVE
	dbw 40, REFRESH
	dbw 45, DRAGON_PULSE
	dbw 50, PERISH_SONG
	db 0 ; no more level-up moves

AltariaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PLUCK
	dbw 1, PECK
	dbw 1, GROWL
	dbw 1, ASTONISH
	dbw 1, SING
	dbw 5, ASTONISH
	dbw 9, SING
	dbw 13, FURY_ATTACK
	dbw 18, SAFEGUARD
	dbw 23, MIST
	dbw 28, TAKE_DOWN
	dbw 32, NATURAL_GIFT
	dbw 35, DRAGONBREATH
	dbw 39, DRAGON_DANCE
	dbw 46, REFRESH
	dbw 54, DRAGON_PULSE
	dbw 62, PERISH_SONG
	dbw 70, SKY_ATTACK
	db 0 ; no more level-up moves

ZangooseEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 5, QUICK_ATTACK
	dbw 9, SWORDS_DANCE
	dbw 14, FURY_CUTTER
	dbw 18, SLASH
	dbw 22, PURSUIT
	dbw 27, EMBARGO
	dbw 31, CRUSH_CLAW
	dbw 35, TAUNT
	dbw 40, DETECT
	dbw 44, FALSE_SWIPE
	dbw 48, X_SCISSOR
	dbw 53, CLOSE_COMBAT
	db 0 ; no more level-up moves

SeviperEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 7, LICK
	dbw 10, BITE
	dbw 16, POISON_TAIL
	dbw 19, SCREECH
	dbw 25, GLARE
	dbw 28, CRUNCH
	dbw 34, POISON_FANG
	dbw 37, SWAGGER
	dbw 43, HAZE
	dbw 46, NIGHT_SLASH
	dbw 52, POISON_JAB
	dbw 55, WRING_OUT
	db 0 ; no more level-up moves

FeebasEvosAttacks:
	; evolve EVOLVE_ITEM, PRISM_SCALE, MILOTIC
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 15, TACKLE
	dbw 30, FLAIL
	db 0 ; no more level-up moves

MiloticEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, WRAP
	dbw 5, WATER_SPORT
	dbw 9, REFRESH
	dbw 13, WATER_PULSE
	dbw 17, TWISTER
	dbw 21, RECOVER
	dbw 25, CAPTIVATE
	dbw 29, AQUA_TAIL
	dbw 33, RAIN_DANCE
	dbw 37, HYDRO_PUMP
	dbw 41, ATTRACT
	dbw 45, SAFEGUARD
	dbw 49, AQUA_RING
	db 0 ; no more level-up moves

KecleonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THIEF
	dbw 1, TAIL_WHIP
	dbw 1, ASTONISH
	dbw 1, LICK
	dbw 1, SCRATCH
	dbw 4, BIND
	dbw 7, FAINT_ATTACK
	dbw 10, FURY_SWIPES
	dbw 14, FEINT
	dbw 18, PSYBEAM
	dbw 22, SHADOW_SNEAK
	dbw 27, SLASH
	dbw 32, SCREECH
	dbw 37, SUBSTITUTE
	dbw 43, SUCKER_PUNCH
	dbw 49, SHADOW_CLAW
	dbw 55, ANCIENTPOWER
	db 0 ; no more level-up moves

ShuppetEvosAttacks:
	evolve EVOLVE_LEVEL, 37, BANETTE
	db 0 ; no more evolutions
	dbw 1, KNOCK_OFF
	dbw 5, SCREECH
	dbw 8, NIGHT_SHADE
	dbw 13, CURSE
	dbw 16, SPITE
	dbw 20, SHADOW_SNEAK
	dbw 23, WILL_O_WISP
	dbw 28, FAINT_ATTACK
	dbw 31, SHADOW_BALL
	dbw 35, SUCKER_PUNCH
	dbw 38, EMBARGO
	dbw 43, SNATCH
	dbw 46, GRUDGE
	dbw 50, TRICK
	db 0 ; no more level-up moves

BanetteEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, KNOCK_OFF
	dbw 1, SCREECH
	dbw 1, NIGHT_SHADE
	dbw 1, CURSE
	dbw 8, SCREECH
	dbw 5, NIGHT_SHADE
	dbw 13, CURSE
	dbw 16, SPITE
	dbw 20, SHADOW_SNEAK
	dbw 23, WILL_O_WISP
	dbw 28, FAINT_ATTACK
	dbw 31, SHADOW_BALL
	dbw 35, SUCKER_PUNCH
	dbw 42, EMBARGO
	dbw 51, SNATCH
	dbw 58, GRUDGE
	dbw 66, TRICK
	db 0 ; no more level-up moves

DuskullEvosAttacks:
	evolve EVOLVE_LEVEL, 37, DUSCLOPS
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 6, DISABLE
	dbw 9, FORESIGHT
	dbw 14, ASTONISH
	dbw 17, CONFUSE_RAY
	dbw 22, SHADOW_SNEAK
	dbw 25, PURSUIT
	dbw 30, CURSE
	dbw 33, WILL_O_WISP
	dbw 38, MEAN_LOOK
	dbw 41, PAYBACK
	dbw 46, FUTURE_SIGHT
	db 0 ; no more level-up moves

DusclopsEvosAttacks:
        dbww EVOLVE_ITEM, REAPER_CLOTH, DUSKNOIR
        db 0 ; no more evolutions
	dbw 1, FIRE_PUNCH
	dbw 1, ICE_PUNCH
	dbw 1, THUNDERPUNCH
	dbw 1, GRAVITY
	dbw 1, BIND
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 1, DISABLE
	dbw 6, DISABLE
	dbw 9, FORESIGHT
	dbw 14, ASTONISH
	dbw 17, CONFUSE_RAY
	dbw 22, SHADOW_SNEAK
	dbw 25, PURSUIT
	dbw 30, CURSE
	dbw 33, WILL_O_WISP
	dbw 37, SHADOW_PUNCH
	dbw 43, MEAN_LOOK
	dbw 51, PAYBACK
	dbw 61, FUTURE_SIGHT
	db 0 ; no more level-up moves

TropiusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, GUST
	dbw 7, GROWTH
	dbw 11, RAZOR_LEAF
	dbw 17, STOMP
	dbw 21, SWEET_SCENT
	dbw 27, WHIRLWIND
	dbw 31, MAGICAL_LEAF
	dbw 37, BODY_SLAM
	dbw 41, SYNTHESIS
	dbw 47, AIR_SLASH
	dbw 51, SOLARBEAM
	dbw 57, NATURAL_GIFT
	dbw 61, LEAF_STORM
	db 0 ; no more level-up moves

ChimechoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 6, GROWL
	dbw 9, ASTONISH
	dbw 14, CONFUSION
	dbw 17, UPROAR
	dbw 22, TAKE_DOWN
	dbw 25, YAWN
	dbw 30, PSYWAVE
	dbw 33, DOUBLE_EDGE
	dbw 38, HEAL_BELL
	dbw 41, SAFEGUARD
	dbw 46, EXTRASENSORY
	dbw 49, HEALING_WISH
	db 0 ; no more level-up moves

WynautEvosAttacks:
	evolve EVOLVE_LEVEL, 15, WOBBUFFET
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, CHARM
	dbw 1, ENCORE
	dbw 15, COUNTER
	dbw 15, MIRROR_COAT
	dbw 15, SAFEGUARD
	dbw 15, DESTINY_BOND
	db 0 ; no more level-up moves

SnoruntEvosAttacks:
    evolve EVOLVE_LEVEL, 42, GLALIE
    evolve EVOLVE_ITEM, DAWN_STONE, FROSLASS
    db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 4, DOUBLE_TEAM
	dbw 10, BITE
	dbw 13, ICY_WIND
	dbw 19, HEADBUTT
	dbw 22, PROTECT
	dbw 28, ICE_FANG
	dbw 31, CRUNCH
	dbw 37, ICE_SHARD
	dbw 40, HAIL
	dbw 46, BLIZZARD
	db 0 ; no more level-up moves

GlalieEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 1, DOUBLE_TEAM
	dbw 1, BITE
	dbw 4, DOUBLE_TEAM
	dbw 10, BITE
	dbw 13, ICY_WIND
	dbw 19, HEADBUTT
	dbw 22, PROTECT
	dbw 28, ICE_FANG
	dbw 31, CRUNCH
	dbw 37, ICE_BEAM
	dbw 40, HAIL
	dbw 51, BLIZZARD
	dbw 59, SHEER_COLD
	db 0 ; no more level-up moves

SphealEvosAttacks:
	evolve EVOLVE_LEVEL, 32, SEALEO
	db 0 ; no more evolutions
	dbw 1, DEFENSE_CURL
	dbw 1, POWDER_SNOW
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 7, ENCORE
	dbw 13, ICE_BALL
	dbw 19, BODY_SLAM
	dbw 25, AURORA_BEAM
	dbw 31, HAIL
	dbw 37, REST
	dbw 37, SNORE
	dbw 43, BLIZZARD
	dbw 49, SHEER_COLD
	db 0 ; no more level-up moves

SealeoEvosAttacks:
	evolve EVOLVE_LEVEL, 44, WALREIN
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, ENCORE
	dbw 7, ENCORE
	dbw 13, ICE_BALL
	dbw 19, BODY_SLAM
	dbw 25, AURORA_BEAM
	dbw 31, HAIL
	dbw 32, SWAGGER
	dbw 39, REST
	dbw 39, SNORE
	dbw 47, BLIZZARD
	dbw 55, SHEER_COLD
	db 0 ; no more level-up moves

WalreinEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CRUNCH
	dbw 1, POWDER_SNOW
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, ENCORE
	dbw 7, ENCORE
	dbw 13, ICE_BALL
	dbw 19, BODY_SLAM
	dbw 25, AURORA_BEAM
	dbw 31, HAIL
	dbw 32, SWAGGER
	dbw 39, REST
	dbw 39, SNORE
	dbw 44, ICE_FANG
	dbw 52, BLIZZARD
	dbw 65, SHEER_COLD
	db 0 ; no more level-up moves

RelicanthEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 8, WATER_GUN
	dbw 15, ROCK_TOMB
	dbw 22, YAWN
	dbw 29, TAKE_DOWN
	dbw 36, MUD_SPORT
	dbw 43, ANCIENTPOWER
	dbw 50, DOUBLE_EDGE
	dbw 57, DIVE
	dbw 64, REST
	dbw 71, HYDRO_PUMP
	dbw 78, HEAD_SMASH
	db 0 ; no more level-up moves

LuvdiscEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, CHARM
	dbw 7, WATER_GUN
	dbw 9, AGILITY
	dbw 14, TAKE_DOWN
	dbw 17, LUCKY_CHANT
	dbw 22, ATTRACT
	dbw 27, SWEET_KISS
	dbw 31, WATER_PULSE
	dbw 37, AQUA_RING
	dbw 40, CAPTIVATE
	dbw 46, FLAIL
	dbw 51, SAFEGUARD
	db 0 ; no more level-up moves

LatiasEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PSYWAVE
	dbw 5, WISH
	dbw 15, SAFEGUARD
	dbw 20, DRAGONBREATH
	dbw 25, WATER_SPORT
	dbw 30, REFRESH
	dbw 35, MIST_BALL
	dbw 40, ZEN_HEADBUTT
	dbw 45, RECOVER
	dbw 50, PSYCHO_SHIFT
	dbw 55, CHARM
	dbw 60, HEALING_WISH
	dbw 65, PSYCHIC_M
	dbw 70, DRAGON_PULSE
	db 0 ; no more level-up moves

LatiosEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, PSYWAVE
	dbw 5, HEAL_BLOCK
	dbw 15, SAFEGUARD
	dbw 20, DRAGONBREATH
	dbw 25, PROTECT
	dbw 30, REFRESH
	dbw 35, LUSTER_PURGE
	dbw 40, ZEN_HEADBUTT
	dbw 45, RECOVER
	dbw 50, PSYCHO_SHIFT
	dbw 55, DRAGON_DANCE
	dbw 60, MEMENTO
	dbw 65, PSYCHIC_M
	dbw 70, DRAGON_PULSE
	db 0 ; no more level-up moves

ShinxEvosAttacks:
        evolve EVOLVE_LEVEL, 15, LUXIO
        db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, LEER
	dbw 9, CHARGE
	dbw 13, SPARK
	dbw 17, BITE
	dbw 21, ROAR
	dbw 25, SWAGGER
	dbw 29, THUNDER_FANG
	dbw 33, CRUNCH
	dbw 37, SCARY_FACE
	dbw 41, DISCHARGE
	db 0 ; no more level-up moves

LuxioEvosAttacks:
        evolve EVOLVE_LEVEL, 30, LUXRAY
        db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 5, LEER
	dbw 9, CHARGE
	dbw 13, SPARK
	dbw 18, BITE
	dbw 23, ROAR
	dbw 28, SWAGGER
	dbw 33, THUNDER_FANG
	dbw 38, CRUNCH
	dbw 43, SCARY_FACE
	dbw 48, DISCHARGE
	db 0 ; no more level-up moves

LuxrayEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 1, CHARGE
	dbw 5, LEER
	dbw 9, CHARGE
	dbw 13, SPARK
	dbw 18, BITE
	dbw 23, ROAR
	dbw 28, SWAGGER
	dbw 35, THUNDER_FANG
	dbw 42, CRUNCH
	dbw 49, SCARY_FACE
	dbw 56, DISCHARGE
	db 0 ; no more level-up moves

CherubiEvosAttacks:
        evolve EVOLVE_LEVEL, 25, CHERRIM
        db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 7, GROWTH
	dbw 10, LEECH_SEED
	dbw 19, MAGICAL_LEAF
	dbw 22, SUNNY_DAY
	dbw 28, WORRY_SEED
	dbw 31, TAKE_DOWN
	dbw 37, SOLARBEAM
	dbw 40, LUCKY_CHANT
	db 0 ; no more level-up moves

CherrimEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWTH
	dbw 7, GROWTH
	dbw 10, LEECH_SEED
	dbw 19, MAGICAL_LEAF
	dbw 22, SUNNY_DAY
	dbw 25, PETAL_DANCE
	dbw 30, WORRY_SEED
	dbw 35, TAKE_DOWN
	dbw 43, SOLARBEAM
	dbw 48, LUCKY_CHANT
	db 0 ; no more level-up moves

AmbipomEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 1, SAND_ATTACK
	dbw 1, ASTONISH
	dbw 4, SAND_ATTACK
	dbw 8, ASTONISH
	dbw 11, BATON_PASS
	dbw 15, TICKLE
	dbw 18, FURY_SWIPES
	dbw 22, SWIFT
	dbw 25, SCREECH
	dbw 29, AGILITY
	dbw 32, DOUBLE_HIT
	dbw 36, FLING
	dbw 39, NASTY_PLOT
	dbw 43, LAST_RESORT
	db 0 ; no more level-up moves

MismagiusEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, LUCKY_CHANT
	dbw 1, MAGICAL_LEAF
	dbw 1, GROWL
	dbw 1, PSYWAVE
	dbw 1, SPITE
	dbw 1, ASTONISH
	db 0 ; no more level-up moves

HonchkrowEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, PURSUIT
	dbw 1, HAZE
	dbw 1, WING_ATTACK
	dbw 25, SWAGGER
	dbw 35, NASTY_PLOT
	dbw 45, NIGHT_SLASH
	dbw 55, DARK_PULSE
	db 0 ; no more level-up moves

ChinglingEvosAttacks:
        evolve EVOLVE_LEVEL, 20, CHIMECHO
        db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 6, GROWL
	dbw 9, ASTONISH
	dbw 14, CONFUSION
	dbw 17, UPROAR
	dbw 22, LAST_RESORT
	db 0 ; no more level-up moves

BonslyEvosAttacks:
        evolve EVOLVE_LEVEL, 20, SUDOWOODO
        db 0 ; no more evolutions
	dbw 1, FAKE_TEARS
	dbw 1, COPYCAT
	dbw 6, FLAIL
	dbw 9, LOW_KICK
	dbw 14, ROCK_THROW
	dbw 17, MIMIC
	dbw 22, BLOCK
	dbw 25, FAINT_ATTACK
	dbw 30, ROCK_TOMB
	dbw 33, ROCK_SLIDE
	dbw 38, SLAM
	dbw 41, SUCKER_PUNCH
	dbw 46, DOUBLE_EDGE
	db 0 ; no more level-up moves

MimeJrEvosAttacks:
        evolve EVOLVE_LEVEL, 20, MR__MIME
        db 0 ; no more evolutions
	dbw 1, TICKLE
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

HappinyEvosAttacks:
        evolve EVOLVE_LEVEL, 20, CHANSEY
        db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, CHARM
	dbw 5, COPYCAT
	dbw 9, REFRESH
	dbw 12, SWEET_KISS
	db 0 ; no more level-up moves

ChatotEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, PECK
	dbw 5, GROWL
	dbw 9, MIRROR_MOVE
	dbw 13, SING
	dbw 17, FURY_ATTACK
	dbw 21, CHATTER
	dbw 25, TAUNT
	dbw 29, MIMIC
	dbw 33, ROOST
	dbw 37, UPROAR
	dbw 41, FEATHERDANCE
	dbw 45, HYPER_VOICE
	db 0 ; no more level-up moves

MunchlaxEvosAttacks:
        evolve EVOLVE_LEVEL, 20, SNORLAX
        db 0 ; no more evolutions
	dbw 1, METRONOME
	dbw 1, ODOR_SLEUTH
	dbw 1, TACKLE
	dbw 4, DEFENSE_CURL
	dbw 9, AMNESIA
	dbw 12, LICK
	dbw 17, RECYCLE
	dbw 20, SCREECH
	dbw 25, STOCKPILE
	dbw 28, SWALLOW
	dbw 33, BODY_SLAM
	dbw 36, FLING
	dbw 41, ROLLOUT
	dbw 44, NATURAL_GIFT
	dbw 49, LAST_RESORT
	db 0 ; no more level-up moves
RioluEvosAttacks:
        evolve EVOLVE_LEVEL, 20, LUCARIO
        db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, FORESIGHT
	dbw 1, ENDURE
	dbw 6, COUNTER
	dbw 11, FORCE_PALM
	dbw 15, FEINT
	dbw 19, REVERSAL
	dbw 24, SCREECH
	dbw 29, COPYCAT
	db 0 ; no more level-up moves
LucarioEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, DARK_PULSE
	dbw 1, QUICK_ATTACK
	dbw 1, FORESIGHT
	dbw 1, DETECT
	dbw 1, METAL_CLAW
	dbw 6, COUNTER
	dbw 11, FORCE_PALM
	dbw 15, FEINT
	dbw 19, BONE_RUSH
	dbw 24, METAL_SOUND
	dbw 33, SWORDS_DANCE
	dbw 37, AURA_SPHERE
	dbw 42, CLOSE_COMBAT
	dbw 47, DRAGON_PULSE
	dbw 51, EXTREMESPEED
	db 0 ; no more level-up moves
CroagunkEvosAttacks:
        evolve EVOLVE_LEVEL, 37, TOXICROAK
        db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 3, MUD_SLAP
	dbw 8, POISON_STING
	dbw 10, TAUNT
	dbw 15, PURSUIT
	dbw 17, FAINT_ATTACK
	dbw 22, REVENGE
	dbw 24, SWAGGER
	dbw 29, MUD_BOMB
	dbw 31, SUCKER_PUNCH
	dbw 36, NASTY_PLOT
	dbw 38, POISON_JAB
	dbw 43, SLUDGE_BOMB
	dbw 45, FLATTER
	db 0 ; no more level-up moves
ToxicroakEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, MUD_SLAP
	dbw 1, POISON_STING
	dbw 3, MUD_SLAP
	dbw 8, POISON_STING
	dbw 10, TAUNT
	dbw 15, PURSUIT
	dbw 17, FAINT_ATTACK
	dbw 22, REVENGE
	dbw 24, SWAGGER
	dbw 29, MUD_BOMB
	dbw 31, SUCKER_PUNCH
	dbw 36, NASTY_PLOT
	dbw 41, POISON_JAB
	dbw 49, SLUDGE_BOMB
	dbw 54, FLATTER
	db 0 ; no more level-up moves
CarnivineEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, BIND
	dbw 1, GROWTH
	dbw 7, BITE
	dbw 11, VINE_WHIP
	dbw 17, SWEET_SCENT
	dbw 21, INGRAIN
	dbw 27, FAINT_ATTACK
	dbw 31, STOCKPILE
	dbw 31, SPIT_UP
	dbw 31, SWALLOW
	dbw 37, CRUNCH
	dbw 41, WRING_OUT
	dbw 47, POWER_WHIP
	db 0 ; no more level-up moves
FinneonEvosAttacks:
        evolve EVOLVE_LEVEL, 31, LUMINEON
        db 0 ; no more evolutions
	dbw 1, POUND
	dbw 6, WATER_GUN
	dbw 10, ATTRACT
	dbw 13, RAIN_DANCE
	dbw 17, GUST
	dbw 22, WATER_PULSE
	dbw 26, CAPTIVATE
	dbw 29, SAFEGUARD
	dbw 33, AQUA_RING
	dbw 38, WHIRLPOOL
	dbw 42, U_TURN
	dbw 45, BOUNCE
	dbw 49, SILVER_WIND
	db 0 ; no more level-up moves
LumineonEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, WATER_GUN
	dbw 1, ATTRACT
	dbw 6, WATER_GUN
	dbw 10, ATTRACT
	dbw 13, RAIN_DANCE
	dbw 17, GUST
	dbw 22, WATER_PULSE
	dbw 26, CAPTIVATE
	dbw 29, SAFEGUARD
	dbw 35, AQUA_RING
	dbw 42, WHIRLPOOL
	dbw 48, U_TURN
	dbw 53, BOUNCE
	dbw 59, SILVER_WIND
	db 0 ; no more level-up moves
MantykeEvosAttacks:
        evolve EVOLVE_LEVEL, 20, MANTINE
        db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, BUBBLE
	dbw 4, SUPERSONIC
	dbw 10, BUBBLEBEAM
	dbw 13, HEADBUTT
	dbw 19, AGILITY
	dbw 22, WING_ATTACK
	dbw 28, WATER_PULSE
	dbw 31, TAKE_DOWN
	dbw 37, CONFUSE_RAY
	dbw 40, BOUNCE
	dbw 46, AQUA_RING
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves
WeavileEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, EMBARGO
	dbw 1, REVENGE
	dbw 1, ASSURANCE
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, TAUNT
	dbw 1, QUICK_ATTACK
	dbw 8, QUICK_ATTACK
	dbw 10, SCREECH
	dbw 14, FAINT_ATTACK
	dbw 21, FURY_SWIPES
	dbw 24, NASTY_PLOT
	dbw 28, ICY_WIND
	dbw 35, NIGHT_SLASH
	dbw 38, FLING
	dbw 42, METAL_CLAW
	dbw 49, DARK_PULSE
	db 0 ; no more level-up moves
MagnezoneEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, MIRROR_COAT
	dbw 1, BARRIER
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

LickilickyEvosAttacks:
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
	dbw 57, GYRO_BALL
	db 0 ; no more level-up moves

RhyperiorEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, POISON_JAB
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
	dbw 61, ROCK_WRECKER
	db 0 ; no more level-up moves

TangrowthEvosAttacks:
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
	dbw 57, BLOCK
	db 0 ; no more level-up moves

ElectivireEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, FIRE_PUNCH
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 1, THUNDERSHOCK
	dbw 1, LOW_KICK
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
	dbw 67, GIGA_IMPACT
	db 0 ; no more level-up moves

MagmortarEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, THUNDERPUNCH
	dbw 1, SMOG
	dbw 1, LEER
	dbw 1, EMBER
	dbw 1, SMOKESCREEN
	dbw 7, EMBER
	dbw 10, SMOKESCREEN
	dbw 16, FAINT_ATTACK
	dbw 19, FIRE_SPIN
	dbw 25, CONFUSE_RAY
	dbw 28, FIRE_PUNCH
	dbw 37, LAVA_PLUME
	dbw 43, FLAMETHROWER
	dbw 52, SUNNY_DAY
	dbw 58, FIRE_BLAST
	dbw 67, HYPER_BEAM
	db 0 ; no more level-up moves
TogekissEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, SKY_ATTACK
	dbw 1, EXTREMESPEED
	dbw 1, AURA_SPHERE
	dbw 1, AIR_SLASH
	db 0 ; no more level-up moves
YanmegaEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, NIGHT_SLASH
	dbw 1, BUG_BITE
	dbw 1, TACKLE
	dbw 1, FORESIGHT
	dbw 1, QUICK_ATTACK
	dbw 1, DOUBLE_TEAM
	dbw 6, QUICK_ATTACK
	dbw 11, DOUBLE_TEAM
	dbw 14, SONICBOOM
	dbw 17, DETECT
	dbw 22, SUPERSONIC
	dbw 27, UPROAR
	dbw 30, PURSUIT
	dbw 33, ANCIENTPOWER
	dbw 38, FEINT
	dbw 43, SLASH
	dbw 46, SCREECH
	dbw 49, U_TURN
	dbw 54, AIR_SLASH
	dbw 57, BUG_BUZZ
	db 0 ; no more level-up moves
LeafeonEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, TAIL_WHIP
	dbw 1, TACKLE
	dbw 8, SAND_ATTACK
	dbw 15, RAZOR_LEAF
	dbw 22, QUICK_ATTACK
	dbw 29, SYNTHESIS
	dbw 36, MAGICAL_LEAF
	dbw 43, GIGA_DRAIN
	dbw 50, LAST_RESORT
	dbw 57, GRASSWHISTLE
	dbw 64, SUNNY_DAY
	dbw 71, LEAF_BLADE
	dbw 78, SWORDS_DANCE
	db 0 ; no more level-up moves
GlaceonEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, TAIL_WHIP
	dbw 1, TACKLE
	dbw 8, SAND_ATTACK
	dbw 15, ICY_WIND
	dbw 22, QUICK_ATTACK
	dbw 29, BITE
	dbw 36, ICE_SHARD
	dbw 43, ICE_FANG
	dbw 50, LAST_RESORT
	dbw 57, MIRROR_COAT
	dbw 64, HAIL
	dbw 71, BLIZZARD
	dbw 78, BARRIER
	db 0 ; no more level-up moves
GliscorEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, THUNDER_FANG
	dbw 1, ICE_FANG
	dbw 1, FIRE_FANG
	dbw 1, POISON_JAB
	dbw 1, SAND_ATTACK
	dbw 1, HARDEN
	dbw 1, KNOCK_OFF
	dbw 5, SAND_ATTACK
	dbw 9, HARDEN
	dbw 12, KNOCK_OFF
	dbw 16, QUICK_ATTACK
	dbw 20, FURY_CUTTER
	dbw 23, FAINT_ATTACK
	dbw 27, SCREECH
	dbw 31, NIGHT_SLASH
	dbw 34, SWORDS_DANCE
	dbw 38, U_TURN
	dbw 42, X_SCISSOR
	dbw 45, GUILLOTINE
	db 0 ; no more level-up moves
MamoswineEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, ANCIENTPOWER
	dbw 1, PECK
	dbw 1, ODOR_SLEUTH
	dbw 1, MUD_SPORT
	dbw 1, POWDER_SNOW
	dbw 4, MUD_SPORT
	dbw 8, POWDER_SNOW
	dbw 13, MUD_SLAP
	dbw 16, ENDURE
	dbw 20, MUD_BOMB
	dbw 25, HAIL
	dbw 28, ICE_FANG
	dbw 32, TAKE_DOWN
	dbw 33, DOUBLE_HIT
	dbw 40, EARTHQUAKE
	dbw 48, MIST
	dbw 56, BLIZZARD
	dbw 65, SCARY_FACE
	db 0 ; no more level-up moves
PorygonZEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, TRICK_ROOM
	dbw 1, CONVERSION2
	dbw 1, TACKLE
	dbw 1, CONVERSION
	dbw 1, NASTY_PLOT
	dbw 7, PSYBEAM
	dbw 12, AGILITY
	dbw 18, RECOVER
	dbw 23, MAGNET_RISE
	dbw 29, SIGNAL_BEAM
	dbw 34, EMBARGO
	dbw 40, DISCHARGE
	dbw 45, LOCK_ON
	dbw 51, TRI_ATTACK
	dbw 56, MAGIC_COAT
	dbw 62, ZAP_CANNON
	dbw 67, HYPER_BEAM
	db 0 ; no more level-up moves
GalladeEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, LEAF_BLADE
	dbw 1, NIGHT_SLASH
	dbw 1, LEER
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 1, TELEPORT
	dbw 6, CONFUSION
	dbw 10, DOUBLE_TEAM
	dbw 12, TELEPORT
	dbw 17, FURY_CUTTER
	dbw 22, SLASH
	dbw 25, SWORDS_DANCE
	dbw 31, PSYCHO_CUT
	dbw 39, FEINT
	dbw 45, FALSE_SWIPE
	dbw 50, PROTECT
	dbw 53, CLOSE_COMBAT
	db 0 ; no more level-up moves
DusknoirEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, FIRE_PUNCH
	dbw 1, ICE_PUNCH
	dbw 1, THUNDERPUNCH
	dbw 1, GRAVITY
	dbw 1, BIND
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 1, DISABLE
	dbw 6, DISABLE
	dbw 9, FORESIGHT
	dbw 14, ASTONISH
	dbw 17, CONFUSE_RAY
	dbw 22, SHADOW_SNEAK
	dbw 25, PURSUIT
	dbw 30, CURSE
	dbw 33, WILL_O_WISP
	dbw 37, SHADOW_PUNCH
	dbw 43, MEAN_LOOK
	dbw 51, PAYBACK
	dbw 61, FUTURE_SIGHT
	db 0 ; no more level-up moves
FroslassEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, LEER
	dbw 1, DOUBLE_TEAM
	dbw 1, ASTONISH
	dbw 4, DOUBLE_TEAM
	dbw 10, ASTONISH
	dbw 13, ICY_WIND
	dbw 19, CONFUSE_RAY
	dbw 22, OMINOUS_WIND
	dbw 28, WAKE_UP_SLAP
	dbw 31, CAPTIVATE
	dbw 37, ICE_SHARD
	dbw 40, HAIL
	dbw 51, BLIZZARD
	dbw 59, DESTINY_BOND
	db 0 ; no more level-up moves
RotomEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, TRICK
	dbw 1, ASTONISH
	dbw 1, THUNDER_WAVE
	dbw 1, THUNDERSHOCK
	dbw 1, CONFUSE_RAY
	dbw 8, UPROAR
	dbw 15, DOUBLE_TEAM
	dbw 22, SHOCK_WAVE
	dbw 29, OMINOUS_WIND
	dbw 36, SUBSTITUTE
	dbw 43, CHARGE
	dbw 50, DISCHARGE
	db 0 ; no more level-up moves
PhioneEvosAttacks:
        db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, WATER_SPORT
	dbw 9, CHARM
	dbw 16, SUPERSONIC
	dbw 24, BUBBLEBEAM
	dbw 31, ACID_ARMOR
	dbw 39, WHIRLPOOL
	dbw 46, WATER_PULSE
	dbw 54, AQUA_RING
	dbw 61, DIVE
	dbw 69, RAIN_DANCE
	db 0 ; no more level-up moves
ManaphyEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TAIL_GLOW
        dbw 1, BUBBLE
        dbw 1, WATER_SPORT
        dbw 9, CHARM
        dbw 16, SUPERSONIC
        dbw 24, BUBBLEBEAM
        dbw 31, ACID_ARMOR
        dbw 39, WHIRLPOOL
        dbw 46, WATER_PULSE
        dbw 54, AQUA_RING
        dbw 61, DIVE
        dbw 69, RAIN_DANCE
        dbw 76, HEART_SWAP
        db 0 ; no more level-up moves
FerroseedEvosAttacks:
        dbbw EVOLVE_LEVEL, 40, FERROTHORN
        db 0 ; no more evolutions
        dbw 1, TACKLE
        dbw 1, HARDEN
        dbw 5, ROLLOUT
        dbw 10, CURSE
        dbw 15, METAL_CLAW
        dbw 20, PIN_MISSILE
        dbw 25, GYRO_BALL
        dbw 30, IRON_DEFENSE
        dbw 35, MIRROR_SHOT
        dbw 40, INGRAIN
        dbw 45, FLASH_CANNON
        dbw 50, IRON_HEAD
        dbw 55, PAYBACK
        db 0 ; no more level-up moves
FerrothornEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        dbw 1, HARDEN
        dbw 1, ROLLOUT
        dbw 1, CURSE
        dbw 15, METAL_CLAW
        dbw 20, PIN_MISSILE
        dbw 25, GYRO_BALL
        dbw 30, IRON_DEFENSE
        dbw 35, MIRROR_SHOT
        dbw 40, INGRAIN
        dbw 45, FLASH_CANNON
        dbw 50, IRON_HEAD
        dbw 55, PAYBACK
        dbw 60, POWER_WHIP
        dbw 65, EXPLOSION
        db 0 ; no more level-up moves
StunfiskEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        dbw 1, WATER_GUN
        dbw 1, THUNDERSHOCK
        dbw 1, MUD_SLAP
        dbw 5, ENDURE
        dbw 10, MUD_SHOT
        dbw 15, REVENGE
        dbw 20, CHARGE
        dbw 25, SUCKER_PUNCH
        dbw 35, BOUNCE
        dbw 40, MUDDY_WATER
        dbw 45, DISCHARGE
        dbw 50, FLAIL
        dbw 55, FISSURE
        db 0 ; no more level-up moves
PawniardEvosAttacks:
        dbbw EVOLVE_LEVEL, 52, BISHARP
        db 0 ; no more evolutions
        dbw 1, SCRATCH
        dbw 1, LEER
        dbw 5, FURY_CUTTER
        dbw 10, TORMENT
        dbw 15, SCARY_FACE
        dbw 20, METAL_CLAW
        dbw 25, SLASH
        dbw 30, METAL_SOUND
        dbw 35, EMBARGO
        dbw 40, NIGHT_SLASH
        dbw 45, IRON_DEFENSE
        dbw 50, METAL_BURST
        dbw 55, SWORDS_DANCE
        dbw 60, GUILLOTINE
        db 0 ; no more level-up moves
BisharpEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, METAL_CLAW
        dbw 1, SCRATCH
        dbw 1, LEER
        dbw 1, FURY_CUTTER
        dbw 1, TORMENT
        dbw 15, SCARY_FACE
        dbw 20, METAL_CLAW
        dbw 25, SLASH
        dbw 30, METAL_SOUND
        dbw 35, EMBARGO
        dbw 40, NIGHT_SLASH
        dbw 45, IRON_DEFENSE
        dbw 50, METAL_BURST
        dbw 57, SWORDS_DANCE
        dbw 64, GUILLOTINE
        dbw 71, IRON_HEAD
        db 0 ; no more level-up moves
ZoruaEvosAttacks:
        dbbw EVOLVE_LEVEL, 30, ZOROARK
        db 0 ; no more evolutions
        dbw 1, SCRATCH
        dbw 1, LEER
        dbw 5, PURSUIT
        dbw 9, FAKE_TEARS
        dbw 13, FURY_SWIPES
        dbw 17, FAINT_ATTACK
        dbw 21, SCARY_FACE
        dbw 25, TAUNT
        dbw 29, SNARL
        dbw 33, NIGHT_SLASH
        dbw 37, NASTY_PLOT
        dbw 41, IMPRISON
        dbw 45, U_TURN
        dbw 49, EXTRASENSORY
        dbw 53, DARK_PULSE
        db 0 ; no more level-up moves
ZoroarkEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, NIGHT_SLASH
        dbw 1, NASTY_PLOT
        dbw 1, IMPRISON
        dbw 1, SCRATCH
        dbw 1, LEER
        dbw 5, PURSUIT
        dbw 9, FAKE_TEARS
        dbw 13, FURY_SWIPES
        dbw 17, FAINT_ATTACK
        dbw 21, SCARY_FACE
        dbw 25, TAUNT
        dbw 29, SNARL
        dbw 34, NIGHT_SLASH
        dbw 39, NASTY_PLOT
        dbw 44, IMPRISON
        dbw 49, U_TURN
        dbw 54, EXTRASENSORY
        dbw 59, DARK_PULSE
        dbw 64, AGILITY
        dbw 69, COUNTER
        db 0 ; no more level-up moves
SkrelpEvosAttacks:
        dbbw EVOLVE_LEVEL, 48, DRAGALGE
        db 0 ; no more evolutions
        dbw 1, SMOKESCREEN
        dbw 1, TACKLE
       dbw 1, WATER_GUN
       dbw 5, ACID
       dbw 5, FAINT_ATTACK
       dbw 9, TAIL_WHIP
        dbw 12, BUBBLE
        dbw 19, CAMOUFLAGE
        dbw 20, DOUBLE_TEAM
        dbw 23, POISON_TAIL
        dbw 25, WATER_PULSE
        dbw 32, TOXIC
        dbw 35, AQUA_TAIL
        dbw 38, SLUDGE_BOMB
        dbw 40, DRAGON_PULSE
        dbw 42, HYDRO_PUMP
        db 0 ; no more level-up moves
DragalgeEvosAttacks:
        db 0 ; no more evolutions
       dbw 1, ACID
       ; DRAGON_TAIL (L1)
       dbw 1, FAINT_ATTACK
       dbw 1, SMOKESCREEN
        dbw 1, TACKLE
        dbw 1, TWISTER
        dbw 1, WATER_GUN
        dbw 9, TAIL_WHIP
        dbw 12, BUBBLE
        dbw 19, CAMOUFLAGE
        dbw 20, DOUBLE_TEAM
        dbw 23, POISON_TAIL
        dbw 25, WATER_PULSE
        dbw 32, TOXIC
        dbw 35, AQUA_TAIL
        dbw 38, SLUDGE_BOMB
        dbw 40, DRAGON_PULSE
        dbw 42, HYDRO_PUMP
        dbw 66, OUTRAGE
        db 0 ; no more level-up moves
ClauncherEvosAttacks:
        dbbw EVOLVE_LEVEL, 37, CLAWITZER
        db 0 ; no more evolutions
        dbw 1, SPLASH
        dbw 1, WATER_GUN
        dbw 5, VICEGRIP
        dbw 7, WATER_SPORT
        dbw 10, FLAIL
        dbw 12, BUBBLE
        dbw 15, AQUA_JET
        dbw 20, BUBBLEBEAM
        ; SMACK_DOWN (L20)
        ; HONE_CLAWS (L25)
        dbw 25, SWORDS_DANCE
        dbw 30, CRABHAMMER
        dbw 30, WATER_PULSE
        dbw 40, AURA_SPHERE
        dbw 45, BOUNCE
        dbw 48, MUDDY_WATER
        db 0 ; no more level-up moves
ClawitzerEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, AURA_SPHERE
        dbw 1, DARK_PULSE
        dbw 1, DRAGON_PULSE
        dbw 1, FLAIL
        ; HEAL_PULSE (L1)
        dbw 1, SPLASH
        dbw 1, VICEGRIP
        dbw 1, WATER_GUN
        dbw 1, WATER_SPORT
        dbw 12, BUBBLE
        dbw 15, AQUA_JET
        dbw 20, BUBBLEBEAM
        ; SMACK_DOWN (L20)
        ; HONE_CLAWS (L25)
        dbw 25, SWORDS_DANCE
        dbw 30, CRABHAMMER
        dbw 30, WATER_PULSE
        dbw 49, BOUNCE
        dbw 53, MUDDY_WATER
        db 0 ; no more level-up moves
SylveonEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, BATON_PASS
        dbw 1, BITE
        dbw 1, CHARM
        dbw 1, COPYCAT
        dbw 1, COVET
        ; DISARMING_VOICE (L1)
        dbw 1, DOUBLE_EDGE
        ; FAIRY_WIND (L1)
        dbw 1, GROWL
        ; HELPING_HAND (L1)
        dbw 1, TACKLE
        dbw 1, TAIL_WHIP
        dbw 1, TAKE_DOWN
        dbw 5, SAND_ATTACK
        dbw 6, QUICK_ATTACK
        ; BABY_DOLL_EYES (L9)
        dbw 11, SWIFT
        ; DRAINING_KISS (L20)
        dbw 25, LIGHT_SCREEN
        dbw 25, MIMIC
        ; PLAY_ROUGH (L25)
        dbw 25, SKILL_SWAP
        ; MISTY_TERRAIN (L29)
        dbw 34, CALM_MIND
        ; MOONBLAST (L37)
        dbw 41, LAST_RESORT
        dbw 45, PSYCH_UP
        db 0 ; no more level-up moves
PanchamEvosAttacks:
        ; evolves at level 32 with a Dark-type ally
        db 0 ; no more evolutions
        dbw 1, LEER
        dbw 1, TACKLE
        dbw 4, ARM_THRUST
        dbw 8, TAUNT
        dbw 10, WORK_UP
        ; CIRCLE_THROW (L12)
        dbw 12, KARATE_CHOP
        dbw 15, COMET_PUNCH
        dbw 16, LOW_SWEEP
        dbw 20, SLASH
        dbw 27, VITAL_THROW
        dbw 33, BODY_SLAM
        dbw 33, CRUNCH
        ; PARTING_SHOT (L40)
        ; ENTRAINMENT (L42)
        dbw 48, SKY_UPPERCUT
        db 0 ; no more level-up moves
PangoroEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ARM_THRUST
        dbw 1, BULLET_PUNCH
        ; ENTRAINMENT (L1)
        dbw 1, HAMMER_ARM
        dbw 1, LEER
        dbw 1, LOW_SWEEP
        dbw 1, NIGHT_SLASH
        dbw 1, TACKLE
        dbw 1, TAUNT
        dbw 1, WORK_UP
        ; CIRCLE_THROW (L12)
        dbw 12, KARATE_CHOP
        dbw 15, COMET_PUNCH
        dbw 20, SLASH
        dbw 27, VITAL_THROW
        dbw 35, BODY_SLAM
        dbw 35, CRUNCH
        ; PARTING_SHOT (L46)
        dbw 52, SKY_UPPERCUT
        db 0 ; no more level-up moves
InkayEvosAttacks:
        ; evolves at level 30 when device is upside-down
        db 0 ; no more evolutions
        dbw 1, CONSTRICT
        dbw 1, PECK
        dbw 1, TACKLE
        dbw 3, HYPNOSIS
        dbw 4, REFLECT
        dbw 6, WRAP
        ; FOUL_PLAY (L8)
        dbw 9, PAYBACK
        dbw 12, PLUCK
        dbw 12, SWAGGER
        dbw 13, PSYWAVE
        dbw 15, PSYBEAM
        ; TOPSY_TURVY (L15)
        dbw 21, SLASH
        dbw 23, SWITCHEROO
        dbw 24, NIGHT_SLASH
        dbw 27, PSYCHO_CUT
        dbw 31, LIGHT_SCREEN
        dbw 39, SUPERPOWER
        db 0 ; no more level-up moves
MalamarEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, CONSTRICT
        dbw 1, HYPNOSIS
        dbw 1, PECK
        dbw 1, REFLECT
        dbw 1, REVERSAL
        dbw 1, SUPERPOWER
        dbw 1, TACKLE
        dbw 1, WRAP
        ; FOUL_PLAY (L8)
        dbw 9, PAYBACK
        dbw 12, PLUCK
        dbw 12, SWAGGER
        dbw 13, PSYWAVE
        dbw 15, PSYBEAM
        ; TOPSY_TURVY (L15)
        dbw 21, SLASH
        dbw 23, SWITCHEROO
        dbw 24, NIGHT_SLASH
        dbw 27, PSYCHO_CUT
        dbw 31, LIGHT_SCREEN
        db 0 ; no more level-up moves
NoibatEvosAttacks:
        dbbw EVOLVE_LEVEL, 48, NOIVERN
        db 0 ; no more evolutions
        dbw 1, ABSORB
        dbw 1, SCREECH
        dbw 1, SUPERSONIC
        dbw 1, TACKLE
        dbw 4, GUST
        dbw 5, LEECH_LIFE
        dbw 12, DOUBLE_TEAM
        dbw 13, BITE
        dbw 16, WING_ATTACK
        dbw 18, AGILITY
        dbw 23, AIR_CUTTER
        dbw 27, ROOST
        dbw 28, WHIRLWIND
        dbw 31, RAZOR_WIND
        dbw 32, SUPER_FANG
        dbw 35, TAILWIND
        dbw 36, AIR_SLASH
        ; HURRICANE (L52)
        db 0 ; no more level-up moves
NoivernEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ABSORB
        ; BOOMBURST (L1)
        dbw 1, DRAGON_PULSE
        dbw 1, GUST
        ; HURRICANE (L1)
        dbw 1, MOONLIGHT
        dbw 1, SCREECH
        dbw 1, SUPERSONIC
        dbw 1, TACKLE
        dbw 5, LEECH_LIFE
        dbw 12, DOUBLE_TEAM
        dbw 13, BITE
        dbw 16, WING_ATTACK
        dbw 18, AGILITY
        dbw 23, AIR_CUTTER
        dbw 27, ROOST
        dbw 28, WHIRLWIND
        dbw 31, RAZOR_WIND
        dbw 32, SUPER_FANG
        dbw 35, TAILWIND
        dbw 36, AIR_SLASH
        db 0 ; no more level-up moves
HonedgeEvosAttacks:
        dbbw EVOLVE_LEVEL, 35, DOUBLADE
        db 0 ; no more evolutions
        dbw 1, FURY_CUTTER
        dbw 1, SWORDS_DANCE
        dbw 1, TACKLE
        dbw 4, SHADOW_SNEAK
        ; AUTOTOMIZE (L8)
        dbw 8, METAL_SOUND
        dbw 12, AERIAL_ACE
        dbw 13, PURSUIT
        dbw 20, SLASH
        dbw 24, NIGHT_SLASH
        ; RETALIATE (L26)
        dbw 32, IRON_DEFENSE
        dbw 36, IRON_HEAD
        dbw 39, POWER_TRICK
        ; SACRED_SWORD (L47)
        db 0 ; no more level-up moves
DoubladeEvosAttacks:
        ; evolve EVOLVE_ITEM, DUSK_STONE, AEGISLASH
        db 0 ; no more evolutions
        ; AUTOTOMIZE (L1)
        dbw 1, FURY_CUTTER
        dbw 1, SHADOW_SNEAK
        dbw 1, SWORDS_DANCE
        dbw 1, TACKLE
        dbw 8, METAL_SOUND
        dbw 12, AERIAL_ACE
        dbw 13, PURSUIT
        dbw 20, SLASH
        dbw 24, NIGHT_SLASH
        ; RETALIATE (L26)
        dbw 32, IRON_DEFENSE
        dbw 38, IRON_HEAD
        dbw 41, POWER_TRICK
        ; SACRED_SWORD (L51)
        db 0 ; no more level-up moves
AegislashEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, AERIAL_ACE
        ; AUTOTOMIZE (L1)
        dbw 1, FURY_CUTTER
        dbw 1, HEAD_SMASH
        dbw 1, IRON_DEFENSE
        dbw 1, IRON_HEAD
        ; KINGS_SHIELD (L1)
        dbw 1, METAL_SOUND
        dbw 1, NIGHT_SLASH
        dbw 1, POWER_TRICK
        dbw 1, PURSUIT
        ; RETALIATE (L1)
        ; SACRED_SWORD (L1)
        dbw 1, SHADOW_SNEAK
        dbw 1, SLASH
        dbw 1, SWORDS_DANCE
        dbw 1, TACKLE
        db 0 ; no more level-up moves
GoomyEvosAttacks:
        evolve EVOLVE_LEVEL, 40, SLIGGOO
        db 0 ; no more evolutions
        dbw 1, ABSORB
        dbw 1, BUBBLE
        dbw 1, TACKLE
        dbw 5, WATER_GUN
        ; ACID_SPRAY (L6)
        dbw 9, PROTECT
        dbw 10, DRAGONBREATH
        dbw 11, ACID_ARMOR
        dbw 13, BIDE
        dbw 18, WATER_PULSE
        dbw 20, FLAIL
        dbw 25, DRAGON_PULSE
        dbw 25, RAIN_DANCE
        dbw 32, BODY_SLAM
        ; SHELTER (L34)
        dbw 38, MUDDY_WATER
        dbw 41, CURSE
        dbw 43, HYDRO_PUMP
        db 0 ; no more level-up moves
SliggooEvosAttacks:
        ; evolves at level 50 in rain
        db 0 ; no more evolutions
        dbw 1, ABSORB
        dbw 1, ACID_ARMOR
        ; ACID_SPRAY (L1)
        dbw 1, BUBBLE
        dbw 1, DRAGONBREATH
        dbw 1, TACKLE
        dbw 1, WATER_GUN
        dbw 9, PROTECT
        dbw 13, BIDE
        dbw 20, FLAIL
        dbw 25, RAIN_DANCE
        dbw 25, WATER_PULSE
        dbw 32, BODY_SLAM
        dbw 35, DRAGON_PULSE
        dbw 38, MUDDY_WATER
        dbw 43, CURSE
        db 0 ; no more level-up moves
GoodraEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ABSORB
        ; ACID_SPRAY (L1)
        dbw 1, AQUA_TAIL
        dbw 1, BUBBLE
        dbw 1, DRAGONBREATH
        dbw 1, FEINT
        dbw 1, OUTRAGE
        dbw 1, POISON_TAIL
        dbw 1, PROTECT
        dbw 1, TACKLE
        ; TEARFUL_LOOK (L1)
        dbw 1, WATER_GUN
        dbw 13, BIDE
        dbw 20, FLAIL
        dbw 25, RAIN_DANCE
        dbw 25, WATER_PULSE
        dbw 32, BODY_SLAM
        dbw 35, DRAGON_PULSE
        dbw 38, MUDDY_WATER
        dbw 43, CURSE
        dbw 50, POWER_WHIP
        db 0 ; no more level-up moves
RockruffEvosAttacks:
        evolve EVOLVE_LEVEL, 25, LYCANROC
        db 0 ; no more evolutions
        dbw 1, LEER
        dbw 1, TACKLE
        dbw 4, SAND_ATTACK
        dbw 7, BITE
        dbw 8, DOUBLE_TEAM
        dbw 12, HOWL
        dbw 12, ROCK_THROW
        dbw 18, ODOR_SLEUTH
        dbw 23, ROCK_TOMB
        dbw 26, ROAR
        dbw 29, STEALTH_ROCK
        dbw 32, ROCK_SLIDE
        dbw 36, CRUNCH
        dbw 37, SCARY_FACE
        dbw 45, ROCK_CLIMB
        dbw 48, STONE_EDGE
        db 0 ; no more level-up moves
LycanrocEvosAttacks:
        db 0 ; no more evolutions
        ; ACCELEROCK (L1)
        dbw 1, BITE
        dbw 1, DOUBLE_TEAM
        dbw 1, LEER
        dbw 1, QUICK_ATTACK
        ; QUICK_GUARD (L1)
        dbw 1, SAND_ATTACK
        dbw 1, SUCKER_PUNCH
        dbw 1, TACKLE
        dbw 12, HOWL
        dbw 12, ROCK_THROW
        dbw 18, ODOR_SLEUTH
        dbw 23, ROCK_TOMB
        dbw 26, ROAR
        dbw 29, STEALTH_ROCK
        dbw 34, ROCK_SLIDE
        dbw 37, SCARY_FACE
        dbw 40, CRUNCH
        dbw 45, ROCK_CLIMB
        dbw 48, STONE_EDGE
        db 0 ; no more level-up moves
CutieflyEvosAttacks:
        evolve EVOLVE_LEVEL, 25, RIBOMBEE
        db 0 ; no more evolutions
        dbw 1, ABSORB
        ; FAIRY_WIND (L1)
        dbw 6, STUN_SPORE
        ; STRUGGLE_BUG (L10)
        dbw 12, SWEET_SCENT
        dbw 13, SILVER_WIND
        ; DRAINING_KISS (L16)
        dbw 26, BUG_BUZZ
        dbw 30, AROMATHERAPY
        dbw 30, COVET
        dbw 31, DAZZLING_GLEAM
        dbw 36, SWITCHEROO
        ; QUIVER_DANCE (L41)
        db 0 ; no more level-up moves
RibombeeEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ABSORB
        dbw 1, COVET
        ; FAIRY_WIND (L1)
        ; POLLEN_PUFF (L1)
        ; STRUGGLE_BUG (L1)
        dbw 1, STUN_SPORE
        dbw 1, SWEET_SCENT
        dbw 13, SILVER_WIND
        ; DRAINING_KISS (L16)
        dbw 28, BUG_BUZZ
        dbw 32, AROMATHERAPY
        dbw 35, DAZZLING_GLEAM
        dbw 40, SWITCHEROO
        ; QUIVER_DANCE (L49)
        db 0 ; no more level-up moves
PikipekEvosAttacks:
        evolve EVOLVE_LEVEL, 14, TRUMBEAK
        db 0 ; no more evolutions
        dbw 1, PECK
        dbw 3, GROWL
        ; ECHOED_VOICE (L7)
        dbw 9, ROCK_SMASH
        dbw 13, SUPERSONIC
        dbw 15, PLUCK
        dbw 19, ROOST
        dbw 21, FURY_ATTACK
        dbw 25, SCREECH
        dbw 27, DRILL_PECK
        dbw 31, BULLET_SEED
        ; FEATHER_DANCE (L33)
        dbw 37, HYPER_VOICE
        db 0 ; no more level-up moves
TrumbeakEvosAttacks:
        evolve EVOLVE_LEVEL, 28, TOUCANNON
        db 0 ; no more evolutions
        ; ECHOED_VOICE (L1)
        dbw 1, GROWL
        dbw 1, PECK
        dbw 1, ROCK_BLAST
        dbw 1, ROCK_SMASH
        dbw 13, SUPERSONIC
        dbw 16, PLUCK
        dbw 21, ROOST
        dbw 24, FURY_ATTACK
        dbw 29, SCREECH
        dbw 32, DRILL_PECK
        dbw 37, BULLET_SEED
        ; FEATHER_DANCE (L40)
        dbw 45, HYPER_VOICE
        db 0 ; no more level-up moves
ToucannonEvosAttacks:
        db 0 ; no more evolutions
        ; BEAK_BLAST (L1)
        ; ECHOED_VOICE (L1)
        dbw 1, GROWL
        dbw 1, PECK
        dbw 1, ROCK_BLAST
        dbw 1, ROCK_SMASH
        dbw 13, SUPERSONIC
        dbw 16, PLUCK
        dbw 21, ROOST
        dbw 24, FURY_ATTACK
        dbw 30, SCREECH
        dbw 34, DRILL_PECK
        dbw 40, BULLET_SEED
        ; FEATHER_DANCE (L44)
        dbw 50, HYPER_VOICE
        db 0 ; no more level-up moves
MimikyuEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ASTONISH
        dbw 1, COPYCAT
        dbw 1, SCRATCH
        dbw 1, SPLASH
        dbw 1, WOOD_HAMMER
        dbw 5, DOUBLE_TEAM
        dbw 6, SHADOW_SNEAK
        ; BABY_DOLL_EYES (L10)
        dbw 19, MIMIC
        dbw 23, FAINT_ATTACK
        dbw 28, CHARM
        ; HONE_CLAWS (L30)
        dbw 32, SLASH
        dbw 37, SHADOW_CLAW
        ; PLAY_ROUGH (L46)
        dbw 50, PAIN_SPLIT
        db 0 ; no more level-up moves
SandygastEvosAttacks:
        evolve EVOLVE_LEVEL, 42, PALOSSAND
        db 0 ; no more evolutions
        dbw 1, ABSORB
        dbw 1, HARDEN
        dbw 5, ASTONISH
        dbw 9, SAND_ATTACK
        dbw 10, SAND_TOMB
        dbw 15, MEGA_DRAIN
        dbw 23, BULLDOZE
        dbw 27, HYPNOSIS
        dbw 32, IRON_DEFENSE
        dbw 35, GIGA_DRAIN
        dbw 41, SHADOW_BALL
        dbw 45, EARTH_POWER
        ; SHORE_UP (L50)
        dbw 54, SANDSTORM
        db 0 ; no more level-up moves
PalossandEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ABSORB
        dbw 1, ASTONISH
        dbw 1, HARDEN
        dbw 1, SAND_ATTACK
        dbw 1, SAND_TOMB
        dbw 15, MEGA_DRAIN
        dbw 23, BULLDOZE
        dbw 27, HYPNOSIS
        dbw 32, IRON_DEFENSE
        dbw 35, GIGA_DRAIN
        dbw 41, SHADOW_BALL
        dbw 47, EARTH_POWER
        ; SHORE_UP (L54)
        dbw 60, SANDSTORM
        db 0 ; no more level-up moves
SalanditEvosAttacks:
        ; evolves at level 33 if female
        db 0 ; no more evolutions
        dbw 1, POISON_GAS
        dbw 1, SCRATCH
        dbw 5, EMBER
        dbw 5, SMOG
        dbw 8, SWEET_SCENT
        dbw 13, DRAGON_RAGE
        dbw 15, POISON_FANG
        dbw 21, DOUBLESLAP
        ; FLAME_BURST (L24)
        dbw 25, NASTY_PLOT
        dbw 29, TOXIC
        ; INCINERATE (L30)
        ; VENOSHOCK (L35)
        dbw 40, DRAGON_PULSE
        dbw 40, FLAMETHROWER
        ; VENOM_DRENCH (L45)
        dbw 55, ENDEAVOR
        db 0 ; no more level-up moves
SalazzleEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, CAPTIVATE
        dbw 1, DISABLE
        dbw 1, EMBER
        dbw 1, ENCORE
        dbw 1, ENDEAVOR
        ; FIRE_LASH (L1)
        dbw 1, KNOCK_OFF
        dbw 1, POISON_GAS
        dbw 1, POUND
        dbw 1, SCRATCH
        dbw 1, SMOG
        dbw 1, SWAGGER
        dbw 1, SWEET_SCENT
        dbw 1, TORMENT
        dbw 13, DRAGON_RAGE
        dbw 15, POISON_FANG
        dbw 21, DOUBLESLAP
        ; FLAME_BURST (L24)
        dbw 25, NASTY_PLOT
        dbw 29, TOXIC
        ; INCINERATE (L30)
        ; VENOSHOCK (L37)
        dbw 44, DRAGON_PULSE
        dbw 44, FLAMETHROWER
        ; VENOM_DRENCH (L51)
        db 0 ; no more level-up moves
MareanieEvosAttacks:
        evolve EVOLVE_LEVEL, 38, TOXAPEX
        db 0 ; no more evolutions
        dbw 1, PECK
        dbw 1, POISON_STING
        ; WIDE_GUARD (L5)
        dbw 9, BITE
        dbw 13, TOXIC_SPIKES
        ; VENOSHOCK (L15)
        dbw 20, RECOVER
        dbw 21, TOXIC
        dbw 25, PIN_MISSILE
        dbw 29, SPIKE_CANNON
        ; LIQUIDATION (L35)
        dbw 37, POISON_JAB
        ; ACID_SPRAY (L40)
        ; VENOM_DRENCH (L40)
        db 0 ; no more level-up moves
ToxapexEvosAttacks:
        db 0 ; no more evolutions
        ; BANEFUL_BUNKER (L1)
        dbw 1, BITE
        dbw 1, PECK
        dbw 1, POISON_STING
        dbw 1, TOXIC_SPIKES
        ; WIDE_GUARD (L1)
        ; VENOSHOCK (L15)
        dbw 20, RECOVER
        dbw 21, TOXIC
        dbw 25, PIN_MISSILE
        dbw 29, SPIKE_CANNON
        ; LIQUIDATION (L35)
        dbw 37, POISON_JAB
        ; ACID_SPRAY (L42)
        ; VENOM_DRENCH (L42)
        db 0 ; no more level-up moves
TurtonatorEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, EMBER
        dbw 1, SMOG
        dbw 1, TACKLE
        dbw 8, PROTECT
        dbw 12, ENDURE
        ; INCINERATE (L13)
        dbw 16, FLAIL
        dbw 24, IRON_DEFENSE
        dbw 28, DRAGON_PULSE
        dbw 29, FLAMETHROWER
        dbw 32, BODY_SLAM
        ; SHELL_SMASH (L37)
        ; SHELL_TRAP (L40)
        dbw 48, OVERHEAT
        dbw 52, EXPLOSION
        db 0 ; no more level-up moves
DhelmiseEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ABSORB
        dbw 1, ASTONISH
        dbw 1, GROWTH
        dbw 1, RAPID_SPIN
        dbw 1, SWITCHEROO
        dbw 5, MEGA_DRAIN
        dbw 8, WRAP
        dbw 14, GYRO_BALL
        dbw 18, METAL_SOUND
        dbw 23, GIGA_DRAIN
        dbw 27, WHIRLPOOL
        ; ANCHOR_SHOT (L32)
        ; HEAVY_SLAM (L36)
        dbw 36, SHADOW_BALL
        dbw 40, SLAM
        dbw 41, ENERGY_BALL
        ; PHANTOM_FORCE (L54)
        dbw 59, POWER_WHIP
        db 0 ; no more level-up moves
PincurchinEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, PECK
        dbw 1, THUNDERSHOCK
        dbw 5, WATER_GUN
        dbw 10, CHARGE
        dbw 15, FURY_ATTACK
        dbw 20, SPARK
        dbw 25, BUBBLEBEAM
        dbw 30, RECOVER
        dbw 35, CURSE
        ; ELECTRIC_TERRAIN (L40)
        dbw 45, POISON_JAB
        ; ZING_ZAP (L50)
        dbw 55, ACUPRESSURE
        dbw 60, DISCHARGE
        db 0 ; no more level-up moves
CramorantEvosAttacks:
        db 0 ; no more evolutions
        ; BELCH (L1)
        dbw 1, PECK
        dbw 1, SPIT_UP
        dbw 1, STOCKPILE
        dbw 1, SWALLOW
        dbw 7, WATER_GUN
        dbw 14, FURY_ATTACK
        dbw 21, PLUCK
        dbw 28, DIVE
        dbw 35, DRILL_PECK
        dbw 42, AMNESIA
        dbw 49, THRASH
        dbw 56, HYDRO_PUMP
        db 0 ; no more level-up moves
BinacleEvosAttacks:
        evolve EVOLVE_LEVEL, 39, BARBARACLE
        db 0 ; no more evolutions
        dbw 1, MUD_SLAP
        dbw 1, SAND_ATTACK
        dbw 1, SCRATCH
        ; SHELL_SMASH (L1)
        dbw 4, WATER_GUN
        dbw 4, WITHDRAW
        dbw 10, FURY_SWIPES
        dbw 12, FURY_CUTTER
        dbw 13, SLASH
        dbw 20, ANCIENTPOWER
        dbw 20, CLAMP
        dbw 24, ROCK_POLISH
        ; HONE_CLAWS (L32)
        ; RAZOR_SHELL (L36)
        dbw 41, NIGHT_SLASH
        dbw 44, CROSS_CHOP
        db 0 ; no more level-up moves
BarbaracleEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, MUD_SLAP
        dbw 1, SAND_ATTACK
        dbw 1, SCRATCH
        ; SHELL_SMASH (L1)
        dbw 1, SKULL_BASH
        dbw 1, STONE_EDGE
        dbw 1, WATER_GUN
        dbw 1, WITHDRAW
        dbw 10, FURY_SWIPES
        dbw 12, FURY_CUTTER
        dbw 13, SLASH
        dbw 20, ANCIENTPOWER
        dbw 20, CLAMP
        dbw 24, ROCK_POLISH
        ; HONE_CLAWS (L32)
        ; RAZOR_SHELL (L36)
        dbw 44, NIGHT_SLASH
        dbw 48, CROSS_CHOP
        db 0 ; no more level-up moves
ApplinEvosAttacks:
        ; evolves with Tart Apple or Sweet Apple
        db 0 ; no more evolutions
        dbw 1, ASTONISH
        dbw 1, WITHDRAW
        db 0 ; no more level-up moves
FlappleEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ASTONISH
        dbw 1, GROWTH
        dbw 1, RECYCLE
        dbw 1, TWISTER
        dbw 1, WING_ATTACK
        dbw 1, WITHDRAW
        ; ACID_SPRAY (L4)
        ; ACROBATICS (L8)
        dbw 12, LEECH_SEED
        dbw 16, PROTECT
        dbw 20, DRAGONBREATH
        dbw 24, DRAGON_DANCE
        dbw 28, DRAGON_PULSE
        ; GRAV_APPLE (L32)
        dbw 36, IRON_DEFENSE
        dbw 40, FLY
        dbw 44, DRAGON_RUSH
        db 0 ; no more level-up moves
AppletunEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ASTONISH
        dbw 1, GROWTH
        dbw 1, HEADBUTT
        dbw 1, RECYCLE
        dbw 1, SWEET_SCENT
        dbw 1, WITHDRAW
        dbw 4, CURSE
        dbw 8, STOMP
        dbw 12, LEECH_SEED
        dbw 16, PROTECT
        dbw 20, BULLET_SEED
        dbw 24, RECOVER
        ; APPLE_ACID (L28)
        dbw 32, BODY_SLAM
        dbw 36, IRON_DEFENSE
        dbw 40, DRAGON_PULSE
        dbw 44, ENERGY_BALL
        db 0 ; no more level-up moves
GimmighoulEvosAttacks:
        ; evolves with 999 Gimmighoul Coins
        db 0 ; no more evolutions
        dbw 1, ASTONISH
        dbw 1, TACKLE
        db 0 ; no more level-up moves
GholdengoEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ASTONISH
        dbw 1, TACKLE
        dbw 7, NIGHT_SHADE
        dbw 14, CONFUSE_RAY
        dbw 21, SUBSTITUTE
        dbw 28, METAL_SOUND
        dbw 35, SHADOW_BALL
        dbw 42, RECOVER
        dbw 49, POWER_GEM
        ; MAKE_IT_RAIN (L56)
        dbw 63, NASTY_PLOT
        dbw 70, MEMENTO
        db 0 ; no more level-up moves
AnnihilapeEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, COUNTER
        dbw 1, FLING
        dbw 1, FOCUS_ENERGY
        dbw 1, LEER
        dbw 1, SCRATCH
        dbw 1, SHADOW_PUNCH
        dbw 5, FURY_SWIPES
        dbw 8, LOW_KICK
        dbw 12, SEISMIC_TOSS
        dbw 17, SWAGGER
        dbw 22, CROSS_CHOP
        dbw 26, ASSURANCE
        dbw 30, THRASH
        ; RAGE_FIST (L35)
        dbw 39, CLOSE_COMBAT
        dbw 44, SCREECH
        ; STOMPING_TANTRUM (L48)
        dbw 53, OUTRAGE
        ; FINAL_GAMBIT (L57)
        db 0 ; no more level-up moves
DudunsparceEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, DEFENSE_CURL
        dbw 1, FLAIL
        dbw 4, MUD_SLAP
        dbw 8, ROLLOUT
        dbw 12, GLARE
        dbw 16, SCREECH
        dbw 20, ANCIENTPOWER
        ; DRILL_RUN (L24)
        dbw 28, YAWN
        ; HYPER_DRILL (L32)
        dbw 36, ROOST
        dbw 40, DRAGON_RUSH
        ; COIL (L44)
        dbw 48, DOUBLE_EDGE
        dbw 52, ENDEAVOR
        ; HURRICANE (L56)
        ; BOOMBURST (L62)
        db 0 ; no more level-up moves
FarigirafEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ASTONISH
        dbw 1, GROWL
        dbw 1, GUARD_SWAP
        dbw 1, POWER_SWAP
        dbw 1, TACKLE
        dbw 5, CONFUSION
        dbw 10, ASSURANCE
        dbw 14, STOMP
        dbw 19, PSYBEAM
        dbw 23, AGILITY
        dbw 28, DOUBLE_HIT
        ; TWIN_BEAM (L32)
        dbw 37, CRUNCH
        dbw 41, BATON_PASS
        dbw 46, NASTY_PLOT
        dbw 50, PSYCHIC_M
        db 0 ; no more level-up moves
KingambitEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, FURY_CUTTER
        ; KOWTOW_CLEAVE (L1)
        dbw 1, LEER
        dbw 1, METAL_BURST
        dbw 1, METAL_CLAW
        dbw 1, SCRATCH
        dbw 15, TORMENT
        dbw 20, SCARY_FACE
        dbw 25, ASSURANCE
        dbw 30, METAL_SOUND
        dbw 35, SLASH
        dbw 40, NIGHT_SLASH
        dbw 45, IRON_DEFENSE
        ; RETALIATE (L50)
        dbw 57, IRON_HEAD
        dbw 64, SWORDS_DANCE
        dbw 71, GUILLOTINE
        db 0 ; no more level-up moves
DipplinEvosAttacks:
        ; evolves into Hydrapple while knowing DRAGON_CHEER
        db 0 ; no more evolutions
        dbw 1, ASTONISH
        dbw 1, DOUBLE_HIT
        dbw 1, RECYCLE
        dbw 1, SWEET_SCENT
        dbw 1, WITHDRAW
        ; DRAGON_TAIL (L4)
        dbw 8, GROWTH
        dbw 12, DRAGONBREATH
        dbw 16, PROTECT
        dbw 20, BULLET_SEED
        ; SYRUP_BOMB (L28)
        dbw 32, DRAGON_PULSE
        dbw 36, RECOVER
        dbw 40, ENERGY_BALL
        dbw 44, SUBSTITUTE
        db 0 ; no more level-up moves
HydrappleEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ASTONISH
        ; FICKLE_BEAM (L1)
        dbw 1, RECYCLE
        dbw 1, SWEET_SCENT
        dbw 1, WITHDRAW
        ; DRAGON_TAIL (L4)
        dbw 8, GROWTH
        dbw 12, DRAGONBREATH
        dbw 16, PROTECT
        dbw 20, BULLET_SEED
        ; SYRUP_BOMB (L28)
        dbw 32, DRAGON_PULSE
        dbw 36, RECOVER
        dbw 40, ENERGY_BALL
        dbw 44, SUBSTITUTE
        dbw 54, POWER_WHIP
        db 0 ; no more level-up moves
CharcadetEvosAttacks:
        ; evolves with Auspicious Armor or Malicious Armor
        db 0 ; no more evolutions
        dbw 1, ASTONISH
        dbw 1, EMBER
        dbw 1, LEER
        ; CLEAR_SMOG (L8)
        dbw 12, FIRE_SPIN
        dbw 16, WILL_O_WISP
        dbw 20, NIGHT_SHADE
        ; FLAME_CHARGE (L24)
        ; INCINERATE (L28)
        dbw 32, LAVA_PLUME
        db 0 ; no more level-up moves
ArmarougeEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ASTONISH
        dbw 1, EMBER
        dbw 1, LEER
        ; MYSTICAL_FIRE (L1)
        ; PSYSHOCK (L1)
        ; WIDE_GUARD (L1)
        ; CLEAR_SMOG (L8)
        dbw 12, FIRE_SPIN
        dbw 16, WILL_O_WISP
        dbw 20, NIGHT_SHADE
        ; FLAME_CHARGE (L24)
        ; INCINERATE (L28)
        dbw 32, LAVA_PLUME
        dbw 37, CALM_MIND
        ; ALLY_SWITCH (L42)
        dbw 48, FLAMETHROWER
        ; EXPANDING_FORCE (L56)
        ; ARMOR_CANNON (L62)
        db 0 ; no more level-up moves
CeruledgeEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ASTONISH
        dbw 1, EMBER
        dbw 1, LEER
        dbw 1, SHADOW_CLAW
        ; CLEAR_SMOG (L8)
        dbw 12, FIRE_SPIN
        dbw 16, WILL_O_WISP
        dbw 20, NIGHT_SHADE
        ; FLAME_CHARGE (L24)
        ; INCINERATE (L28)
        dbw 32, LAVA_PLUME
        dbw 37, SWORDS_DANCE
        ; ALLY_SWITCH (L42)
        ; BITTER_BLADE (L48)
        dbw 56, PSYCHO_CUT
        dbw 62, FLARE_BLITZ
        db 0 ; no more level-up moves
ClodsireEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, AMNESIA
        dbw 1, POISON_STING
        dbw 1, TAIL_WHIP
        dbw 4, TOXIC_SPIKES
        dbw 8, MUD_SHOT
        dbw 12, POISON_TAIL
        dbw 16, SLAM
        dbw 21, YAWN
        dbw 24, POISON_JAB
        ; SLUDGE_WAVE (L30)
        dbw 36, MEGAHORN
        dbw 40, TOXIC
        dbw 48, EARTHQUAKE
        db 0 ; no more level-up moves
CursolaEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ASTONISH
        dbw 1, DISABLE
        dbw 1, HARDEN
        dbw 1, PERISH_SONG
        dbw 1, TACKLE
        dbw 15, SPITE
        dbw 20, ANCIENTPOWER
        ; HEX (L25)
        dbw 30, CURSE
        ; STRENGTH_SAP (L35)
        dbw 40, POWER_GEM
        dbw 45, NIGHT_SHADE
        dbw 50, GRUDGE
        dbw 55, MIRROR_COAT
        db 0 ; no more level-up moves
PerrserkerEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, FAKE_OUT
        dbw 1, GROWL
        ; HONE_CLAWS (L1)
        dbw 1, IRON_DEFENSE
        dbw 1, IRON_HEAD
        dbw 1, METAL_BURST
        dbw 1, SCRATCH
        dbw 12, PAY_DAY
        dbw 16, METAL_CLAW
        dbw 20, TAUNT
        dbw 24, SWAGGER
        dbw 31, FURY_SWIPES
        dbw 36, SCREECH
        dbw 42, SLASH
        dbw 48, METAL_SOUND
        dbw 54, THRASH
        db 0 ; no more level-up moves
SirfetchdEvosAttacks:
        db 0 ; no more evolutions
        ; FIRST_IMPRESSION (L1)
        dbw 1, FURY_CUTTER
        dbw 1, IRON_DEFENSE
        dbw 1, LEER
        dbw 1, PECK
        dbw 1, SAND_ATTACK
        dbw 15, ROCK_SMASH
        ; BRUTAL_SWING (L20)
        dbw 25, DETECT
        dbw 30, KNOCK_OFF
        dbw 35, DEFOG
        dbw 40, BRICK_BREAK
        dbw 45, SWORDS_DANCE
        dbw 50, SLAM
        dbw 55, LEAF_BLADE
        ; FINAL_GAMBIT (L60)
        dbw 65, BRAVE_BIRD
        ; METEOR_ASSAULT (L70)
        db 0 ; no more level-up moves
MrRimeEvosAttacks:
        db 0 ; no more evolutions
        ; AFTER_YOU (L1)
        dbw 1, BATON_PASS
        dbw 1, BLOCK
        dbw 1, COPYCAT
        dbw 1, DAZZLING_GLEAM
        dbw 1, ENCORE
        dbw 1, FAKE_TEARS
        dbw 1, ICE_SHARD
        dbw 1, LIGHT_SCREEN
        dbw 1, MIMIC
        ; MISTY_TERRAIN (L1)
        dbw 1, POUND
        dbw 1, PROTECT
        dbw 1, RAPID_SPIN
        dbw 1, RECYCLE
        dbw 1, REFLECT
        dbw 1, ROLE_PLAY
        dbw 1, SAFEGUARD
        dbw 1, SLACK_OFF
        dbw 12, CONFUSION
        ; ALLY_SWITCH (L16)
        dbw 20, ICY_WIND
        dbw 24, DOUBLE_KICK
        dbw 28, PSYBEAM
        dbw 32, HYPNOSIS
        dbw 36, MIRROR_COAT
        dbw 40, SUCKER_PUNCH
        ; FREEZE_DRY (L44)
        dbw 48, PSYCHIC_M
        dbw 52, TEETER_DANCE
        db 0 ; no more level-up moves
ObstagoonEvosAttacks:
        db 0 ; no more evolutions
        ; BABY_DOLL_EYES (L1)
        dbw 1, CROSS_CHOP
        dbw 1, LEER
        dbw 1, LICK
        dbw 1, NIGHT_SLASH
        ; OBSTRUCT (L1)
        dbw 1, PIN_MISSILE
        dbw 1, SAND_ATTACK
        dbw 1, SUBMISSION
        dbw 1, SWITCHEROO
        dbw 1, TACKLE
        dbw 9, SNARL
        dbw 12, HEADBUTT
        ; HONE_CLAWS (L15)
        dbw 18, FURY_SWIPES
        dbw 23, REST
        dbw 28, TAKE_DOWN
        dbw 35, SCARY_FACE
        dbw 42, COUNTER
        dbw 49, TAUNT
        dbw 56, DOUBLE_EDGE
        db 0 ; no more level-up moves
OverqwilEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, POISON_STING
        dbw 1, TACKLE
        dbw 4, HARDEN
        dbw 5, SPIKES
        dbw 8, BITE
        dbw 9, PIN_MISSILE
        ; FELL_STINGER (L12)
        ; BARB_BARRAGE (L15)
        dbw 16, MINIMIZE
        dbw 21, WATER_PULSE
        dbw 24, BRINE
        dbw 26, DARK_PULSE
        dbw 29, POISON_JAB
        dbw 36, TOXIC_SPIKES
        dbw 37, AQUA_TAIL
        dbw 40, SPIT_UP
        dbw 40, STOCKPILE
        dbw 44, TOXIC
        dbw 47, DOUBLE_EDGE
        dbw 48, CRUNCH
        dbw 52, ACUPRESSURE
        dbw 56, DESTINY_BOND
        dbw 57, SELFDESTRUCT
        db 0 ; no more level-up moves
SneaslerEvosAttacks:
        db 0 ; no more evolutions
        ; DIRE_CLAW (L1)
        dbw 1, FLING
        dbw 1, LEER
        dbw 1, QUICK_ATTACK
        dbw 1, ROCK_SMASH
        dbw 1, SCRATCH
        dbw 6, TAUNT
        dbw 11, SWIFT
        dbw 18, METAL_CLAW
        dbw 18, SLASH
        dbw 24, POISON_JAB
        dbw 30, BRICK_BREAK
        dbw 34, SWORDS_DANCE
        ; HONE_CLAWS (L36)
        dbw 43, CLOSE_COMBAT
        dbw 48, AGILITY
        dbw 54, SCREECH
        db 0 ; no more level-up moves
KleavorEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, LEER
        dbw 1, QUICK_ATTACK
        ; STONE_AXE (L1)
        dbw 4, FURY_CUTTER
        dbw 6, SILVER_WIND
        dbw 8, FALSE_SWIPE
        dbw 11, AERIAL_ACE
        ; SMACK_DOWN (L12)
        dbw 14, DOUBLE_HIT
        dbw 14, STEALTH_ROCK
        dbw 16, DOUBLE_TEAM
        dbw 18, AIR_SLASH
        dbw 24, SLASH
        dbw 25, SWORDS_DANCE
        dbw 28, FOCUS_ENERGY
        dbw 32, AGILITY
        dbw 34, X_SCISSOR
        dbw 36, ROCK_SLIDE
        dbw 43, CLOSE_COMBAT
        db 0 ; no more level-up moves
UrsalunaEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, COVET
        dbw 1, FAKE_TEARS
        ; HEADLONG_RUSH (L1)
        dbw 1, LEER
        dbw 1, LICK
        dbw 1, SCRATCH
        dbw 1, TACKLE
        ; BABY_DOLL_EYES (L6)
        dbw 8, FURY_SWIPES
        dbw 11, BULLDOZE
        dbw 13, PAYBACK
        dbw 17, SWEET_SCENT
        dbw 18, SLASH
        ; PLAY_NICE (L25)
        ; PLAY_ROUGH (L25)
        ; HIGH_HORSEPOWER (L34)
        dbw 35, SCARY_FACE
        dbw 41, REST
        dbw 41, SNORE
        dbw 43, DOUBLE_EDGE
        dbw 56, THRASH
        dbw 64, HAMMER_ARM
        db 0 ; no more level-up moves
WyrdeerEvosAttacks:
        db 0 ; no more evolutions
        ; PSYSHIELD_BASH (L1)
        dbw 1, TACKLE
        dbw 3, LEER
        dbw 5, CONFUSION
        dbw 7, ASTONISH
        dbw 9, HYPNOSIS
        dbw 13, STOMP
        dbw 15, CALM_MIND
        dbw 16, SAND_ATTACK
        dbw 21, TAKE_DOWN
        dbw 23, CONFUSE_RAY
        dbw 29, EXTRASENSORY
        dbw 32, ROLE_PLAY
        dbw 37, ZEN_HEADBUTT
        dbw 47, DOUBLE_EDGE
        dbw 49, IMPRISON
        dbw 62, MEGAHORN
        db 0 ; no more level-up moves
MarshadowEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, ASSURANCE
        dbw 1, COPYCAT
        dbw 1, COUNTER
        dbw 1, DRAIN_PUNCH
        dbw 1, FEINT
        dbw 1, FIRE_PUNCH
        dbw 1, ICE_PUNCH
        ; LASER_FOCUS (L1)
        dbw 1, PURSUIT
        dbw 1, SHADOW_SNEAK
        dbw 1, THUNDERPUNCH
        dbw 5, FORCE_PALM
        dbw 9, ROLE_PLAY
        dbw 15, ROLLING_KICK
        dbw 18, SHADOW_PUNCH
        dbw 35, JUMP_KICK
        dbw 41, PSYCH_UP
        ; SPECTRAL_THIEF (L45)
        dbw 45, SUCKER_PUNCH
        dbw 50, CLOSE_COMBAT
        dbw 60, ENDEAVOR
        db 0 ; no more level-up moves
MeltanEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, HARDEN
        dbw 1, HEADBUTT
        dbw 1, THUNDERSHOCK
        dbw 8, TAIL_WHIP
        dbw 18, THUNDER_WAVE
        dbw 32, ACID_ARMOR
        dbw 40, FLASH_CANNON
        db 0 ; no more level-up moves
MelmetalEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, HARDEN
        dbw 1, HEADBUTT
        dbw 1, TAIL_WHIP
        dbw 1, THUNDERPUNCH
        dbw 1, THUNDERSHOCK
        dbw 1, THUNDER_WAVE
        dbw 32, ACID_ARMOR
        dbw 40, FLASH_CANNON
        dbw 48, MEGA_PUNCH
        dbw 56, PROTECT
        dbw 64, DISCHARGE
        ; DOUBLE_IRON_BASH (L72)
        dbw 72, DYNAMICPUNCH
        dbw 80, SUPERPOWER
        dbw 90, HYPER_BEAM
        db 0 ; no more level-up moves
ENDSECTION
