SECTION "Evolutions and Attacks 2", ROMX

EvosAttacksPointers2::
	dw ChikoritaEvosAttacks
	dw BayleefEvosAttacks
	dw MeganiumEvosAttacks
	dw CyndaquilEvosAttacks
	dw QuilavaEvosAttacks
	dw TyphlosionEvosAttacks
	dw TotodileEvosAttacks
	dw CroconawEvosAttacks
	dw FeraligatrEvosAttacks
	dw SentretEvosAttacks
	dw FurretEvosAttacks
	dw HoothootEvosAttacks
	dw NoctowlEvosAttacks
	dw LedybaEvosAttacks
	dw LedianEvosAttacks
	dw SpinarakEvosAttacks
	dw AriadosEvosAttacks
	dw CrobatEvosAttacks
	dw ChinchouEvosAttacks
	dw LanturnEvosAttacks
	dw PichuEvosAttacks
	dw CleffaEvosAttacks
	dw IgglybuffEvosAttacks
	dw TogepiEvosAttacks
	dw TogeticEvosAttacks
	dw NatuEvosAttacks
	dw XatuEvosAttacks
	dw MareepEvosAttacks
	dw FlaaffyEvosAttacks
	dw AmpharosEvosAttacks
	dw BellossomEvosAttacks
	dw MarillEvosAttacks
	dw AzumarillEvosAttacks
	dw SudowoodoEvosAttacks
	dw PolitoedEvosAttacks
	dw HoppipEvosAttacks
	dw SkiploomEvosAttacks
	dw JumpluffEvosAttacks
	dw AipomEvosAttacks
	dw SunkernEvosAttacks
	dw SunfloraEvosAttacks
	dw YanmaEvosAttacks
	dw WooperEvosAttacks
	dw QuagsireEvosAttacks
	dw EspeonEvosAttacks
	dw UmbreonEvosAttacks
	dw MurkrowEvosAttacks
	dw SlowkingEvosAttacks
	dw MisdreavusEvosAttacks
	dw WobbuffetEvosAttacks
	dw GirafarigEvosAttacks
	dw PinecoEvosAttacks
	dw ForretressEvosAttacks
	dw DunsparceEvosAttacks
	dw GligarEvosAttacks
	dw SteelixEvosAttacks
	dw SnubbullEvosAttacks
	dw GranbullEvosAttacks
	dw QwilfishEvosAttacks
	dw ScizorEvosAttacks
	dw ShuckleEvosAttacks
	dw HeracrossEvosAttacks
	dw SneaselEvosAttacks
	dw TeddiursaEvosAttacks
	dw UrsaringEvosAttacks
	dw SlugmaEvosAttacks
	dw MagcargoEvosAttacks
	dw SwinubEvosAttacks
	dw PiloswineEvosAttacks
	dw CorsolaEvosAttacks
	dw RemoraidEvosAttacks
	dw OctilleryEvosAttacks
	dw DelibirdEvosAttacks
	dw MantineEvosAttacks
	dw SkarmoryEvosAttacks
	dw HoundourEvosAttacks
	dw HoundoomEvosAttacks
	dw KingdraEvosAttacks
	dw PhanpyEvosAttacks
	dw DonphanEvosAttacks
	dw Porygon2EvosAttacks
	dw StantlerEvosAttacks
	dw SmeargleEvosAttacks
	dw TyrogueEvosAttacks
	dw HitmontopEvosAttacks
	dw SmoochumEvosAttacks
	dw ElekidEvosAttacks
	dw MagbyEvosAttacks
	dw MiltankEvosAttacks
	dw BlisseyEvosAttacks
	dw RaikouEvosAttacks
	dw EnteiEvosAttacks
	dw SuicuneEvosAttacks
	dw LarvitarEvosAttacks
	dw PupitarEvosAttacks
	dw TyranitarEvosAttacks
	dw LugiaEvosAttacks
	dw HoOhEvosAttacks
	dw CelebiEvosAttacks
.IndirectEnd::

