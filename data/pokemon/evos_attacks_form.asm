SECTION "Evolutions and Attacks 4", ROMX

FormsEvosAttacksPointers::
	dw LaprasPartnerEvosAttacks
        dw RattataAlolaEvosAttacks
        dw RaticateAlolaEvosAttacks
        dw RaichuAlolaEvosAttacks
        dw SandshrewAlolaEvosAttacks
        dw SandslashAlolaEvosAttacks
        dw DiglettAlolaEvosAttacks
        dw DugtrioAlolaEvosAttacks
        dw GrimerAlolaEvosAttacks
        dw MukAlolaEvosAttacks
        dw GeodudeAlolaEvosAttacks
        dw GravelerAlolaEvosAttacks
        dw GolemAlolaEvosAttacks
        dw VulpixAlolaEvosAttacks
        dw NinetalesAlolaEvosAttacks
        dw MarowakAlolaEvosAttacks
        dw ExeggutorAlolaEvosAttacks
        dw MeowthAlolaEvosAttacks
        dw PersianAlolaEvosAttacks
        dw PonytaGalarEvosAttacks
        dw RapidashGalarEvosAttacks
        dw FarfetchDGalarEvosAttacks
        dw MrMimeGalarEvosAttacks
        dw WeezingGalarEvosAttacks
        dw ZigzagoonGalarEvosAttacks
        dw LinooneGalarEvosAttacks
        dw StunfiskGalarEvosAttacks
        dw CorsolaGalarEvosAttacks
        dw MeowthGalarEvosAttacks
        dw SlowpokeGalarEvosAttacks
        dw SlowbroGalarEvosAttacks
        dw SlowkingGalarEvosAttacks
        dw ArticunoGalarEvosAttacks
        dw ZapdosGalarEvosAttacks
        dw MoltresGalarEvosAttacks
        dw GrowlitheHisuiEvosAttacks
        dw ArcanineHisuiEvosAttacks
        dw VoltorbHisuiEvosAttacks
        dw ElectrodeHisuiEvosAttacks
        dw QwilfishHisuiEvosAttacks
        dw SneaselHisuiEvosAttacks
        dw ZoruaHisuiEvosAttacks
        dw ZoroarkHisuiEvosAttacks
        dw SliggooHisuiEvosAttacks
        dw GoodraHisuiEvosAttacks
        dw TyphlosionHisuiEvosAttacks
        dw WooperPaldeaEvosAttacks
        dw TaurosCombatEvosAttacks
        dw TaurosBlazeEvosAttacks
        dw TaurosAquaEvosAttacks
        dw CaterpieValenciaEvosAttacks
        dw MetapodValenciaEvosAttacks
        dw ButterfreeValenciaEvosAttacks
        dw OddishValenciaEvosAttacks
        dw GloomValenciaEvosAttacks
        dw VileplumeValenciaEvosAttacks
        dw BellossomValenciaEvosAttacks
        dw BellsproutValenciaEvosAttacks
        dw WeepinbellValenciaEvosAttacks
        dw VictreebelValenciaEvosAttacks
        dw ParasValenciaEvosAttacks
        dw ParasectValenciaEvosAttacks
        dw DratiniPartnerEvosAttacks
        dw EeveePartnerEvosAttacks
        dw PikachuPartnerEvosAttacks
        dw DragonairPartnerEvosAttacks
        dw DragonitePartnerEvosAttacks
        dw OnixCrystalEvosAttacks
        dw SteelixCrystalEvosAttacks
        dw UrsalunaBloodmoonEvosAttacks
        dw RockruffOwnTempoEvosAttacks
        dw LycanrocMidnightEvosAttacks
        dw LycanrocDuskEvosAttacks
.IndirectEnd::

LaprasPartnerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, GROWL
	dbw 1, SING
	dbw 8, MIST
	dbw 15, BODY_SLAM
	dbw 22, CONFUSE_RAY
	dbw 29, PERISH_SONG
	dbw 36, ICE_BEAM
	dbw 43, RAIN_DANCE
	dbw 50, SAFEGUARD
	dbw 57, HYDRO_PUMP
	db 0 ; no more level-up moves

RattataAlolaEvosAttacks:
        evolve EVOLVE_LEVEL, 20, RATICATE_ALOLA
        db 0 ; no more evolutions
        dbw 1, TACKLE
        dbw 1, TAIL_WHIP
        dbw 4, QUICK_ATTACK
        dbw 7, FOCUS_ENERGY
        dbw 10, BITE
        dbw 13, PURSUIT
        dbw 16, HYPER_FANG
        dbw 19, ASSURANCE
        dbw 22, CRUNCH
        dbw 25, SUCKER_PUNCH
        dbw 28, SUPER_FANG
        dbw 31, DOUBLE_EDGE
        dbw 34, ENDEAVOR
        db 0 ; no more level-up moves

RaticateAlolaEvosAttacks:
        db 0 ; no more evolutions
        dbw 0, SCARY_FACE
        dbw 1, SWORDS_DANCE
        dbw 1, TACKLE
        dbw 1, TAIL_WHIP
        dbw 1, QUICK_ATTACK
        dbw 1, FOCUS_ENERGY
        dbw 10, BITE
        dbw 13, PURSUIT
        dbw 16, HYPER_FANG
        dbw 19, ASSURANCE
        dbw 24, CRUNCH
        dbw 29, SUCKER_PUNCH
        dbw 34, SUPER_FANG
        dbw 39, DOUBLE_EDGE
        dbw 44, ENDEAVOR
        db 0 ; no more level-up moves

