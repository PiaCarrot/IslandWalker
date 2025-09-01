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
	evolve EVOLVE_LEVEL, 18, MIGHTYENA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, HOWL
	dbw 9, SAND_ATTACK
	dbw 13, BITE
	dbw 17, ODOR_SLEUTH
	dbw 21, ROAR
	dbw 25, SWAGGER
	dbw 29, SCARY_FACE
	dbw 33, TAKE_DOWN
	dbw 37, TAUNT
	dbw 41, CRUNCH
	dbw 45, THIEF
	db 0 ; no more level-up moves

MightyenaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, HOWL
	dbw 1, SAND_ATTACK
	dbw 1, TACKLE
	dbw 5, HOWL
	dbw 9, SAND_ATTACK
	dbw 13, BITE
	dbw 17, ODOR_SLEUTH
	dbw 22, ROAR
	dbw 27, SWAGGER
	dbw 32, SCARY_FACE
	dbw 37, TAKE_DOWN
	dbw 42, TAUNT
	dbw 47, CRUNCH
	dbw 52, THIEF
	db 0 ; no more level-up moves

ZigzagoonEvosAttacks:
	evolve EVOLVE_LEVEL, 20, LINOONE
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
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
	db 0 ; no more level-up moves

LinooneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, HEADBUTT
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
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
	db 0 ; no more level-up moves

WingullEvosAttacks:
	evolve EVOLVE_LEVEL, 25, PELIPPER
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 7, SUPERSONIC
	dbw 13, WING_ATTACK
	dbw 21, MIST
	dbw 31, QUICK_ATTACK
	dbw 43, PURSUIT
	dbw 55, AGILITY
	db 0 ; no more level-up moves

PelipperEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 1, WATER_SPORT
	dbw 1, WING_ATTACK
	dbw 3, WATER_GUN
	dbw 7, SUPERSONIC
	dbw 13, WING_ATTACK
	dbw 21, MIST
	dbw 25, PROTECT
	dbw 33, STOCKPILE
	dbw 33, SWALLOW
	dbw 47, SPIT_UP
	dbw 61, HYDRO_PUMP
	db 0 ; no more level-up moves

RaltsEvosAttacks:
	evolve EVOLVE_LEVEL, 20, KIRLIA
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 6, CONFUSION
	dbw 11, DOUBLE_TEAM
	dbw 16, TELEPORT
	dbw 21, CALM_MIND
	dbw 26, PSYCHIC_M
	dbw 31, IMPRISON
	dbw 36, FUTURE_SIGHT
	dbw 41, HYPNOSIS
	dbw 46, DREAM_EATER
	db 0 ; no more level-up moves

KirliaEvosAttacks:
    evolve EVOLVE_LEVEL, 30, GARDEVOIR
    evolve EVOLVE_ITEM, DAWN_STONE, GALLADE
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 1, GROWL
	dbw 1, TELEPORT
	dbw 6, CONFUSION
	dbw 11, DOUBLE_TEAM
	dbw 16, TELEPORT
	dbw 21, CALM_MIND
	dbw 26, PSYCHIC_M
	dbw 33, IMPRISON
	dbw 40, FUTURE_SIGHT
	dbw 47, HYPNOSIS
	dbw 54, DREAM_EATER
	db 0 ; no more level-up moves

GardevoirEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DOUBLE_TEAM
	dbw 1, GROWL
	dbw 1, TELEPORT
	dbw 6, CONFUSION
	dbw 11, DOUBLE_TEAM
	dbw 16, TELEPORT
	dbw 21, CALM_MIND
	dbw 26, PSYCHIC_M
	dbw 33, IMPRISON
	dbw 42, FUTURE_SIGHT
	dbw 51, HYPNOSIS
	dbw 60, DREAM_EATER
	db 0 ; no more level-up moves