ChikoritaEvosAttacks:
	evolve EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, RAZOR_LEAF
	dbw 9, POISONPOWDER
	dbw 12, SYNTHESIS
	dbw 17, REFLECT
	dbw 20, MAGICAL_LEAF
	dbw 23, NATURAL_GIFT
	dbw 28, SWEET_SCENT
	dbw 31, LIGHT_SCREEN
	dbw 34, BODY_SLAM
	dbw 39, SAFEGUARD
	dbw 42, AROMATHERAPY
	dbw 45, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	evolve EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, RAZOR_LEAF
	dbw 1, POISONPOWDER
	dbw 6, RAZOR_LEAF
	dbw 9, POISONPOWDER
	dbw 12, SYNTHESIS
	dbw 18, REFLECT
	dbw 22, MAGICAL_LEAF
	dbw 26, NATURAL_GIFT
	dbw 32, SWEET_SCENT
	dbw 36, LIGHT_SCREEN
	dbw 40, BODY_SLAM
	dbw 46, SAFEGUARD
	dbw 50, AROMATHERAPY
	dbw 54, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, RAZOR_LEAF
	dbw 1, POISONPOWDER
	dbw 6, RAZOR_LEAF
	dbw 9, POISONPOWDER
	dbw 12, SYNTHESIS
	dbw 18, REFLECT
	dbw 22, MAGICAL_LEAF
	dbw 26, NATURAL_GIFT
	dbw 32, PETAL_DANCE
	dbw 34, SWEET_SCENT
	dbw 40, LIGHT_SCREEN
	dbw 46, BODY_SLAM
	dbw 54, SAFEGUARD
	dbw 60, AROMATHERAPY
	dbw 66, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	evolve EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 4, SMOKESCREEN
	dbw 10, EMBER
	dbw 13, QUICK_ATTACK
	dbw 19, FLAME_WHEEL
	dbw 22, DEFENSE_CURL
	dbw 28, SWIFT
	dbw 31, LAVA_PLUME
	dbw 37, FLAMETHROWER
	dbw 40, ROLLOUT
	dbw 46, DOUBLE_EDGE
	dbw 49, ERUPTION
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	evolve EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 1, SMOKESCREEN
	dbw 4, SMOKESCREEN
	dbw 10, EMBER
	dbw 13, QUICK_ATTACK
	dbw 20, FLAME_WHEEL
	dbw 24, DEFENSE_CURL
	dbw 31, SWIFT
	dbw 35, LAVA_PLUME
	dbw 42, FLAMETHROWER
	dbw 46, ROLLOUT
	dbw 53, DOUBLE_EDGE
	dbw 57, ERUPTION
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GYRO_BALL
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 1, SMOKESCREEN
	dbw 1, EMBER
	dbw 4, SMOKESCREEN
	dbw 10, EMBER
	dbw 13, QUICK_ATTACK
	dbw 20, FLAME_WHEEL
	dbw 24, DEFENSE_CURL
	dbw 31, SWIFT
	dbw 35, LAVA_PLUME
	dbw 42, FLAMETHROWER
	dbw 46, ROLLOUT
	dbw 53, DOUBLE_EDGE
	dbw 57, ERUPTION
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	evolve EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 6, WATER_GUN
	dbw 8, RAGE
	dbw 13, BITE
	dbw 15, SCARY_FACE
	dbw 20, ICE_FANG
	dbw 22, FLAIL
	dbw 27, CRUNCH
	dbw 29, SLASH
	dbw 34, SCREECH
	dbw 36, THRASH
	dbw 41, AQUA_TAIL
	dbw 43, SUPERPOWER
	dbw 48, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	evolve EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, WATER_GUN
	dbw 6, WATER_GUN
	dbw 8, RAGE
	dbw 13, BITE
	dbw 15, SCARY_FACE
	dbw 21, ICE_FANG
	dbw 24, FLAIL
	dbw 30, CRUNCH
	dbw 33, SLASH
	dbw 39, SCREECH
	dbw 42, THRASH
	dbw 48, AQUA_TAIL
	dbw 51, SUPERPOWER
	dbw 57, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, WATER_GUN
	dbw 1, RAGE
	dbw 6, WATER_GUN
	dbw 8, RAGE
	dbw 13, BITE
	dbw 15, SCARY_FACE
	dbw 21, ICE_FANG
	dbw 24, FLAIL
	dbw 30, AGILITY
	dbw 32, CRUNCH
	dbw 37, SLASH
	dbw 45, SCREECH
	dbw 50, THRASH
	dbw 58, AQUA_TAIL
	dbw 63, SUPERPOWER
	dbw 71, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	evolve EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, FORESIGHT
	dbw 4, DEFENSE_CURL
	dbw 7, QUICK_ATTACK
	dbw 13, FURY_SWIPES
	dbw 25, SLAM
	dbw 28, REST
	dbw 31, SUCKER_PUNCH
	dbw 36, AMNESIA
	dbw 39, BATON_PASS
	dbw 47, HYPER_VOICE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, FORESIGHT
	dbw 1, DEFENSE_CURL
	dbw 1, QUICK_ATTACK
	dbw 4, DEFENSE_CURL
	dbw 7, QUICK_ATTACK
	dbw 13, FURY_SWIPES
	dbw 28, SLAM
	dbw 32, REST
	dbw 36, SUCKER_PUNCH
	dbw 42, AMNESIA
	dbw 46, BATON_PASS
	dbw 56, HYPER_VOICE
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	evolve EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, FORESIGHT
	dbw 5, HYPNOSIS
	dbw 9, PECK
	dbw 13, UPROAR
	dbw 17, REFLECT
	dbw 21, CONFUSION
	dbw 25, TAKE_DOWN
	dbw 29, AIR_SLASH
	dbw 33, ZEN_HEADBUTT
	dbw 37, EXTRASENSORY
	dbw 41, PSYCHO_SHIFT
	dbw 45, ROOST
	dbw 49, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SKY_ATTACK
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, FORESIGHT
	dbw 1, HYPNOSIS
	dbw 5, HYPNOSIS
	dbw 9, PECK
	dbw 13, UPROAR
	dbw 17, REFLECT
	dbw 22, CONFUSION
	dbw 27, TAKE_DOWN
	dbw 32, AIR_SLASH
	dbw 37, ZEN_HEADBUTT
	dbw 42, EXTRASENSORY
	dbw 47, PSYCHO_SHIFT
	dbw 52, ROOST
	dbw 57, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	evolve EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 6, SUPERSONIC
	dbw 9, COMET_PUNCH
	dbw 14, LIGHT_SCREEN
	dbw 14, REFLECT
	dbw 14, SAFEGUARD
	dbw 17, MACH_PUNCH
	dbw 22, BATON_PASS
	dbw 25, SILVER_WIND
	dbw 30, AGILITY
	dbw 33, SWIFT
	dbw 38, DOUBLE_EDGE
	dbw 41, BUG_BUZZ
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SUPERSONIC
	dbw 1, COMET_PUNCH
	dbw 6, SUPERSONIC
	dbw 9, COMET_PUNCH
	dbw 14, LIGHT_SCREEN
	dbw 14, REFLECT
	dbw 14, SAFEGUARD
	dbw 17, MACH_PUNCH
	dbw 24, BATON_PASS
	dbw 29, SILVER_WIND
	dbw 36, AGILITY
	dbw 41, SWIFT
	dbw 48, DOUBLE_EDGE
	dbw 53, BUG_BUZZ
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	evolve EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	dbw 5, SCARY_FACE
	dbw 8, CONSTRICT
	dbw 12, LEECH_LIFE
	dbw 15, NIGHT_SHADE
	dbw 19, SHADOW_SNEAK
	dbw 22, FURY_SWIPES
	dbw 26, SUCKER_PUNCH
	dbw 29, SPIDER_WEB
	dbw 33, AGILITY
	dbw 36, PIN_MISSILE
	dbw 40, PSYCHIC_M
	dbw 43, POISON_JAB
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUG_BITE
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	dbw 1, SCARY_FACE
	dbw 1, CONSTRICT
	dbw 5, SCARY_FACE
	dbw 8, CONSTRICT
	dbw 12, LEECH_LIFE
	dbw 15, NIGHT_SHADE
	dbw 19, SHADOW_SNEAK
	dbw 23, FURY_SWIPES
	dbw 28, SUCKER_PUNCH
	dbw 32, SPIDER_WEB
	dbw 37, AGILITY
	dbw 41, PIN_MISSILE
	dbw 46, PSYCHIC_M
	dbw 50, POISON_JAB
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CROSS_POISON
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