RaichuAlolaEvosAttacks:
        db 0 ; no more evolutions
        dbw 0, PSYCHIC_M
        dbw 1, TAIL_WHIP
        dbw 1, THUNDERSHOCK
        dbw 1, THUNDERBOLT
        dbw 1, QUICK_ATTACK
        ; dbw 1, SPEED_SWAP
        db 0 ; no more level-up moves

SandshrewAlolaEvosAttacks:
        evolve EVOLVE_ITEM, ICE_STONE, SANDSLASH_ALOLA
        db 0 ; no more evolutions
        dbw 1, SCRATCH
        dbw 1, DEFENSE_CURL
        dbw 3, BIDE
        dbw 5, POWDER_SNOW
        dbw 7, ICE_BALL
        dbw 9, RAPID_SPIN
        dbw 11, FURY_CUTTER
        dbw 14, METAL_CLAW
        dbw 17, SWIFT
        dbw 20, FURY_SWIPES
        dbw 23, IRON_DEFENSE
        dbw 26, SLASH
        dbw 30, IRON_HEAD
        dbw 34, GYRO_BALL
        dbw 38, SWORDS_DANCE
        dbw 42, HAIL
        dbw 46, BLIZZARD
        db 0 ; no more level-up moves

SandslashAlolaEvosAttacks:
        db 0 ; no more evolutions
        dbw 0, ICICLE_SPEAR
        dbw 1, DEFENSE_CURL
        dbw 1, SLASH
        dbw 1, METAL_CLAW
        dbw 1, ICE_BALL
        dbw 1, METAL_BURST
        ; dbw 1, ICICLE_CRASH
        db 0 ; no more level-up moves

DiglettAlolaEvosAttacks:
        evolve EVOLVE_LEVEL, 26, DUGTRIO_ALOLA
        db 0 ; no more evolutions
        dbw 1, SAND_ATTACK
        dbw 1, METAL_CLAW
        dbw 4, GROWL
        dbw 7, ASTONISH
        dbw 10, MUD_SLAP
        dbw 14, MAGNITUDE
        dbw 18, BULLDOZE
        dbw 22, SUCKER_PUNCH
        dbw 25, MUD_BOMB
        dbw 28, EARTH_POWER
        dbw 31, DIG
        dbw 35, IRON_HEAD
        dbw 39, EARTHQUAKE
        dbw 43, FISSURE
        db 0 ; no more level-up moves

DugtrioAlolaEvosAttacks:
        db 0 ; no more evolutions
        dbw 0, SAND_TOMB
        dbw 1, SAND_ATTACK
        dbw 1, GROWL
        dbw 1, TRI_ATTACK
        dbw 1, METAL_CLAW
        dbw 1, NIGHT_SLASH
        ; dbw 1, ROTOTILLER
        dbw 7, ASTONISH
        dbw 10, MUD_SLAP
        dbw 14, MAGNITUDE
        dbw 18, BULLDOZE
        dbw 22, SUCKER_PUNCH
        dbw 25, MUD_BOMB
        dbw 30, EARTH_POWER
        dbw 35, DIG
        dbw 41, IRON_HEAD
        dbw 47, EARTHQUAKE
        dbw 53, FISSURE
        db 0 ; no more level-up moves

GrimerAlolaEvosAttacks:
        evolve EVOLVE_LEVEL, 38, MUK_ALOLA
        db 0 ; no more evolutions
        dbw 1, POUND
        dbw 1, POISON_GAS
        dbw 4, HARDEN
        dbw 7, BITE
        dbw 12, DISABLE
        ; dbw 15, ACID_SPRAY
        dbw 18, POISON_FANG
        dbw 21, MINIMIZE
        dbw 26, FLING
        dbw 29, KNOCK_OFF
        dbw 32, CRUNCH
        dbw 37, SCREECH
        dbw 40, GUNK_SHOT
        dbw 43, ACID_ARMOR
        ; dbw 46, BELCH
        dbw 48, MEMENTO
        db 0 ; no more level-up moves

MukAlolaEvosAttacks:
        db 0 ; no more evolutions
        ; dbw 0, VENOM_DRENCH
        dbw 1, POUND
        dbw 1, BITE
        dbw 1, HARDEN
        dbw 1, POISON_GAS
        dbw 12, DISABLE
        ; dbw 15, ACID_SPRAY
        dbw 18, POISON_FANG
        dbw 21, MINIMIZE
        dbw 26, FLING
        dbw 29, KNOCK_OFF
        dbw 32, CRUNCH
        dbw 37, SCREECH
        dbw 40, GUNK_SHOT
        dbw 46, ACID_ARMOR
        ; dbw 52, BELCH
        dbw 57, MEMENTO
        db 0 ; no more level-up moves

GeodudeAlolaEvosAttacks:
        evolve EVOLVE_LEVEL, 25, GRAVELER_ALOLA
        db 0 ; no more evolutions
        dbw 1, TACKLE
        dbw 1, DEFENSE_CURL
        dbw 4, CHARGE
        dbw 6, ROCK_POLISH
        dbw 10, ROLLOUT
        dbw 12, SPARK
        dbw 16, ROCK_THROW
        ; dbw 18, SMACK_DOWN
        dbw 22, THUNDERPUNCH
        dbw 24, SELFDESTRUCT
        dbw 28, STEALTH_ROCK
        dbw 30, ROCK_BLAST
        dbw 34, DISCHARGE
        dbw 36, EXPLOSION
        dbw 40, DOUBLE_EDGE
        dbw 42, STONE_EDGE
        db 0 ; no more level-up moves