ShroomishEvosAttacks:
	evolve EVOLVE_LEVEL, 23, BRELOOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 4, TACKLE
	dbw 7, STUN_SPORE
	dbw 10, LEECH_SEED
	dbw 16, MEGA_DRAIN
	dbw 22, HEADBUTT
	dbw 28, POISONPOWDER
	dbw 36, GROWTH
	dbw 45, GIGA_DRAIN
	dbw 54, SPORE
	db 0 ; no more level-up moves

BreloomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, LEECH_SEED
	dbw 1, STUN_SPORE
	dbw 1, TACKLE
	dbw 4, TACKLE
	dbw 7, STUN_SPORE
	dbw 10, LEECH_SEED
	dbw 16, MEGA_DRAIN
	dbw 22, HEADBUTT
	dbw 23, MACH_PUNCH
	dbw 28, COUNTER
	dbw 36, SKY_UPPERCUT
	dbw 45, MIND_READER
	dbw 54, DYNAMICPUNCH
	db 0 ; no more level-up moves

NincadaEvosAttacks:
	evolve EVOLVE_LEVEL, 20, NINJASK
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, SCRATCH
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
	dbw 1, HARDEN
	dbw 1, LEECH_LIFE
	dbw 1, SAND_ATTACK
	dbw 1, SCRATCH
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
	db 0 ; no more level-up moves

ShedinjaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, SCRATCH
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 25, SPITE
	dbw 31, CONFUSE_RAY
	dbw 38, SHADOW_BALL
	dbw 45, GRUDGE
	db 0 ; no more level-up moves

AzurillEvosAttacks:
	evolve EVOLVE_HAPPINESS, MARILL
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 3, CHARM
	dbw 6, TAIL_WHIP
	dbw 10, BUBBLE
	dbw 15, SLAM
	dbw 21, WATER_GUN
	db 0 ; no more level-up moves

AronEvosAttacks:
	evolve EVOLVE_LEVEL, 32, LAIRON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 7, MUD_SLAP
	dbw 10, HEADBUTT
	dbw 13, METAL_CLAW
	dbw 17, IRON_DEFENSE
	dbw 21, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_TAIL
	dbw 34, PROTECT
	dbw 39, METAL_SOUND
	dbw 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

LaironEvosAttacks:
	evolve EVOLVE_LEVEL, 42, AGGRON
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, HEADBUTT
	dbw 1, MUD_SLAP
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 7, MUD_SLAP
	dbw 10, HEADBUTT
	dbw 13, METAL_CLAW
	dbw 17, IRON_DEFENSE
	dbw 21, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_TAIL
	dbw 37, PROTECT
	dbw 45, METAL_SOUND
	dbw 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

AggronEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, HEADBUTT
	dbw 1, MUD_SLAP
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 7, MUD_SLAP
	dbw 10, HEADBUTT
	dbw 13, METAL_CLAW
	dbw 17, IRON_DEFENSE
	dbw 21, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_TAIL
	dbw 37, PROTECT
	dbw 50, METAL_SOUND
	dbw 63, DOUBLE_EDGE
	db 0 ; no more level-up moves

CarvanhaEvosAttacks:
	evolve EVOLVE_LEVEL, 30, SHARPEDO
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 7, RAGE
	dbw 13, FOCUS_ENERGY
	dbw 16, SCARY_FACE
	dbw 22, CRUNCH
	dbw 28, SCREECH
	dbw 31, TAKE_DOWN
	dbw 37, SWAGGER
	dbw 43, AGILITY
	db 0 ; no more level-up moves

SharpedoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, FOCUS_ENERGY
	dbw 1, LEER
	dbw 1, RAGE
	dbw 7, RAGE
	dbw 13, FOCUS_ENERGY
	dbw 16, SCARY_FACE
	dbw 22, CRUNCH
	dbw 28, SCREECH
	dbw 33, SLASH
	dbw 38, TAUNT
	dbw 43, SWAGGER
	dbw 48, SKULL_BASH
	dbw 53, AGILITY
	db 0 ; no more level-up moves