ChinchouEvosAttacks:
	evolve EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, SUPERSONIC
	dbw 6, THUNDER_WAVE
	dbw 9, FLAIL
	dbw 12, WATER_GUN
	dbw 17, CONFUSE_RAY
	dbw 20, SPARK
	dbw 23, TAKE_DOWN
	dbw 28, BUBBLEBEAM
	dbw 31, SIGNAL_BEAM
	dbw 34, DISCHARGE
	dbw 39, AQUA_RING
	dbw 42, HYDRO_PUMP
	dbw 45, CHARGE
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, SUPERSONIC
	dbw 1, THUNDER_WAVE
	dbw 6, THUNDER_WAVE
	dbw 9, FLAIL
	dbw 12, WATER_GUN
	dbw 17, CONFUSE_RAY
	dbw 20, SPARK
	dbw 23, TAKE_DOWN
	dbw 27, STOCKPILE
	dbw 27, SWALLOW
	dbw 27, SPIT_UP
	dbw 30, BUBBLEBEAM
	dbw 35, SIGNAL_BEAM
	dbw 40, DISCHARGE
	dbw 47, AQUA_RING
	dbw 52, HYDRO_PUMP
	dbw 57, CHARGE
	db 0 ; no more level-up moves

PichuEvosAttacks:
	evolve EVOLVE_HAPPINESS, PIKACHU
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, CHARM
	dbw 5, TAIL_WHIP
	dbw 10, THUNDER_WAVE
	dbw 13, SWEET_KISS
	dbw 18, NASTY_PLOT
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	evolve EVOLVE_HAPPINESS, CLEFAIRY
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, CHARM
	dbw 4, ENCORE
	dbw 7, SING
	dbw 10, SWEET_KISS
	dbw 13, COPYCAT
	dbw 16, MAGICAL_LEAF
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	evolve EVOLVE_HAPPINESS, JIGGLYPUFF
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 1, CHARM
	dbw 5, DEFENSE_CURL
	dbw 9, POUND
	dbw 13, SWEET_KISS
	dbw 17, COPYCAT
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	evolve EVOLVE_HAPPINESS, TOGETIC
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, CHARM
	dbw 6, METRONOME
	dbw 10, SWEET_KISS
	dbw 15, YAWN
	dbw 19, ENCORE
	dbw 28, WISH
	dbw 33, ANCIENTPOWER
	dbw 37, SAFEGUARD
	dbw 42, BATON_PASS
	dbw 46, DOUBLE_EDGE
	dbw 51, LAST_RESORT
	db 0 ; no more level-up moves

TogeticEvosAttacks:
        dbww EVOLVE_ITEM, SHINY_STONE, TOGEKISS
        db 0 ; no more evolutions
	dbw 1, MAGICAL_LEAF
	dbw 1, GROWL
	dbw 1, CHARM
	dbw 1, METRONOME
	dbw 1, SWEET_KISS
	dbw 6, METRONOME
	dbw 10, SWEET_KISS
	dbw 15, YAWN
	dbw 19, ENCORE
	dbw 28, WISH
	dbw 33, ANCIENTPOWER
	dbw 37, SAFEGUARD
	dbw 42, BATON_PASS
	dbw 46, DOUBLE_EDGE
	dbw 51, LAST_RESORT
	db 0 ; no more level-up moves

NatuEvosAttacks:
	evolve EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 6, NIGHT_SHADE
	dbw 9, TELEPORT
	dbw 12, LUCKY_CHANT
	dbw 17, MIRACLE_EYE
	dbw 23, CONFUSE_RAY
	dbw 28, WISH
	dbw 33, PSYCHO_SHIFT
	dbw 36, FUTURE_SIGHT
	dbw 39, OMINOUS_WIND
	dbw 44, POWER_SWAP
	dbw 44, GUARD_SWAP
	dbw 47, PSYCHIC_M
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 6, NIGHT_SHADE
	dbw 9, TELEPORT
	dbw 12, LUCKY_CHANT
	dbw 17, MIRACLE_EYE
	dbw 23, CONFUSE_RAY
	dbw 27, TAILWIND
	dbw 30, WISH
	dbw 37, PSYCHO_SHIFT
	dbw 42, FUTURE_SIGHT
	dbw 47, OMINOUS_WIND
	dbw 54, POWER_SWAP
	dbw 54, GUARD_SWAP
	dbw 59, PSYCHIC_M
	db 0 ; no more level-up moves

MareepEvosAttacks:
	evolve EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, GROWL
	dbw 10, THUNDERSHOCK
	dbw 14, THUNDER_WAVE
	dbw 19, COTTON_SPORE
	dbw 23, CHARGE
	dbw 28, DISCHARGE
	dbw 32, SIGNAL_BEAM
	dbw 37, LIGHT_SCREEN
	dbw 41, POWER_GEM
	dbw 46, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	evolve EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, THUNDERSHOCK
	dbw 5, GROWL
	dbw 10, THUNDERSHOCK
	dbw 14, THUNDER_WAVE
	dbw 20, COTTON_SPORE
	dbw 25, CHARGE
	dbw 31, DISCHARGE
	dbw 36, SIGNAL_BEAM
	dbw 42, LIGHT_SCREEN
	dbw 47, POWER_GEM
	dbw 53, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FIRE_PUNCH
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, THUNDERSHOCK
	dbw 1, THUNDER_WAVE
	dbw 5, GROWL
	dbw 10, THUNDERSHOCK
	dbw 14, THUNDER_WAVE
	dbw 20, COTTON_SPORE
	dbw 25, CHARGE
	dbw 30, THUNDERPUNCH
	dbw 34, DISCHARGE
	dbw 42, SIGNAL_BEAM
	dbw 51, LIGHT_SCREEN
	dbw 59, POWER_GEM
	dbw 68, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEAF_BLADE
	dbw 1, MEGA_DRAIN
	dbw 1, SWEET_SCENT
	dbw 1, STUN_SPORE
	dbw 1, SUNNY_DAY
	dbw 23, MAGICAL_LEAF
	dbw 53, LEAF_STORM
	db 0 ; no more level-up moves