GravelerAlolaEvosAttacks:
        evolve EVOLVE_TRADE, -1, GOLEM_ALOLA
        db 0 ; no more evolutions
        dbw 1, TACKLE
        dbw 1, DEFENSE_CURL
        dbw 1, CHARGE
        dbw 1, ROCK_POLISH
        dbw 10, ROLLOUT
        dbw 12, SPARK
        dbw 16, ROCK_THROW
        ; dbw 18, SMACK_DOWN
        dbw 22, THUNDERPUNCH
        dbw 24, SELFDESTRUCT
        dbw 30, STEALTH_ROCK
        dbw 34, ROCK_BLAST
        dbw 40, DISCHARGE
        dbw 44, EXPLOSION
        dbw 50, DOUBLE_EDGE
        dbw 54, STONE_EDGE
        db 0 ; no more level-up moves

GolemAlolaEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        dbw 1, DEFENSE_CURL
        dbw 1, CHARGE
        dbw 1, ROCK_POLISH
        ; dbw 1, HEAVY_SLAM
        ; dbw 10, STEAMROLLER
        dbw 12, SPARK
        dbw 16, ROCK_THROW
        ; dbw 18, SMACK_DOWN
        dbw 22, THUNDERPUNCH
        dbw 24, SELFDESTRUCT
        dbw 30, STEALTH_ROCK
        dbw 34, ROCK_BLAST
        dbw 40, DISCHARGE
        dbw 44, EXPLOSION
        dbw 50, DOUBLE_EDGE
        dbw 54, STONE_EDGE
        db 0 ; no more level-up moves

VulpixAlolaEvosAttacks:
        evolve EVOLVE_ITEM, ICE_STONE, NINETALES_ALOLA
        db 0 ; no more evolutions
        dbw 1, POWDER_SNOW
        dbw 4, TAIL_WHIP
        dbw 7, ROAR
        ; dbw 9, BABYDOLLEYES
        dbw 10, ICE_SHARD
        dbw 12, CONFUSE_RAY
        dbw 15, ICY_WIND
        dbw 18, PAYBACK
        dbw 20, MIST
        dbw 23, FAINT_ATTACK
        ; dbw 26, HEX
        dbw 28, AURORA_BEAM
        dbw 31, EXTRASENSORY
        dbw 34, SAFEGUARD
        dbw 36, ICE_BEAM
        dbw 39, IMPRISON
        dbw 42, BLIZZARD
        dbw 44, GRUDGE
        dbw 47, CAPTIVATE
        dbw 50, SHEER_COLD
        db 0 ; no more level-up moves

NinetalesAlolaEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, DAZZLING_GLEAM
        dbw 1, ICE_BEAM
        dbw 1, CONFUSE_RAY
        dbw 1, SAFEGUARD
        dbw 1, IMPRISON
        dbw 1, NASTY_PLOT
        dbw 1, ICE_SHARD
        db 0 ; no more level-up moves

MarowakAlolaEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TAIL_WHIP
        dbw 1, GROWL
        dbw 1, BONE_CLUB
        dbw 1, FLAME_WHEEL
        dbw 13, LEER
        ; dbw 17, HEX
        dbw 21, BONEMERANG
        dbw 23, WILL_O_WISP
        ; dbw 27, SHADOW_BONE
        dbw 33, THRASH
        dbw 37, FLING
        ; dbw 43, STOMPINGTANTRUM
        dbw 49, ENDEAVOR
        dbw 53, FLARE_BLITZ
        ; dbw 59, RETALIATE
        dbw 65, BONE_RUSH
        db 0 ; no more level-up moves

ExeggutorAlolaEvosAttacks:
        db 0 ; no more evolutions
        ; dbw 0, DRAGONHAMMER
        dbw 1, CONFUSION
        dbw 1, HYPNOSIS
        dbw 1, BARRAGE
        dbw 1, SEED_BOMB
        ; dbw 17, PSYSHOCK
        dbw 27, EGG_BOMB
        dbw 37, WOOD_HAMMER
        dbw 47, LEAF_STORM
        db 0 ; no more level-up moves

MeowthAlolaEvosAttacks:
        evolve EVOLVE_HAPPINESS, PERSIAN_ALOLA
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
        dbw 50, FEINT
        dbw 55, DARK_PULSE
        db 0 ; no more level-up moves

PersianAlolaEvosAttacks:
        db 0 ; no more evolutions
        dbw 0, SWIFT
        dbw 1, SCRATCH
        dbw 1, BITE
        dbw 1, GROWL
        dbw 1, FAKE_OUT
        dbw 1, SWITCHEROO
        ; dbw 1, QUASH
        ; dbw 1, PLAY_ROUGH
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
        dbw 65, FEINT
        dbw 69, DARK_PULSE
        db 0 ; no more level-up moves

PonytaGalarEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, GROWL
        dbw 1, TACKLE
        dbw 5, TAIL_WHIP
        dbw 10, CONFUSION
        ; dbw 15, FAIRY_WIND
        dbw 20, AGILITY
        dbw 25, PSYBEAM
        dbw 30, STOMP
        ; dbw 35, HEAL_PULSE
        dbw 41, TAKE_DOWN
        dbw 45, DAZZLING_GLEAM
        dbw 50, PSYCHIC_M
        dbw 55, HEALING_WISH
        db 0 ; no more level-up moves