WailmerEvosAttacks:
	evolve EVOLVE_LEVEL, 40, WAILORD
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 5, GROWL
	dbw 10, WATER_GUN
	dbw 14, ROLLOUT
	dbw 19, WHIRLPOOL
	dbw 23, ASTONISH
	dbw 28, WATER_PULSE
	dbw 32, MIST
	dbw 37, REST
	dbw 41, WATER_SPOUT
	dbw 46, AMNESIA
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

WailordEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, ROLLOUT
	dbw 1, SPLASH
	dbw 1, WATER_GUN
	dbw 5, GROWL
	dbw 10, WATER_GUN
	dbw 14, ROLLOUT
	dbw 19, WHIRLPOOL
	dbw 23, ASTONISH
	dbw 28, WATER_PULSE
	dbw 32, MIST
	dbw 37, REST
	dbw 44, WATER_SPOUT
	dbw 52, AMNESIA
	dbw 59, HYDRO_PUMP
	db 0 ; no more level-up moves

NumelEvosAttacks:
	evolve EVOLVE_LEVEL, 33, CAMERUPT
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 11, EMBER
	dbw 19, MAGNITUDE
	dbw 25, FOCUS_ENERGY
	dbw 29, TAKE_DOWN
	dbw 31, AMNESIA
	dbw 35, EARTHQUAKE
	dbw 41, FLAMETHROWER
	dbw 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

CameruptEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, GROWL
	dbw 1, MAGNITUDE
	dbw 1, TACKLE
	dbw 11, EMBER
	dbw 19, MAGNITUDE
	dbw 25, FOCUS_ENERGY
	dbw 29, TAKE_DOWN
	dbw 31, AMNESIA
	dbw 33, ROCK_SLIDE
	dbw 37, EARTHQUAKE
	dbw 45, ERUPTION
	dbw 55, FISSURE
	db 0 ; no more level-up moves

SpoinkEvosAttacks:
	evolve EVOLVE_LEVEL, 32, GRUMPIG
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 7, PSYWAVE
	dbw 10, ODOR_SLEUTH
	dbw 16, PSYBEAM
	dbw 19, PSYCH_UP
	dbw 25, CONFUSE_RAY
	dbw 28, MAGIC_COAT
	dbw 34, PSYCHIC_M
	dbw 37, REST
	dbw 37, SNORE
	dbw 43, BOUNCE
	db 0 ; no more level-up moves

GrumpigEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ODOR_SLEUTH
	dbw 1, PSYBEAM
	dbw 1, PSYWAVE
	dbw 1, SPLASH
	dbw 7, PSYWAVE
	dbw 10, ODOR_SLEUTH
	dbw 16, PSYBEAM
	dbw 19, PSYCH_UP
	dbw 25, CONFUSE_RAY
	dbw 28, MAGIC_COAT
	dbw 37, PSYCHIC_M
	dbw 43, REST
	dbw 43, SNORE
	dbw 55, BOUNCE
	db 0 ; no more level-up moves

SpindaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, UPROAR
	dbw 12, FAINT_ATTACK
	dbw 16, PSYBEAM
	dbw 23, HYPNOSIS
	dbw 27, DIZZY_PUNCH
	dbw 34, TEETER_DANCE
	dbw 38, PSYCH_UP
	dbw 45, DOUBLE_EDGE
	dbw 49, FLAIL
	dbw 56, THRASH
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
	db 0 ; no more level-up moves

VibravaEvosAttacks:
	evolve EVOLVE_LEVEL, 45, FLYGON
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, FAINT_ATTACK
	dbw 1, SAND_ATTACK
	dbw 1, SAND_TOMB
	dbw 9, SAND_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, SAND_TOMB
	dbw 33, CRUNCH
	dbw 35, DRAGONBREATH
	dbw 41, SCREECH
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

FlygonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, FAINT_ATTACK
	dbw 1, SAND_ATTACK
	dbw 1, SAND_TOMB
	dbw 9, SAND_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, SAND_TOMB
	dbw 33, CRUNCH
	dbw 35, DRAGONBREATH
	dbw 41, SCREECH
	dbw 53, SANDSTORM
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

SwabluEvosAttacks:
	evolve EVOLVE_LEVEL, 35, ALTARIA
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, PECK
	dbw 8, ASTONISH
	dbw 11, SING
	dbw 18, FURY_ATTACK
	dbw 21, SAFEGUARD
	dbw 28, MIST
	dbw 31, TAKE_DOWN
	dbw 38, MIRROR_MOVE
	dbw 41, REFRESH
	dbw 48, PERISH_SONG
	db 0 ; no more level-up moves

AltariaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, GROWL
	dbw 1, PECK
	dbw 1, SING
	dbw 8, ASTONISH
	dbw 11, SING
	dbw 18, FURY_ATTACK
	dbw 21, SAFEGUARD
	dbw 28, MIST
	dbw 31, TAKE_DOWN
	dbw 35, DRAGONBREATH
	dbw 40, DRAGON_DANCE
	dbw 45, REFRESH
	dbw 54, PERISH_SONG
	dbw 59, SKY_ATTACK
	db 0 ; no more level-up moves

ZangooseEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 4, LEER
	dbw 7, QUICK_ATTACK
	dbw 10, SWORDS_DANCE
	dbw 13, FURY_CUTTER
	dbw 19, SLASH
	dbw 25, PURSUIT
	dbw 31, CRUSH_CLAW
	dbw 37, TAUNT
	dbw 46, DETECT
	dbw 55, FALSE_SWIPE
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
	dbw 5, WRAP
	dbw 10, WATER_SPORT
	dbw 15, REFRESH
	dbw 20, WATER_PULSE
	dbw 25, TWISTER
	dbw 30, RECOVER
	dbw 35, RAIN_DANCE
	dbw 40, HYDRO_PUMP
	dbw 45, ATTRACT
	dbw 50, SAFEGUARD
	db 0 ; no more level-up moves

KecleonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, LICK
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 1, THIEF
	dbw 4, BIND
	dbw 7, FAINT_ATTACK
	dbw 12, FURY_SWIPES
	dbw 17, PSYBEAM
	dbw 24, SCREECH
	dbw 31, SLASH
	dbw 40, SUBSTITUTE
	dbw 49, ANCIENTPOWER
	db 0 ; no more level-up moves

ShuppetEvosAttacks:
	evolve EVOLVE_LEVEL, 37, BANETTE
	db 0 ; no more evolutions
	dbw 1, KNOCK_OFF
	dbw 8, SCREECH
	dbw 13, NIGHT_SHADE
	dbw 20, CURSE
	dbw 25, SPITE
	dbw 32, WILL_O_WISP
	dbw 37, FAINT_ATTACK
	dbw 44, SHADOW_BALL
	dbw 49, SNATCH
	dbw 56, GRUDGE
	db 0 ; no more level-up moves

BanetteEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CURSE
	dbw 1, KNOCK_OFF
	dbw 1, NIGHT_SHADE
	dbw 1, SCREECH
	dbw 8, SCREECH
	dbw 13, NIGHT_SHADE
	dbw 20, CURSE
	dbw 25, SPITE
	dbw 32, WILL_O_WISP
	dbw 39, FAINT_ATTACK
	dbw 48, SHADOW_BALL
	dbw 55, SNATCH
	dbw 64, GRUDGE
	db 0 ; no more level-up moves

DuskullEvosAttacks:
	evolve EVOLVE_LEVEL, 37, DUSCLOPS
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 5, DISABLE
	dbw 12, FORESIGHT
	dbw 16, ASTONISH
	dbw 23, CONFUSE_RAY
	dbw 27, PURSUIT
	dbw 34, CURSE
	dbw 38, WILL_O_WISP
	dbw 45, MEAN_LOOK
	dbw 49, FUTURE_SIGHT
	db 0 ; no more level-up moves