MarillEvosAttacks:
	evolve EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 2, DEFENSE_CURL
	dbw 7, TAIL_WHIP
	dbw 10, WATER_GUN
	dbw 15, ROLLOUT
	dbw 18, BUBBLEBEAM
	dbw 23, AQUA_RING
	dbw 27, DOUBLE_EDGE
	dbw 32, RAIN_DANCE
	dbw 37, AQUA_TAIL
	dbw 42, HYDRO_PUMP
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 1, TAIL_WHIP
	dbw 1, WATER_GUN
	dbw 2, DEFENSE_CURL
	dbw 7, TAIL_WHIP
	dbw 10, WATER_GUN
	dbw 15, ROLLOUT
	dbw 20, BUBBLEBEAM
	dbw 27, AQUA_RING
	dbw 33, DOUBLE_EDGE
	dbw 40, RAIN_DANCE
	dbw 47, AQUA_TAIL
	dbw 54, HYDRO_PUMP
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WOOD_HAMMER
	dbw 1, COPYCAT
	dbw 1, FLAIL
	dbw 1, LOW_KICK
	dbw 1, ROCK_THROW
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
	dbw 49, HAMMER_ARM
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLEBEAM
	dbw 1, HYPNOSIS
	dbw 1, DOUBLESLAP
	dbw 1, PERISH_SONG
	dbw 27, SWAGGER
	dbw 37, BOUNCE
	dbw 48, HYPER_VOICE
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	evolve EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 4, SYNTHESIS
	dbw 7, TAIL_WHIP
	dbw 10, TACKLE
	dbw 12, POISONPOWDER
	dbw 14, STUN_SPORE
	dbw 16, SLEEP_POWDER
	dbw 19, BULLET_SEED
	dbw 22, LEECH_SEED
	dbw 25, MEGA_DRAIN
	dbw 28, COTTON_SPORE
	dbw 31, U_TURN
	dbw 34, WORRY_SEED
	dbw 37, GIGA_DRAIN
	dbw 40, BOUNCE
	dbw 43, MEMENTO
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	evolve EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, SYNTHESIS
	dbw 1, TAIL_WHIP
	dbw 1, TACKLE
	dbw 4, SYNTHESIS
	dbw 7, TAIL_WHIP
	dbw 10, TACKLE
	dbw 12, POISONPOWDER
	dbw 14, STUN_SPORE
	dbw 16, SLEEP_POWDER
	dbw 20, BULLET_SEED
	dbw 24, LEECH_SEED
	dbw 28, MEGA_DRAIN
	dbw 32, COTTON_SPORE
	dbw 36, U_TURN
	dbw 40, WORRY_SEED
	dbw 44, GIGA_DRAIN
	dbw 48, BOUNCE
	dbw 52, MEMENTO
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, SYNTHESIS
	dbw 1, TAIL_WHIP
	dbw 1, TACKLE
	dbw 4, SYNTHESIS
	dbw 7, TAIL_WHIP
	dbw 10, TACKLE
	dbw 12, POISONPOWDER
	dbw 14, STUN_SPORE
	dbw 16, SLEEP_POWDER
	dbw 20, BULLET_SEED
	dbw 24, LEECH_SEED
	dbw 28, MEGA_DRAIN
	dbw 32, COTTON_SPORE
	dbw 36, U_TURN
	dbw 40, WORRY_SEED
	dbw 44, GIGA_DRAIN
	dbw 48, BOUNCE
	dbw 52, MEMENTO
	db 0 ; no more level-up moves

AipomEvosAttacks:
        dbbw EVOLVE_LEVEL, 32, AMBIPOM
        db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
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

SunkernEvosAttacks:
	evolve EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, GROWTH
	dbw 5, MEGA_DRAIN
	dbw 9, INGRAIN
	dbw 13, GRASSWHISTLE
	dbw 17, LEECH_SEED
	dbw 21, ENDEAVOR
	dbw 25, WORRY_SEED
	dbw 29, RAZOR_LEAF
	dbw 33, SYNTHESIS
	dbw 37, SUNNY_DAY
	dbw 41, GIGA_DRAIN
	dbw 45, SEED_BOMB
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, POUND
	dbw 1, GROWTH
	dbw 5, MEGA_DRAIN
	dbw 9, INGRAIN
	dbw 13, GRASSWHISTLE
	dbw 17, LEECH_SEED
	dbw 21, BULLET_SEED
	dbw 25, WORRY_SEED
	dbw 29, RAZOR_LEAF
	dbw 33, PETAL_DANCE
	dbw 37, SUNNY_DAY
	dbw 41, SOLARBEAM
	dbw 43, LEAF_STORM
	db 0 ; no more level-up moves

YanmaEvosAttacks:
        dbbw EVOLVE_LEVEL, 33, YANMEGA
        db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, FORESIGHT
	dbw 6, QUICK_ATTACK
	dbw 11, DOUBLE_TEAM
	dbw 14, SONICBOOM
	dbw 17, DETECT
	dbw 22, SUPERSONIC
	dbw 27, UPROAR
	dbw 30, PURSUIT
	dbw 33, ANCIENTPOWER
	dbw 38, HYPNOSIS
	dbw 43, WING_ATTACK
	dbw 46, SCREECH
	dbw 49, U_TURN
	dbw 54, AIR_SLASH
	dbw 57, BUG_BUZZ
	db 0 ; no more level-up moves