RapidashGalarEvosAttacks:
        db 0 ; no more evolutions
        dbw 0, PSYCHO_CUT
        dbw 1, CONFUSION
        dbw 1, GROWL
        dbw 1, MEGAHORN
        dbw 1, QUICK_ATTACK
        dbw 1, TACKLE
        dbw 1, TAIL_WHIP
        ; dbw 15, FAIRY_WIND
        dbw 20, AGILITY
        dbw 25, PSYBEAM
        dbw 30, STOMP
        ; dbw 35, HEAL_PULSE
        dbw 43, TAKE_DOWN
        dbw 49, DAZZLING_GLEAM
        dbw 56, PSYCHIC_M
        dbw 63, HEALING_WISH
        db 0 ; no more level-up moves

FarfetchDGalarEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, PECK
        dbw 1, SAND_ATTACK
        dbw 5, LEER
        dbw 10, FURY_CUTTER
        dbw 15, ROCK_SMASH
        ; dbw 20, BRUTAL_SWING
        dbw 25, DETECT
        dbw 30, KNOCK_OFF
        dbw 35, DEFOG
        dbw 40, BRICK_BREAK
        dbw 45, SWORDS_DANCE
        dbw 50, SLAM
        dbw 55, LEAF_BLADE
        ; dbw 60, FINAL_GAMBIT
        dbw 65, BRAVE_BIRD
        db 0 ; no more level-up moves

MrMimeGalarEvosAttacks:
        evolve EVOLVE_LEVEL, 42, MR_RIME
        db 0 ; no more evolutions
        dbw 1, BATON_PASS
        dbw 1, COPYCAT
        dbw 1, DAZZLING_GLEAM
        dbw 1, ENCORE
        dbw 1, ICE_SHARD
        dbw 1, LIGHT_SCREEN
        dbw 1, MIMIC
        ; dbw 1, MISTY_TERRAIN
        dbw 1, POUND
        dbw 1, PROTECT
        dbw 1, RAPID_SPIN
        dbw 1, RECYCLE
        dbw 1, REFLECT
        dbw 1, ROLE_PLAY
        dbw 1, SAFEGUARD
        dbw 12, CONFUSION
        ; dbw 16, ALLY_SWITCH
        dbw 20, ICY_WIND
        dbw 24, DOUBLE_KICK
        dbw 28, PSYBEAM
        dbw 32, HYPNOSIS
        dbw 36, MIRROR_COAT
        dbw 40, SUCKER_PUNCH
        ; dbw 44, FREEZE_DRY
        dbw 48, PSYCHIC_M
        dbw 52, TEETER_DANCE
        db 0 ; no more level-up moves

WeezingGalarEvosAttacks:
        db 0 ; no more evolutions
        dbw 0, DOUBLE_HIT
        ; dbw 1, AROMATIC_MIST
        dbw 1, DEFOG
        ; dbw 1, FAIRY_WIND
        dbw 1, HAZE
        dbw 1, HEAT_WAVE
        dbw 1, POISON_GAS
        dbw 1, SMOG
        dbw 1, SMOKESCREEN
        ; dbw 1, STRANGE_STEAM
        dbw 1, TACKLE
        ; dbw 12, CLEAR_SMOG
        dbw 16, ASSURANCE
        dbw 20, SLUDGE
        dbw 24, AROMATHERAPY
        dbw 28, SELFDESTRUCT
        dbw 32, SLUDGE_BOMB
        dbw 38, TOXIC
        ; dbw 44, BELCH
        dbw 50, EXPLOSION
        dbw 56, MEMENTO
        dbw 62, DESTINY_BOND
        ; dbw 68, MISTY_TERRAIN
        db 0 ; no more level-up moves

ZigzagoonGalarEvosAttacks:
        evolve EVOLVE_LEVEL, 20, LINOONE_GALAR
        db 0 ; no more evolutions
        dbw 1, LEER
        dbw 1, TACKLE
        dbw 3, SAND_ATTACK
        dbw 6, LICK
        dbw 9, SNARL
        dbw 12, HEADBUTT
        ; dbw 15, BABY_DOLL_EYES
        dbw 18, PIN_MISSILE
        dbw 21, REST
        dbw 24, TAKE_DOWN
        dbw 27, SCARY_FACE
        dbw 30, COUNTER
        dbw 33, TAUNT
        dbw 36, DOUBLE_EDGE
        db 0 ; no more level-up moves

LinooneGalarEvosAttacks:
        evolve EVOLVE_LEVEL, 35, OBSTAGOON
        db 0 ; no more evolutions
        dbw 0, NIGHT_SLASH
        ; dbw 1, BABY_DOLL_EYES
        dbw 1, LEER
        dbw 1, LICK
        dbw 1, PIN_MISSILE
        dbw 1, SAND_ATTACK
        dbw 1, SWITCHEROO
        dbw 1, TACKLE
        dbw 9, SNARL
        dbw 12, HEADBUTT
        ; dbw 15, HONE_CLAWS
        dbw 18, FURY_SWIPES
        dbw 23, REST
        dbw 28, TAKE_DOWN
        dbw 33, SCARY_FACE
        dbw 38, COUNTER
        dbw 43, TAUNT
        dbw 48, DOUBLE_EDGE
        db 0 ; no more level-up moves

StunfiskGalarEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, METAL_CLAW
        dbw 1, MUD_SLAP
        dbw 1, TACKLE
        dbw 1, WATER_GUN
        dbw 5, ENDURE
        dbw 10, MUD_SHOT
        dbw 15, REVENGE
        dbw 20, METAL_SOUND
        dbw 25, SUCKER_PUNCH
        dbw 30, IRON_DEFENSE
        dbw 35, BOUNCE
        dbw 40, MUDDY_WATER
        ; dbw 45, SNAP_TRAP
        dbw 50, FLAIL
        dbw 55, FISSURE
        db 0 ; no more level-up moves

CorsolaGalarEvosAttacks:
        evolve EVOLVE_LEVEL, 38, CURSOLA
        db 0 ; no more evolutions
        dbw 1, HARDEN
        dbw 1, TACKLE
        dbw 5, ASTONISH
        dbw 10, DISABLE
        dbw 15, SPITE
        dbw 20, ANCIENTPOWER
        ; dbw 25, HEX
        dbw 30, CURSE
        ; dbw 35, STRENGTH_SAP
        dbw 40, POWER_GEM
        dbw 45, NIGHT_SHADE
        dbw 50, GRUDGE
        dbw 55, MIRROR_COAT
        db 0 ; no more level-up moves

MeowthGalarEvosAttacks:
        evolve EVOLVE_LEVEL, 28, PERRSERKER
        db 0 ; no more evolutions
        dbw 1, FAKE_OUT
        dbw 1, GROWL
        ; dbw 4, HONE_CLAWS
        dbw 8, SCRATCH
        dbw 12, PAY_DAY
        dbw 16, METAL_CLAW
        dbw 20, TAUNT
        dbw 24, SWAGGER
        dbw 29, FURY_SWIPES
        dbw 32, SCREECH
        dbw 36, SLASH
        dbw 40, METAL_SOUND
        dbw 44, THRASH
        db 0 ; no more level-up moves

SlowpokeGalarEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, CURSE
        dbw 1, TACKLE
        dbw 3, GROWL
        dbw 6, ACID
        dbw 9, YAWN
        dbw 12, CONFUSION
        dbw 15, DISABLE
        dbw 18, WATER_PULSE
        dbw 21, HEADBUTT
        dbw 24, ZEN_HEADBUTT
        dbw 27, AMNESIA
        dbw 30, SURF
        dbw 33, SLACK_OFF
        dbw 36, PSYCHIC_M
        dbw 39, PSYCH_UP
        dbw 42, RAIN_DANCE
        ; dbw 45, HEAL_PULSE
        db 0 ; no more level-up moves

SlowbroGalarEvosAttacks:
        db 0 ; no more evolutions
        ; dbw 0, SHELL_SIDE_ARM
        dbw 1, ACID
        dbw 1, CURSE
        dbw 1, GROWL
        dbw 1, TACKLE
        dbw 1, WITHDRAW
        dbw 9, YAWN
        dbw 12, CONFUSION
        dbw 15, DISABLE
        dbw 18, WATER_PULSE
        dbw 21, HEADBUTT
        dbw 24, ZEN_HEADBUTT
        dbw 27, AMNESIA
        dbw 30, SURF
        dbw 33, SLACK_OFF
        dbw 36, PSYCHIC_M
        dbw 39, PSYCH_UP
        dbw 42, RAIN_DANCE
        ; dbw 45, HEAL_PULSE
        db 0 ; no more level-up moves

SlowkingGalarEvosAttacks:
        db 0 ; no more evolutions
        ; dbw 0, EERIE_SPELL
        dbw 1, ACID
        dbw 1, CURSE
        dbw 1, GROWL
        dbw 1, NASTY_PLOT
        dbw 1, POWER_GEM
        dbw 1, SWAGGER
        dbw 1, TACKLE
        dbw 9, YAWN
        dbw 12, CONFUSION
        dbw 15, DISABLE
        dbw 18, WATER_PULSE
        dbw 21, HEADBUTT
        dbw 24, ZEN_HEADBUTT
        dbw 27, AMNESIA
        dbw 30, SURF
        dbw 33, SLACK_OFF
        dbw 36, PSYCHIC_M
        dbw 39, PSYCH_UP
        dbw 42, RAIN_DANCE
        ; dbw 45, HEAL_PULSE
        db 0 ; no more level-up moves

ArticunoGalarEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, GUST
        dbw 1, PSYCHO_SHIFT
        dbw 5, CONFUSION
        dbw 10, REFLECT
        dbw 15, HYPNOSIS
        dbw 20, AGILITY
        dbw 25, ANCIENTPOWER
        dbw 30, TAILWIND
        dbw 35, PSYCHO_CUT
        dbw 40, RECOVER
        ; dbw 45, FREEZING_GLARE
        dbw 50, DREAM_EATER
        ; dbw 55, HURRICANE
        dbw 60, DOUBLE_TEAM
        dbw 60, MIND_READER
        dbw 65, FUTURE_SIGHT
        dbw 70, TRICK_ROOM
        db 0 ; no more level-up moves

ZapdosGalarEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, FOCUS_ENERGY
        dbw 1, PECK
        dbw 5, ROCK_SMASH
        dbw 10, LIGHT_SCREEN
        dbw 15, PLUCK
        dbw 20, AGILITY
        dbw 25, ANCIENTPOWER
        dbw 30, BRICK_BREAK
        dbw 35, DRILL_PECK
        ; dbw 40, QUICK_GUARD
        ; dbw 45, THUNDEROUS_KICK
        dbw 50, BULK_UP
        dbw 55, COUNTER
        dbw 60, DETECT
        dbw 65, CLOSE_COMBAT
        dbw 70, REVERSAL
        db 0 ; no more level-up moves

MoltresGalarEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, GUST
        dbw 1, LEER
        dbw 5, PAYBACK
        dbw 10, SAFEGUARD
        dbw 15, WING_ATTACK
        dbw 20, AGILITY
        dbw 25, ANCIENTPOWER
        dbw 30, SUCKER_PUNCH
        dbw 35, AIR_SLASH
        ; dbw 40, AFTER_YOU
        ; dbw 45, FIERY_WRATH
        dbw 50, NASTY_PLOT
        ; dbw 55, HURRICANE
        dbw 60, ENDURE
        dbw 65, MEMENTO
        dbw 70, SKY_ATTACK
        db 0 ; no more level-up moves

DratiniPartnerEvosAttacks:
        dbbw EVOLVE_LEVEL, 30, DRAGONAIR ;DRAGONAIR_PARTNER
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 7, THUNDER_WAVE
	dbw 11, TWISTER
	dbw 15, DRAGONBREATH
	dbw 19, BARRIER
	dbw 21, SLAM
	dbw 25, AGILITY
	dbw 27, HAZE
	dbw 31, DRAGON_RAGE ; DRAGON_TAIL
	dbw 35, AQUA_TAIL
	dbw 41, DRAGON_RAGE ; DRAGON_RUSH
	dbw 45, SAFEGUARD
	dbw 51, DRAGON_DANCE
	dbw 55, OUTRAGE
	dbw 61, HYPER_BEAM
	dbw 65, HYDRO_PUMP
	dbw 70, EXTREMESPEED
	db 0 ; no more level-up moves
	
EeveePartnerEvosAttacks:
	db 0 ; no more evolutions
	; dbw 1, HELPING_HAND
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, GROWL
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, BATON_PASS
	dbw 42, TAKE_DOWN
	db 0 ; no more level-up moves

PikachuPartnerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, THUNDERSHOCK
	dbw 6, TAIL_WHIP
	dbw 8, THUNDER_WAVE
	dbw 11, QUICK_ATTACK
	dbw 15, DOUBLE_TEAM
	dbw 20, SLAM
	dbw 26, THUNDERBOLT
	dbw 33, AGILITY
	dbw 41, THUNDER
	dbw 50, LIGHT_SCREEN
	db 0 ; no more level-up moves
	
DragonairPartnerEvosAttacks:
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

DragonitePartnerEvosAttacks:
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

GrowlitheHisuiEvosAttacks:
        evolve EVOLVE_ITEM, FIRE_STONE, ARCANINE_HISUI
        db 0 ; no more evolutions
        dbw 1, EMBER
        dbw 1, LEER
        dbw 4, HOWL
        dbw 8, BITE
        dbw 12, FLAME_WHEEL
        ; dbw 16, HELPING_HAND
        dbw 24, FIRE_FANG
        ; dbw 28, RETALIATE
        dbw 32, CRUNCH
        dbw 36, TAKE_DOWN
        dbw 40, FLAMETHROWER
        dbw 44, ROAR
        dbw 48, ROCK_SLIDE
        dbw 52, REVERSAL
        dbw 56, FLARE_BLITZ
        db 0 ; no more level-up moves

ArcanineHisuiEvosAttacks:
        db 0 ; no more evolutions
        dbw 0, EXTREMESPEED
        dbw 1, AGILITY
        dbw 1, BITE
        dbw 1, CRUNCH
        dbw 1, EMBER
        dbw 1, FIRE_FANG
        dbw 1, FLAME_WHEEL
        dbw 1, FLARE_BLITZ
        ; dbw 1, HELPING_HAND
        dbw 1, HOWL
        dbw 1, LEER
        ; dbw 1, RETALIATE
        dbw 1, REVERSAL
        dbw 1, ROAR
        dbw 1, ROCK_SLIDE
        dbw 1, ROCK_THROW
        dbw 1, TAKE_DOWN
        dbw 5, FLAMETHROWER
        ; dbw 64, RAGING_FURY
        db 0 ; no more level-up moves

VoltorbHisuiEvosAttacks:
        evolve EVOLVE_ITEM, LEAF_STONE, ELECTRODE_HISUI
        db 0 ; no more evolutions
        dbw 1, TACKLE
        dbw 1, CHARGE
        dbw 4, THUNDERSHOCK
        dbw 6, STUN_SPORE
        dbw 9, BULLET_SEED
        dbw 11, ROLLOUT
        dbw 13, SCREECH
        dbw 16, CHARGE_BEAM
        dbw 20, SWIFT
        ; dbw 22, ELECTRO_BALL
        dbw 26, SELFDESTRUCT
        dbw 29, ENERGY_BALL
        dbw 34, SEED_BOMB
        dbw 34, DISCHARGE
        dbw 41, EXPLOSION
        dbw 46, GYRO_BALL
        ; dbw 50, GRASSY_TERRAIN
        db 0 ; no more level-up moves

