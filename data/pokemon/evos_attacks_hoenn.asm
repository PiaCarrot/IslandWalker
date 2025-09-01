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
.IndirectEnd::

PoochyenaEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, MIGHTYENA
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
	dbbw EVOLVE_LEVEL, 20, LINOONE
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
	dbbw EVOLVE_LEVEL, 25, PELIPPER
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
	dbbw EVOLVE_LEVEL, 20, KIRLIA
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
        dbbw EVOLVE_LEVEL, 30, GARDEVOIR
        dbww EVOLVE_ITEM, DAWN_STONE, GALLADE
        db 0 ; no more evolutions
	dbw 1, GROWL
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
	dbbw EVOLVE_LEVEL, 23, BRELOOM
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
	dbbw EVOLVE_LEVEL, 20, NINJASK
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
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, MARILL
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 2, CHARM
	dbw 7, TAIL_WHIP
	dbw 10, BUBBLE
	dbw 15, SLAM
	dbw 18, WATER_GUN
	db 0 ; no more level-up moves

AronEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, LAIRON
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
	dbbw EVOLVE_LEVEL, 42, AGGRON
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
	dbbw EVOLVE_LEVEL, 30, SHARPEDO
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
	dbbw EVOLVE_LEVEL, 40, WAILORD
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
	dbbw EVOLVE_LEVEL, 33, CAMERUPT
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
	dbbw EVOLVE_LEVEL, 32, GRUMPIG
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
	dbbw EVOLVE_LEVEL, 35, VIBRAVA
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
	dbbw EVOLVE_LEVEL, 45, FLYGON
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
	dbbw EVOLVE_LEVEL, 35, ALTARIA
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
	; dbww EVOLVE_ITEM, PRISM_SCALE, MILOTIC
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
	dbbw EVOLVE_LEVEL, 37, BANETTE
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
	dbbw EVOLVE_LEVEL, 37, DUSCLOPS
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
	dbbw EVOLVE_LEVEL, 15, WOBBUFFET
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
        dbbw EVOLVE_LEVEL, 42, GLALIE
        dbww EVOLVE_ITEM, DAWN_STONE, FROSLASS
        db 0 ; no more evolutions
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
	dbbw EVOLVE_LEVEL, 32, SEALEO
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
	dbbw EVOLVE_LEVEL, 44, WALREIN
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
        dbbw EVOLVE_LEVEL, 15, LUXIO
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
        dbbw EVOLVE_LEVEL, 30, LUXRAY
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
        dbbw EVOLVE_LEVEL, 25, CHERRIM
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
        dbbw EVOLVE_LEVEL, 20, CHIMECHO
        db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 6, GROWL
	dbw 9, ASTONISH
	dbw 14, CONFUSION
	dbw 17, UPROAR
	dbw 22, LAST_RESORT
	db 0 ; no more level-up moves

BonslyEvosAttacks:
        dbbw EVOLVE_LEVEL, 20, SUDOWOODO
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
        dbbw EVOLVE_LEVEL, 20, MR__MIME
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
        dbbw EVOLVE_LEVEL, 20, CHANSEY
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
        dbbw EVOLVE_LEVEL, 20, SNORLAX
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
        dbbw EVOLVE_LEVEL, 20, LUCARIO
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
        dbbw EVOLVE_LEVEL, 37, TOXICROAK
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
        dbbw EVOLVE_LEVEL, 31, LUMINEON
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
        dbbw EVOLVE_LEVEL, 20, MANTINE
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
ENDSECTION
