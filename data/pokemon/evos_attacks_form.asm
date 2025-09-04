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
	dw DratiniPartnerEvosAttacks
	dw EeveePartnerEvosAttacks
	dw PikachuPartnerEvosAttacks
	dw DragonairPartnerEvosAttacks
	dw DragonitePartnerEvosAttacks
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
	dbw 35, DRAGON_RAGE ; AQUA_TAIL
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

ENDSECTION