ElectrodeHisuiEvosAttacks:
        db 0 ; no more evolutions
        ; dbw 0, CHLOROBLAST
        dbw 1, TACKLE
        dbw 1, CHARGE
        dbw 4, THUNDERSHOCK
        dbw 6, STUN_SPORE
        dbw 9, BULLET_SEED
        dbw 11, ROLLOUT
        dbw 13, SCREECH
        dbw 16, CHARGE_BEAM
        dbw 20, SWIFT
        ; dbw 22, ELECTRO_BALL
        dbw 26, SELFDESTRUCT
        dbw 29, ENERGY_BALL
        dbw 34, SEED_BOMB
        dbw 34, DISCHARGE
        dbw 41, EXPLOSION
        dbw 46, GYRO_BALL
        ; dbw 50, GRASSY_TERRAIN
        db 0 ; no more level-up moves

QwilfishHisuiEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, POISON_STING
        dbw 1, TACKLE
        dbw 4, HARDEN
        dbw 8, BITE
        ; dbw 12, FELL_STINGER
        dbw 16, MINIMIZE
        dbw 20, SPIKES
        dbw 24, BRINE
        ; dbw 28, BARB_BARRAGE
        dbw 32, PIN_MISSILE
        dbw 36, TOXIC_SPIKES
        dbw 40, STOCKPILE
        dbw 40, SPIT_UP
        dbw 44, TOXIC
        dbw 48, CRUNCH
        dbw 52, ACUPRESSURE
        dbw 56, DESTINY_BOND
        db 0 ; no more level-up moves

SneaselHisuiEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, SCRATCH
        dbw 1, LEER
        dbw 1, ROCK_SMASH
        dbw 6, TAUNT
        dbw 12, QUICK_ATTACK
        dbw 18, METAL_CLAW
        dbw 24, POISON_JAB
        dbw 30, BRICK_BREAK
        ; dbw 36, HONE_CLAWS
        dbw 42, SLASH
        dbw 48, AGILITY
        dbw 54, SCREECH
        dbw 60, CLOSE_COMBAT
        db 0 ; no more level-up moves

ZoruaHisuiEvosAttacks:
        evolve EVOLVE_LEVEL, 30, ZOROARK_HISUI
        db 0 ; no more evolutions
        dbw 1, SCRATCH
        dbw 1, LEER
        dbw 4, TORMENT
        ; dbw 8, HONE_CLAWS
        dbw 12, SHADOW_SNEAK
        dbw 16, CURSE
        dbw 20, TAUNT
        dbw 24, KNOCK_OFF
        dbw 28, SPITE
        dbw 32, AGILITY
        dbw 36, SHADOW_BALL
        ; dbw 40, BITTER_MALICE
        dbw 44, NASTY_PLOT
        ; dbw 48, FOUL_PLAY
        db 0 ; no more level-up moves

ZoroarkHisuiEvosAttacks:
        db 0 ; no more evolutions
        dbw 0, SHADOW_CLAW
        ; dbw 1, HONE_CLAWS
        dbw 1, SCRATCH
        dbw 1, LEER
        dbw 1, TORMENT
        dbw 1, U_TURN
        dbw 12, SHADOW_SNEAK
        dbw 16, CURSE
        dbw 20, TAUNT
        dbw 24, KNOCK_OFF
        dbw 28, SPITE
        dbw 34, AGILITY
        dbw 40, SHADOW_BALL
        ; dbw 46, BITTER_MALICE
        dbw 52, NASTY_PLOT
        ; dbw 58, FOUL_PLAY
        db 0 ; no more level-up moves

SliggooHisuiEvosAttacks:
        evolve EVOLVE_LEVEL, 50, GOODRA_HISUI
        db 0 ; no more evolutions
        ; dbw 0, SHELTER
        dbw 1, TACKLE
        dbw 1, WATER_GUN
        dbw 1, ABSORB
        dbw 1, ACID_ARMOR
        ; dbw 1, DRAGON_BREATH
        dbw 15, PROTECT
        dbw 20, FLAIL
        dbw 25, WATER_PULSE
        dbw 30, RAIN_DANCE
        dbw 35, DRAGON_PULSE
        dbw 43, CURSE
        dbw 49, IRON_HEAD
        dbw 56, MUDDY_WATER
        db 0 ; no more level-up moves

GoodraHisuiEvosAttacks:
        db 0 ; no more evolutions
        dbw 0, IRON_TAIL
        dbw 1, TACKLE
        dbw 1, WATER_GUN
        dbw 1, ABSORB
        ; dbw 1, DRAGON_BREATH
        dbw 1, FEINT
        ; dbw 1, ACID_SPRAY
        ; dbw 1, TEARFUL_LOOK
        ; dbw 1, SHELTER
        dbw 15, PROTECT
        dbw 20, FLAIL
        dbw 25, WATER_PULSE
        dbw 30, RAIN_DANCE
        dbw 35, DRAGON_PULSE
        dbw 43, CURSE
        dbw 49, BODY_SLAM
        dbw 49, IRON_HEAD
        dbw 58, MUDDY_WATER
        ; dbw 67, HEAVY_SLAM
        db 0 ; no more level-up moves

TyphlosionHisuiEvosAttacks:
        db 0 ; no more evolutions
        ; dbw 0, INFERNAL_PARADE
        dbw 1, TACKLE
        dbw 1, DOUBLE_EDGE
        dbw 1, LEER
        dbw 1, EMBER
        dbw 1, SMOKESCREEN
        dbw 1, ERUPTION
        dbw 1, GYRO_BALL
        dbw 13, QUICK_ATTACK
        dbw 20, FLAME_WHEEL
        dbw 24, DEFENSE_CURL
        dbw 31, SWIFT
        ; dbw 35, FLAME_CHARGE
        dbw 43, LAVA_PLUME
        dbw 48, FLAMETHROWER
        ; dbw 56, INFERNO
        dbw 61, ROLLOUT
        dbw 74, OVERHEAT
        db 0 ; no more level-up moves