WooperEvosAttacks:
	evolve EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, TAIL_WHIP
	dbw 5, MUD_SPORT
	dbw 9, MUD_SHOT
	dbw 15, SLAM
	dbw 19, MUD_BOMB
	dbw 23, AMNESIA
	dbw 29, YAWN
	dbw 33, EARTHQUAKE
	dbw 37, RAIN_DANCE
	dbw 43, MIST
	dbw 43, HAZE
	dbw 47, MUDDY_WATER
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, TAIL_WHIP
	dbw 1, MUD_SPORT
	dbw 5, MUD_SPORT
	dbw 9, MUD_SHOT
	dbw 15, SLAM
	dbw 19, MUD_BOMB
	dbw 24, AMNESIA
	dbw 31, YAWN
	dbw 36, EARTHQUAKE
	dbw 41, RAIN_DANCE
	dbw 48, MIST
	dbw 48, HAZE
	dbw 53, MUDDY_WATER
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TAIL_WHIP
	dbw 1, TACKLE
	dbw 8, SAND_ATTACK
	dbw 15, CONFUSION
	dbw 22, QUICK_ATTACK
	dbw 29, SWIFT
	dbw 36, PSYBEAM
	dbw 43, FUTURE_SIGHT
	dbw 50, LAST_RESORT
	dbw 57, PSYCH_UP
	dbw 64, PSYCHIC_M
	dbw 71, MORNING_SUN
	dbw 78, POWER_SWAP
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TAIL_WHIP
	dbw 1, TACKLE
	dbw 8, SAND_ATTACK
	dbw 15, PURSUIT
	dbw 22, QUICK_ATTACK
	dbw 29, CONFUSE_RAY
	dbw 36, FAINT_ATTACK
	dbw 43, ASSURANCE
	dbw 50, LAST_RESORT
	dbw 57, MEAN_LOOK
	dbw 64, SCREECH
	dbw 71, MOONLIGHT
	dbw 78, GUARD_SWAP
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
        dbww EVOLVE_ITEM, DUSK_STONE, HONCHKROW
        db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, ASTONISH
	dbw 5, PURSUIT
	dbw 11, HAZE
	dbw 15, WING_ATTACK
	dbw 21, NIGHT_SHADE
	dbw 25, ASSURANCE
	dbw 31, TAUNT
	dbw 35, FAINT_ATTACK
	dbw 41, MEAN_LOOK
	dbw 45, SUCKER_PUNCH
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POWER_GEM
	dbw 1, HIDDEN_POWER
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
	dbw 39, NASTY_PLOT
	dbw 43, SWAGGER
	dbw 48, PSYCHIC_M
	dbw 53, TRUMP_CARD
	dbw 57, PSYCH_UP
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
        dbww EVOLVE_ITEM, DUSK_STONE, MISMAGIUS
        db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, PSYWAVE
	dbw 5, SPITE
	dbw 10, ASTONISH
	dbw 14, CONFUSE_RAY
	dbw 19, MEAN_LOOK
	dbw 23, PSYBEAM
	dbw 28, PAIN_SPLIT
	dbw 32, PAYBACK
	dbw 37, SHADOW_BALL
	dbw 41, PERISH_SONG
	dbw 46, GRUDGE
	dbw 50, POWER_GEM
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COUNTER
	dbw 1, MIRROR_COAT
	dbw 1, SAFEGUARD
	dbw 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POWER_SWAP
	dbw 1, GUARD_SWAP
	dbw 1, ASTONISH
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, CONFUSION
	dbw 5, ODOR_SLEUTH
	dbw 10, STOMP
	dbw 14, AGILITY
	dbw 19, PSYBEAM
	dbw 23, BATON_PASS
	dbw 28, ASSURANCE
	dbw 32, DOUBLE_HIT
	dbw 37, PSYCHIC_M
	dbw 41, ZEN_HEADBUTT
	dbw 46, CRUNCH
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	evolve EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, PROTECT
	dbw 6, SELFDESTRUCT
	dbw 9, BUG_BITE
	dbw 12, TAKE_DOWN
	dbw 17, RAPID_SPIN
	dbw 20, BIDE
	dbw 23, NATURAL_GIFT
	dbw 28, SPIKES
	dbw 31, PAYBACK
	dbw 34, EXPLOSION
	dbw 39, IRON_DEFENSE
	dbw 42, GYRO_BALL
	dbw 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TOXIC_SPIKES
	dbw 1, TACKLE
	dbw 1, PROTECT
	dbw 1, SELFDESTRUCT
	dbw 1, BUG_BITE
	dbw 6, SELFDESTRUCT
	dbw 9, BUG_BITE
	dbw 12, TAKE_DOWN
	dbw 17, RAPID_SPIN
	dbw 20, BIDE
	dbw 23, NATURAL_GIFT
	dbw 28, SPIKES
	dbw 31, MIRROR_SHOT
	dbw 33, PAYBACK
	dbw 38, EXPLOSION
	dbw 45, IRON_DEFENSE
	dbw 50, GYRO_BALL
	dbw 55, DOUBLE_EDGE
	dbw 62, MAGNET_RISE
	dbw 67, ZAP_CANNON
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, RAGE
	dbw 5, DEFENSE_CURL
	dbw 9, YAWN
	dbw 13, GLARE
	dbw 17, ROLLOUT
	dbw 21, SPITE
	dbw 25, PURSUIT
	dbw 29, SCREECH
	dbw 33, ROOST
	dbw 37, TAKE_DOWN
	dbw 41, ANCIENTPOWER
	dbw 45, DIG
	dbw 49, ENDEAVOR
	dbw 53, FLAIL
	db 0 ; no more level-up moves