DusclopsEvosAttacks:
        dbww EVOLVE_ITEM, REAPER_CLOTH, DUSKNOIR
        db 0 ; no more evolutions
	dbw 1, BIND
	dbw 1, DISABLE
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 5, DISABLE
	dbw 12, FORESIGHT
	dbw 16, ASTONISH
	dbw 23, CONFUSE_RAY
	dbw 27, PURSUIT
	dbw 34, CURSE
	dbw 37, SHADOW_PUNCH
	dbw 41, WILL_O_WISP
	dbw 51, MEAN_LOOK
	dbw 58, FUTURE_SIGHT
	db 0 ; no more level-up moves

TropiusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GUST
	dbw 1, LEER
	dbw 7, GROWTH
	dbw 11, RAZOR_LEAF
	dbw 17, STOMP
	dbw 21, SWEET_SCENT
	dbw 27, WHIRLWIND
	dbw 31, MAGICAL_LEAF
	dbw 37, BODY_SLAM
	dbw 41, SOLARBEAM
	dbw 47, SYNTHESIS
	db 0 ; no more level-up moves

ChimechoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 6, GROWL
	dbw 9, ASTONISH
	dbw 14, CONFUSION
	dbw 17, TAKE_DOWN
	dbw 22, UPROAR
	dbw 25, YAWN
	dbw 30, PSYWAVE
	dbw 33, DOUBLE_EDGE
	dbw 38, HEAL_BELL
	dbw 41, SAFEGUARD
	dbw 46, PSYCHIC_M
	db 0 ; no more level-up moves

WynautEvosAttacks:
	evolve EVOLVE_LEVEL, 15, WOBBUFFET
	db 0 ; no more evolutions
	dbw 1, CHARM
	dbw 1, ENCORE
	dbw 1, SPLASH
	dbw 15, COUNTER
	dbw 15, DESTINY_BOND
	dbw 15, MIRROR_COAT
	dbw 15, SAFEGUARD
	db 0 ; no more level-up moves

SnoruntEvosAttacks:
    evolve EVOLVE_LEVEL, 42, GLALIE
    evolve EVOLVE_ITEM, DAWN_STONE, FROSLASS
    db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, POWDER_SNOW
	dbw 7, DOUBLE_TEAM
	dbw 10, BITE
	dbw 16, ICY_WIND
	dbw 19, HEADBUTT
	dbw 25, PROTECT
	dbw 28, CRUNCH
	dbw 34, ICE_BEAM
	dbw 37, HAIL
	dbw 43, BLIZZARD
	db 0 ; no more level-up moves

GlalieEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, DOUBLE_TEAM
	dbw 1, LEER
	dbw 1, POWDER_SNOW
	dbw 7, DOUBLE_TEAM
	dbw 10, BITE
	dbw 16, ICY_WIND
	dbw 19, HEADBUTT
	dbw 25, PROTECT
	dbw 28, CRUNCH
	dbw 34, ICE_BEAM
	dbw 42, HAIL
	dbw 53, BLIZZARD
	dbw 61, SHEER_COLD
	db 0 ; no more level-up moves

SphealEvosAttacks:
	evolve EVOLVE_LEVEL, 32, SEALEO
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, POWDER_SNOW
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
	dbw 1, ENCORE
	dbw 1, GROWL
	dbw 1, POWDER_SNOW
	dbw 1, WATER_GUN
	dbw 7, ENCORE
	dbw 13, ICE_BALL
	dbw 19, BODY_SLAM
	dbw 25, AURORA_BEAM
	dbw 31, HAIL
	dbw 39, REST
	dbw 39, SNORE
	dbw 47, BLIZZARD
	dbw 55, SHEER_COLD
	db 0 ; no more level-up moves

WalreinEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ENCORE
	dbw 1, GROWL
	dbw 1, POWDER_SNOW
	dbw 1, WATER_GUN
	dbw 7, ENCORE
	dbw 13, ICE_BALL
	dbw 19, BODY_SLAM
	dbw 25, AURORA_BEAM
	dbw 31, HAIL
	dbw 39, REST
	dbw 39, SNORE
	dbw 50, BLIZZARD
	dbw 61, SHEER_COLD
	db 0 ; no more level-up moves

RelicanthEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, TACKLE
	dbw 8, WATER_GUN
	dbw 15, ROCK_TOMB
	dbw 22, YAWN
	dbw 29, TAKE_DOWN
	dbw 36, MUD_SPORT
	dbw 43, ANCIENTPOWER
	dbw 50, REST
	dbw 57, DOUBLE_EDGE
	dbw 64, HYDRO_PUMP
	db 0 ; no more level-up moves

LuvdiscEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, CHARM
	dbw 12, WATER_GUN
	dbw 16, AGILITY
	dbw 24, TAKE_DOWN
	dbw 28, ATTRACT
	dbw 36, SWEET_KISS
	dbw 40, FLAIL
	dbw 48, SAFEGUARD
	db 0 ; no more level-up moves

LatiasEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PSYWAVE
	dbw 5, WISH
	; dbw 10, HELPING_HAND
	dbw 15, SAFEGUARD
	dbw 20, DRAGONBREATH
	dbw 25, WATER_SPORT
	dbw 30, REFRESH
	dbw 35, MIST_BALL
	dbw 40, PSYCHIC_M
	dbw 45, RECOVER
	dbw 50, CHARM
	db 0 ; no more level-up moves

LatiosEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, PSYWAVE
	dbw 5, MEMENTO
	; dbw 10, HELPING_HAND
	dbw 15, SAFEGUARD
	dbw 20, DRAGONBREATH
	dbw 25, PROTECT
	dbw 30, REFRESH
	dbw 35, LUSTER_PURGE
	dbw 40, PSYCHIC_M
	dbw 45, RECOVER
        dbw 50, DRAGON_DANCE
        db 0 ; no more level-up moves

ShinxEvosAttacks:
        evolve EVOLVE_LEVEL, 15, LUXIO
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

LuxioEvosAttacks:
        evolve EVOLVE_LEVEL, 30, LUXRAY
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

LuxrayEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

CherubiEvosAttacks:
        evolve EVOLVE_LEVEL, 25, CHERRIM
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

CherrimEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

AmbipomEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

MismagiusEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

HonchkrowEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

ChinglingEvosAttacks:
        evolve EVOLVE_LEVEL, 20, CHIMECHO
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

BonslyEvosAttacks:
        evolve EVOLVE_LEVEL, 20, SUDOWOODO
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

MimeJrEvosAttacks:
        evolve EVOLVE_LEVEL, 20, MR__MIME
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

HappinyEvosAttacks:
        evolve EVOLVE_LEVEL, 20, CHANSEY
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

ChatotEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

MunchlaxEvosAttacks:
        evolve EVOLVE_LEVEL, 20, SNORLAX
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
RioluEvosAttacks:
        evolve EVOLVE_LEVEL, 20, LUCARIO
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
LucarioEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
CroagunkEvosAttacks:
        evolve EVOLVE_LEVEL, 37, TOXICROAK
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
ToxicroakEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
CarnivineEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
FinneonEvosAttacks:
        evolve EVOLVE_LEVEL, 31, LUMINEON
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
LumineonEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
MantykeEvosAttacks:
        evolve EVOLVE_LEVEL, 20, MANTINE
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
WeavileEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
MagnezoneEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

LickilickyEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

RhyperiorEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

TangrowthEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

ElectivireEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves

MagmortarEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
TogekissEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
YanmegaEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
LeafeonEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
GlaceonEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
GliscorEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
MamoswineEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
PorygonZEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
GalladeEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
DusknoirEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
FroslassEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
RotomEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
PhioneEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
ManaphyEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        db 0 ; no more level-up moves
ENDSECTION