WooperPaldeaEvosAttacks:
        evolve EVOLVE_LEVEL, 20, CLODSIRE
        db 0 ; no more evolutions
        dbw 1, MUD_SHOT
        dbw 1, TAIL_WHIP
        dbw 4, TACKLE
        dbw 8, POISON_TAIL
        dbw 12, TOXIC_SPIKES
        dbw 16, SLAM
        dbw 21, YAWN
        dbw 24, POISON_JAB
        ; dbw 28, SLUDGE_WAVE
        dbw 32, AMNESIA
        dbw 36, TOXIC
        dbw 40, EARTHQUAKE
        db 0 ; no more level-up moves

TaurosCombatEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        dbw 1, TAIL_WHIP
        dbw 5, WORK_UP
        dbw 10, DOUBLE_KICK
        dbw 15, ASSURANCE
        dbw 20, HEADBUTT
        dbw 25, SCARY_FACE
        dbw 30, ZEN_HEADBUTT
        ; dbw 35, RAGING_BULL
        dbw 40, REST
        dbw 45, SWAGGER
        dbw 50, THRASH
        dbw 55, DOUBLE_EDGE
        dbw 60, CLOSE_COMBAT
        db 0 ; no more level-up moves

TaurosBlazeEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        dbw 1, TAIL_WHIP
        dbw 5, WORK_UP
        dbw 10, DOUBLE_KICK
        ; dbw 15, FLAME_CHARGE
        dbw 20, HEADBUTT
        dbw 25, SCARY_FACE
        dbw 30, ZEN_HEADBUTT
        ; dbw 35, RAGING_BULL
        dbw 40, REST
        dbw 45, SWAGGER
        dbw 50, THRASH
        dbw 55, FLARE_BLITZ
        dbw 60, CLOSE_COMBAT
        db 0 ; no more level-up moves

TaurosAquaEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, TACKLE
        dbw 1, TAIL_WHIP
        dbw 5, WORK_UP
        dbw 10, DOUBLE_KICK
        dbw 15, AQUA_JET
        dbw 20, HEADBUTT
        dbw 25, SCARY_FACE
        dbw 30, ZEN_HEADBUTT
        ; dbw 35, RAGING_BULL
        dbw 40, REST
        dbw 45, SWAGGER
        dbw 50, THRASH
        ; dbw 55, WAVE_CRASH
        dbw 60, CLOSE_COMBAT
        db 0 ; no more level-up moves

CaterpieValenciaEvosAttacks:
        evolve EVOLVE_LEVEL, 7, METAPOD_VALENCIA
        db 0 ; no more evolutions
        dbw 1, TACKLE
        dbw 1, STRING_SHOT
        dbw 15, BUG_BITE
        db 0 ; no more level-up moves

MetapodValenciaEvosAttacks:
        evolve EVOLVE_LEVEL, 10, BUTTERFREE_VALENCIA
        db 0 ; no more evolutions
        dbw 1, HARDEN
        dbw 7, HARDEN
        db 0 ; no more level-up moves

ButterfreeValenciaEvosAttacks:
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

OddishValenciaEvosAttacks:
        evolve EVOLVE_LEVEL, 21, GLOOM_VALENCIA
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

GloomValenciaEvosAttacks:
        evolve EVOLVE_ITEM, LEAF_STONE, VILEPLUME_VALENCIA
        evolve EVOLVE_ITEM, SUN_STONE, BELLOSSOM_VALENCIA
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

VileplumeValenciaEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, MEGA_DRAIN
        dbw 1, AROMATHERAPY
        dbw 1, STUN_SPORE
        dbw 1, POISONPOWDER
        dbw 53, PETAL_DANCE
        dbw 65, SOLARBEAM
        db 0 ; no more level-up moves

BellossomValenciaEvosAttacks:
        db 0 ; no more evolutions
        dbw 1, LEAF_BLADE
        dbw 1, MEGA_DRAIN
        dbw 1, SWEET_SCENT
        dbw 1, STUN_SPORE
        dbw 1, SUNNY_DAY
        dbw 23, MAGICAL_LEAF
        dbw 53, LEAF_STORM
        db 0 ; no more level-up moves

BellsproutValenciaEvosAttacks:
        evolve EVOLVE_LEVEL, 21, WEEPINBELL_VALENCIA
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

WeepinbellValenciaEvosAttacks:
        evolve EVOLVE_ITEM, LEAF_STONE, VICTREEBEL_VALENCIA
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

VictreebelValenciaEvosAttacks:
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

ParasValenciaEvosAttacks:
        evolve EVOLVE_LEVEL, 24, PARASECT_VALENCIA
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

ParasectValenciaEvosAttacks:
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

OnixCrystalEvosAttacks:
        evolve EVOLVE_TRADE, METAL_COAT, STEELIX_CRYSTAL
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

SteelixCrystalEvosAttacks:
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

UrsalunaBloodmoonEvosAttacks:
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

RockruffOwnTempoEvosAttacks:
        evolve EVOLVE_LEVEL, 25, LYCANROC_DUSK
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

LycanrocMidnightEvosAttacks:
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

LycanrocDuskEvosAttacks:
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

NoEvosAttacks4:
        db 0 ; no more evolutions
        db 0 ; no more level-up moves

ENDSECTION