GligarEvosAttacks:
        dbww EVOLVE_ITEM, RAZOR_FANG, GLISCOR
        db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 5, SAND_ATTACK
	dbw 9, HARDEN
	dbw 12, KNOCK_OFF
	dbw 16, QUICK_ATTACK
	dbw 20, FURY_CUTTER
	dbw 23, FAINT_ATTACK
	dbw 27, SCREECH
	dbw 31, SLASH
	dbw 34, SWORDS_DANCE
	dbw 38, U_TURN
	dbw 42, X_SCISSOR
	dbw 45, GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDER_FANG
	dbw 1, ICE_FANG
	dbw 1, FIRE_FANG
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
	dbw 46, CRUNCH
	dbw 49, DOUBLE_EDGE
	dbw 54, STONE_EDGE
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	evolve EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	dbw 1, ICE_FANG
	dbw 1, FIRE_FANG
	dbw 1, THUNDER_FANG
	dbw 1, TACKLE
	dbw 1, SCARY_FACE
	dbw 1, TAIL_WHIP
	dbw 1, CHARM
	dbw 7, BITE
	dbw 13, LICK
	dbw 19, HEADBUTT
	dbw 25, ROAR
	dbw 31, RAGE
	dbw 37, TAKE_DOWN
	dbw 43, PAYBACK
	dbw 49, CRUNCH
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ICE_FANG
	dbw 1, FIRE_FANG
	dbw 1, THUNDER_FANG
	dbw 1, TACKLE
	dbw 1, SCARY_FACE
	dbw 1, TAIL_WHIP
	dbw 1, CHARM
	dbw 7, BITE
	dbw 13, LICK
	dbw 19, HEADBUTT
	dbw 27, ROAR
	dbw 35, RAGE
	dbw 43, TAKE_DOWN
	dbw 51, PAYBACK
	dbw 59, CRUNCH
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPIKES
	dbw 1, TACKLE
	dbw 1, POISON_STING
	dbw 9, HARDEN
	dbw 9, MINIMIZE
	dbw 13, WATER_GUN
	dbw 17, ROLLOUT
	dbw 21, TOXIC_SPIKES
	dbw 25, STOCKPILE
	dbw 25, SPIT_UP
	dbw 29, REVENGE
	dbw 33, BRINE
	dbw 37, PIN_MISSILE
	dbw 41, TAKE_DOWN
	dbw 45, AQUA_TAIL
	dbw 49, POISON_JAB
	dbw 53, DESTINY_BOND
	dbw 57, HYDRO_PUMP
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BULLET_PUNCH
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 5, FOCUS_ENERGY
	dbw 9, PURSUIT
	dbw 13, FALSE_SWIPE
	dbw 17, AGILITY
	dbw 21, METAL_CLAW
	dbw 25, FURY_CUTTER
	dbw 29, SLASH
	dbw 33, RAZOR_WIND
	dbw 37, IRON_DEFENSE
	dbw 41, X_SCISSOR
	dbw 45, NIGHT_SLASH
	dbw 49, DOUBLE_HIT
	dbw 53, IRON_HEAD
	dbw 57, SWORDS_DANCE
	dbw 61, FEINT
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WITHDRAW
	dbw 1, CONSTRICT
	dbw 1, BIDE
	dbw 9, ENCORE
	dbw 14, SAFEGUARD
	dbw 22, WRAP
	dbw 27, REST
	dbw 35, GASTRO_ACID
	dbw 40, BUG_BITE
	dbw 48, POWER_TRICK
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, NIGHT_SLASH
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 1, HORN_ATTACK
	dbw 1, ENDURE
	dbw 7, FURY_ATTACK
	dbw 13, AERIAL_ACE
	dbw 19, BRICK_BREAK
	dbw 25, COUNTER
	dbw 31, TAKE_DOWN
	dbw 37, CLOSE_COMBAT
	dbw 43, REVERSAL
	dbw 49, FEINT
	dbw 55, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
        dbww EVOLVE_ITEM, RAZOR_CLAW, WEAVILE
        db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, TAUNT
	dbw 8, QUICK_ATTACK
	dbw 10, SCREECH
	dbw 14, FAINT_ATTACK
	dbw 21, FURY_SWIPES
	dbw 24, AGILITY
	dbw 28, ICY_WIND
	dbw 35, SLASH
	dbw 38, BEAT_UP
	dbw 42, METAL_CLAW
	dbw 49, ICE_SHARD
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	evolve EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	dbw 1, COVET
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, LICK
	dbw 1, FAKE_TEARS
	dbw 8, FURY_SWIPES
	dbw 15, FAINT_ATTACK
	dbw 22, SWEET_SCENT
	dbw 29, SLASH
	dbw 36, CHARM
	dbw 43, REST
	dbw 43, SNORE
	dbw 50, THRASH
	dbw 57, FLING
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COVET
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, LICK
	dbw 1, FAKE_TEARS
	dbw 8, FURY_SWIPES
	dbw 15, FAINT_ATTACK
	dbw 22, SWEET_SCENT
	dbw 29, SLASH
	dbw 38, SCARY_FACE
	dbw 47, REST
	dbw 49, SNORE
	dbw 58, THRASH
	dbw 67, HAMMER_ARM
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	evolve EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	dbw 1, YAWN
	dbw 1, SMOG
	dbw 8, EMBER
	dbw 11, ROCK_THROW
	dbw 16, HARDEN
	dbw 23, RECOVER
	dbw 26, ANCIENTPOWER
	dbw 31, AMNESIA
	dbw 38, LAVA_PLUME
	dbw 41, ROCK_SLIDE
	dbw 46, BODY_SLAM
	dbw 53, FLAMETHROWER
	dbw 56, EARTH_POWER
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, YAWN
	dbw 1, SMOG
	dbw 1, EMBER
	dbw 1, ROCK_THROW
	dbw 8, EMBER
	dbw 11, ROCK_THROW
	dbw 16, HARDEN
	dbw 23, RECOVER
	dbw 26, ANCIENTPOWER
	dbw 31, AMNESIA
	dbw 40, LAVA_PLUME
	dbw 45, ROCK_SLIDE
	dbw 52, BODY_SLAM
	dbw 61, FLAMETHROWER
	dbw 66, EARTH_POWER
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	evolve EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, ODOR_SLEUTH
	dbw 4, MUD_SPORT
	dbw 8, POWDER_SNOW
	dbw 13, MUD_SLAP
	dbw 16, ENDURE
	dbw 20, MUD_BOMB
	dbw 25, ICY_WIND
	dbw 28, ICE_SHARD
	dbw 32, TAKE_DOWN
	dbw 37, EARTHQUAKE
	dbw 40, MIST
	dbw 44, BLIZZARD
	dbw 49, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
        dbww EVOLVE_ITEM, ICE_STONE, MAMOSWINE
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
	dbw 25, ICY_WIND
	dbw 28, ICE_FANG
	dbw 32, TAKE_DOWN
	dbw 33, FURY_ATTACK
	dbw 40, EARTHQUAKE
	dbw 48, MIST
	dbw 56, BLIZZARD
	dbw 65, AMNESIA
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 8, BUBBLE
	dbw 13, RECOVER
	dbw 16, REFRESH
	dbw 20, ROCK_BLAST
	dbw 25, BUBBLEBEAM
	dbw 28, LUCKY_CHANT
	dbw 32, ANCIENTPOWER
	dbw 37, AQUA_RING
	dbw 40, SPIKE_CANNON
	dbw 44, POWER_GEM
	dbw 48, MIRROR_COAT
	dbw 53, EARTH_POWER
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	evolve EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 6, LOCK_ON
	dbw 10, PSYBEAM
	dbw 14, AURORA_BEAM
	dbw 19, BUBBLEBEAM
	dbw 23, FOCUS_ENERGY
	dbw 27, BULLET_SEED
	dbw 32, WATER_PULSE
	dbw 36, SIGNAL_BEAM
	dbw 40, ICE_BEAM
	dbw 45, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GUNK_SHOT
	dbw 1, ROCK_BLAST
	dbw 1, WATER_GUN
	dbw 1, CONSTRICT
	dbw 1, PSYBEAM
	dbw 1, AURORA_BEAM
	dbw 6, CONSTRICT
	dbw 10, PSYBEAM
	dbw 14, AURORA_BEAM
	dbw 19, BUBBLEBEAM
	dbw 23, FOCUS_ENERGY
	dbw 25, OCTAZOOKA
	dbw 29, BULLET_SEED
	dbw 36, WRING_OUT
	dbw 42, SIGNAL_BEAM
	dbw 48, ICE_BEAM
	dbw 55, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PRESENT
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PSYBEAM
	dbw 1, BULLET_SEED
	dbw 1, SIGNAL_BEAM
	dbw 1, TACKLE
	dbw 1, BUBBLE
	dbw 1, SUPERSONIC
	dbw 1, BUBBLEBEAM
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

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, PECK
	dbw 6, SAND_ATTACK
	dbw 9, SWIFT
	dbw 12, AGILITY
	dbw 17, FURY_ATTACK
	dbw 20, FEINT
	dbw 23, AIR_CUTTER
	dbw 28, SPIKES
	dbw 31, METAL_SOUND
	dbw 34, STEEL_WING
	dbw 39, AIR_SLASH
	dbw 42, SLASH
	dbw 45, NIGHT_SLASH
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	evolve EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, EMBER
	dbw 4, HOWL
	dbw 9, SMOG
	dbw 14, ROAR
	dbw 17, BITE
	dbw 22, ODOR_SLEUTH
	dbw 27, BEAT_UP
	dbw 30, FIRE_FANG
	dbw 35, FAINT_ATTACK
	dbw 40, EMBARGO
	dbw 43, FLAMETHROWER
	dbw 48, CRUNCH
	dbw 53, NASTY_PLOT
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDER_FANG
	dbw 1, LEER
	dbw 1, EMBER
	dbw 1, HOWL
	dbw 1, SMOG
	dbw 4, HOWL
	dbw 9, SMOG
	dbw 14, ROAR
	dbw 17, BITE
	dbw 22, ODOR_SLEUTH
	dbw 28, BEAT_UP
	dbw 32, FIRE_FANG
	dbw 38, FAINT_ATTACK
	dbw 44, EMBARGO
	dbw 48, FLAMETHROWER
	dbw 54, CRUNCH
	dbw 60, NASTY_PLOT
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, YAWN
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

PhanpyEvosAttacks:
	evolve EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	dbw 1, ODOR_SLEUTH
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, DEFENSE_CURL
	dbw 6, FLAIL
	dbw 10, TAKE_DOWN
	dbw 15, ROLLOUT
	dbw 19, NATURAL_GIFT
	dbw 24, SLAM
	dbw 28, ENDURE
	dbw 33, CHARM
	dbw 37, LAST_RESORT
	dbw 42, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FIRE_FANG
	dbw 1, THUNDER_FANG
	dbw 1, HORN_ATTACK
	dbw 1, GROWL
	dbw 1, DEFENSE_CURL
	dbw 1, FLAIL
	dbw 6, RAPID_SPIN
	dbw 10, KNOCK_OFF
	dbw 15, ROLLOUT
	dbw 19, MAGNITUDE
	dbw 24, SLAM
	dbw 25, FURY_ATTACK
	dbw 31, ASSURANCE
	dbw 39, SCARY_FACE
	dbw 46, EARTHQUAKE
	dbw 54, GIGA_IMPACT
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
        dbww EVOLVE_TRADE, DUBIOUS_DISC, PORYGON_Z
        db 0 ; no more evolutions
	dbw 1, CONVERSION2
	dbw 1, TACKLE
	dbw 1, CONVERSION
	dbw 1, DEFENSE_CURL
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
	dbw 67, HYPER_BEAM
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 3, LEER
	dbw 7, ASTONISH
	dbw 10, HYPNOSIS
	dbw 13, STOMP
	dbw 16, SAND_ATTACK
	dbw 21, TAKE_DOWN
	dbw 23, CONFUSE_RAY
	dbw 27, CALM_MIND
	dbw 33, ROLE_PLAY
	dbw 38, ZEN_HEADBUTT
	dbw 43, IMPRISON
	dbw 49, CAPTIVATE
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SKETCH
	dbw 11, SKETCH
	dbw 21, SKETCH
	dbw 31, SKETCH
	dbw 41, SKETCH
	dbw 51, SKETCH
	dbw 61, SKETCH
	dbw 71, SKETCH
	dbw 81, SKETCH
	dbw 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	evolve EVOLVE_STAT, ATK_LT_DEF, 20, HITMONCHAN
	evolve EVOLVE_STAT, ATK_GT_DEF, 20, HITMONLEE
	evolve EVOLVE_STAT, ATK_EQ_DEF, 20, HITMONTOP
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, FAKE_OUT
	dbw 1, FORESIGHT
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, REVENGE
	dbw 1, ROLLING_KICK
	dbw 6, FOCUS_ENERGY
	dbw 10, PURSUIT
	dbw 15, QUICK_ATTACK
	dbw 19, TRIPLE_KICK
	dbw 24, RAPID_SPIN
	dbw 28, COUNTER
	dbw 33, FEINT
	dbw 37, AGILITY
	dbw 42, GYRO_BALL
	dbw 46, DETECT
	dbw 51, CLOSE_COMBAT
	dbw 55, ENDEAVOR
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	evolve EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 5, LICK
	dbw 8, SWEET_KISS
	dbw 11, POWDER_SNOW
	dbw 15, CONFUSION
	dbw 18, SING
	dbw 21, MEAN_LOOK
	dbw 25, FAKE_TEARS
	dbw 28, LUCKY_CHANT
	dbw 31, AVALANCHE
	dbw 35, PSYCHIC_M
	dbw 38, COPYCAT
	dbw 41, PERISH_SONG
	dbw 45, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	evolve EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 7, THUNDERSHOCK
	dbw 10, LOW_KICK
	dbw 16, SWIFT
	dbw 19, SHOCK_WAVE
	dbw 25, LIGHT_SCREEN
	dbw 28, THUNDERPUNCH
	dbw 34, DISCHARGE
	dbw 37, THUNDERBOLT
	dbw 43, SCREECH
	dbw 46, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	evolve EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	dbw 1, SMOG
	dbw 1, LEER
	dbw 7, EMBER
	dbw 10, SMOKESCREEN
	dbw 16, FAINT_ATTACK
	dbw 19, FIRE_SPIN
	dbw 25, CONFUSE_RAY
	dbw 28, FIRE_PUNCH
	dbw 34, LAVA_PLUME
	dbw 37, FLAMETHROWER
	dbw 43, SUNNY_DAY
	dbw 46, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 3, GROWL
	dbw 5, DEFENSE_CURL
	dbw 8, STOMP
	dbw 11, MILK_DRINK
	dbw 15, BIDE
	dbw 19, ROLLOUT
	dbw 24, BODY_SLAM
	dbw 29, ZEN_HEADBUTT
	dbw 35, CAPTIVATE
	dbw 41, GYRO_BALL
	dbw 48, HEAL_BELL
	dbw 55, WAKE_UP_SLAP
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
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

RaikouEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 8, THUNDERSHOCK
	dbw 15, ROAR
	dbw 22, QUICK_ATTACK
	dbw 29, SPARK
	dbw 36, REFLECT
	dbw 43, CRUNCH
	dbw 50, THUNDER_FANG
	dbw 57, DISCHARGE
	dbw 64, EXTRASENSORY
	dbw 71, RAIN_DANCE
	dbw 78, CALM_MIND
	dbw 85, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 8, EMBER
	dbw 15, ROAR
	dbw 22, FIRE_SPIN
	dbw 29, STOMP
	dbw 36, FLAMETHROWER
	dbw 43, SWAGGER
	dbw 50, FIRE_FANG
	dbw 57, LAVA_PLUME
	dbw 64, EXTRASENSORY
	dbw 71, FIRE_BLAST
	dbw 78, CALM_MIND
	dbw 85, ERUPTION
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 8, BUBBLEBEAM
	dbw 15, RAIN_DANCE
	dbw 22, GUST
	dbw 29, AURORA_BEAM
	dbw 36, MIST
	dbw 43, MIRROR_COAT
	dbw 50, ICE_FANG
	dbw 57, TAILWIND
	dbw 64, EXTRASENSORY
	dbw 71, HYDRO_PUMP
	dbw 78, CALM_MIND
	dbw 85, BLIZZARD
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	evolve EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 5, SANDSTORM
	dbw 10, SCREECH
	dbw 14, ROCK_SLIDE
	dbw 19, SCARY_FACE
	dbw 23, THRASH
	dbw 28, DARK_PULSE
	dbw 32, PAYBACK
	dbw 37, CRUNCH
	dbw 41, EARTHQUAKE
	dbw 46, STONE_EDGE
	dbw 50, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	evolve EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 1, SANDSTORM
	dbw 1, SCREECH
	dbw 5, SANDSTORM
	dbw 10, SCREECH
	dbw 14, ROCK_SLIDE
	dbw 19, SCARY_FACE
	dbw 23, THRASH
	dbw 28, DARK_PULSE
	dbw 34, PAYBACK
	dbw 41, CRUNCH
	dbw 47, EARTHQUAKE
	dbw 54, STONE_EDGE
	dbw 60, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDER_FANG
	dbw 1, ICE_FANG
	dbw 1, FIRE_FANG
	dbw 1, BITE
	dbw 1, LEER
	dbw 1, SANDSTORM
	dbw 1, SCREECH
	dbw 5, SANDSTORM
	dbw 10, SCREECH
	dbw 14, ROCK_SLIDE
	dbw 19, SCARY_FACE
	dbw 23, THRASH
	dbw 28, DARK_PULSE
	dbw 34, PAYBACK
	dbw 41, CRUNCH
	dbw 47, EARTHQUAKE
	dbw 54, STONE_EDGE
	dbw 70, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WHIRLWIND
	dbw 9, SAFEGUARD
	dbw 15, GUST
	dbw 23, RECOVER
	dbw 29, HYDRO_PUMP
	dbw 37, RAIN_DANCE
	dbw 43, SWIFT
	dbw 51, NATURAL_GIFT
	dbw 57, ANCIENTPOWER
	dbw 65, EXTRASENSORY
	dbw 71, PUNISHMENT
	dbw 79, FUTURE_SIGHT
	dbw 85, AEROBLAST
	dbw 93, CALM_MIND
	dbw 99, SKY_ATTACK
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WHIRLWIND
	dbw 9, SAFEGUARD
	dbw 15, GUST
	dbw 23, RECOVER
	dbw 29, FIRE_BLAST
	dbw 37, SUNNY_DAY
	dbw 43, SWIFT
	dbw 51, NATURAL_GIFT
	dbw 57, ANCIENTPOWER
	dbw 65, EXTRASENSORY
	dbw 71, PUNISHMENT
	dbw 79, FUTURE_SIGHT
	dbw 85, SACRED_FIRE
	dbw 93, CALM_MIND
	dbw 99, SKY_ATTACK
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEECH_SEED
	dbw 1, CONFUSION
	dbw 1, RECOVER
	dbw 1, HEAL_BELL
	dbw 10, SAFEGUARD
	dbw 19, MAGICAL_LEAF
	dbw 28, ANCIENTPOWER
	dbw 37, BATON_PASS
	dbw 46, NATURAL_GIFT
	dbw 55, HEAL_BLOCK
	dbw 64, FUTURE_SIGHT
	dbw 73, HEALING_WISH
	dbw 82, LEAF_STORM
	dbw 91, PERISH_SONG
	db 0 ; no more level-up moves

ENDSECTION
