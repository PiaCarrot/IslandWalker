; battle_anim_struct members (see macros/ram.asm)
rsreset
DEF BATTLEANIMSTRUCT_INDEX           rb ; 00
DEF BATTLEANIMSTRUCT_OAMFLAGS        rb ; 01
DEF BATTLEANIMSTRUCT_FIX_Y           rb ; 02
DEF BATTLEANIMSTRUCT_FRAMESET_ID     rw ; 03
DEF BATTLEANIMSTRUCT_FUNCTION        rb ; 04
DEF BATTLEANIMSTRUCT_PALETTE         rb ; 05
DEF BATTLEANIMSTRUCT_TILEID          rb ; 06
DEF BATTLEANIMOBJ_LENGTH EQU _RS - 1 ; discount BATTLEANIMSTRUCT_INDEX
DEF BATTLEANIMSTRUCT_XCOORD          rb ; 07
DEF BATTLEANIMSTRUCT_YCOORD          rb ; 08
DEF BATTLEANIMSTRUCT_XOFFSET         rb ; 09
DEF BATTLEANIMSTRUCT_YOFFSET         rb ; 0a
DEF BATTLEANIMSTRUCT_PARAM           rb ; 0b
DEF BATTLEANIMSTRUCT_DURATION        rb ; 0c
DEF BATTLEANIMSTRUCT_FRAME           rb ; 0d
DEF BATTLEANIMSTRUCT_JUMPTABLE_INDEX rb ; 0e
DEF BATTLEANIMSTRUCT_VAR1            rb ; 0f
DEF BATTLEANIMSTRUCT_VAR2            rb ; 10
                                     rb_skip 6
DEF BATTLEANIMSTRUCT_LENGTH EQU _RS
DEF NUM_BATTLE_ANIM_STRUCTS EQU 10 ; see wActiveAnimObjects

; wBattleAnimTileDict size (see wram.asm)
DEF NUM_BATTLEANIMTILEDICT_ENTRIES EQU 5

; Start tile for battle animation graphics
DEF BATTLEANIM_BASE_TILE EQU 7 * 7  ; Maximum size of a pokemon picture

; BattleAnimObjects indexes (see data/battle_anims/objects.asm)
	const_def
	const BATTLE_ANIM_OBJ_HIT_BIG_YFIX        ; 00
	const BATTLE_ANIM_OBJ_HIT_YFIX            ; 01
	const BATTLE_ANIM_OBJ_HIT_SMALL_YFIX      ; 02
	const BATTLE_ANIM_OBJ_HIT_BIG             ; 03
	const BATTLE_ANIM_OBJ_HIT                 ; 04
	const BATTLE_ANIM_OBJ_HIT_SMALL           ; 05
	const BATTLE_ANIM_OBJ_PUNCH               ; 06
	const BATTLE_ANIM_OBJ_KICK                ; 07
	const BATTLE_ANIM_OBJ_PALM                ; 08
	const BATTLE_ANIM_OBJ_FANG                ; 09
	const BATTLE_ANIM_OBJ_PUNCH_SHAKE         ; 0a
	const BATTLE_ANIM_OBJ_EMBER               ; 0b
	const BATTLE_ANIM_OBJ_DRAGON_RAGE         ; 0c
	const BATTLE_ANIM_OBJ_FLAMETHROWER        ; 0d
	const BATTLE_ANIM_OBJ_FIRE_SPIN           ; 0e
	const BATTLE_ANIM_OBJ_FIRE_BLAST          ; 0f
	const BATTLE_ANIM_OBJ_BURNED              ; 10
	const BATTLE_ANIM_OBJ_BLIZZARD            ; 11
	const BATTLE_ANIM_OBJ_ICE                 ; 12
	const BATTLE_ANIM_OBJ_ICE_BEAM            ; 13
	const BATTLE_ANIM_OBJ_RAZOR_LEAF          ; 14
	const BATTLE_ANIM_OBJ_POKE_BALL           ; 15
	const BATTLE_ANIM_OBJ_POKE_BALL_BLOCKED   ; 16
	const BATTLE_ANIM_OBJ_EXPLOSION1          ; 17
	const BATTLE_ANIM_OBJ_EXPLOSION2          ; 18
	const BATTLE_ANIM_OBJ_ACID                ; 19
	const BATTLE_ANIM_OBJ_SLUDGE              ; 1a
	const BATTLE_ANIM_OBJ_BETA_BALL_POOF      ; 1b
	const BATTLE_ANIM_OBJ_BALL_POOF           ; 1c
	const BATTLE_ANIM_OBJ_BIG_ROCK            ; 1d
	const BATTLE_ANIM_OBJ_SMALL_ROCK          ; 1e
	const BATTLE_ANIM_OBJ_STRENGTH            ; 1f
	const BATTLE_ANIM_OBJ_SEISMIC_TOSS        ; 20
	const BATTLE_ANIM_OBJ_BUBBLE              ; 21
	const BATTLE_ANIM_OBJ_SURF                ; 22
	const BATTLE_ANIM_OBJ_SING                ; 23
	const BATTLE_ANIM_OBJ_WATER_GUN           ; 24
	const BATTLE_ANIM_OBJ_HYDRO_PUMP          ; 25
	const BATTLE_ANIM_OBJ_POWDER              ; 26
	const BATTLE_ANIM_OBJ_BEAM                ; 27
	const BATTLE_ANIM_OBJ_BEAM_TIP            ; 28
	const BATTLE_ANIM_OBJ_ICE_BUILDUP         ; 29
	const BATTLE_ANIM_OBJ_FROZEN              ; 2a
	const BATTLE_ANIM_OBJ_MASTER_BALL_SPARKLE ; 2b
	const BATTLE_ANIM_OBJ_RECOVER             ; 2c
	const BATTLE_ANIM_OBJ_THUNDER_CENTER      ; 2d
	const BATTLE_ANIM_OBJ_THUNDER_LEFT        ; 2e
	const BATTLE_ANIM_OBJ_THUNDER_RIGHT       ; 2f
	const BATTLE_ANIM_OBJ_THUNDER_WAVE        ; 30
	const BATTLE_ANIM_OBJ_THUNDERBOLT_SPARKS  ; 31
	const BATTLE_ANIM_OBJ_THUNDERBOLT_CORE    ; 32
	const BATTLE_ANIM_OBJ_THUNDERSHOCK_SPARKS ; 33
	const BATTLE_ANIM_OBJ_THUNDERSHOCK_CORE   ; 34
	const BATTLE_ANIM_OBJ_CLAMP               ; 35
	const BATTLE_ANIM_OBJ_BITE                ; 36
	const BATTLE_ANIM_OBJ_CUT_DOWN_LEFT       ; 37
	const BATTLE_ANIM_OBJ_CUT_DOWN_RIGHT      ; 38
	const BATTLE_ANIM_OBJ_CUT_UP_RIGHT        ; 39
	const BATTLE_ANIM_OBJ_CUT_LONG_DOWN_LEFT  ; 3a
	const BATTLE_ANIM_OBJ_CUT_LONG_DOWN_RIGHT ; 3b
	const BATTLE_ANIM_OBJ_SOLAR_BEAM_CHARGE   ; 3c
	const BATTLE_ANIM_OBJ_ABSORB_CENTER       ; 3d
	const BATTLE_ANIM_OBJ_GUST                ; 3e
	const BATTLE_ANIM_OBJ_VINE_WHIP1          ; 3f
	const BATTLE_ANIM_OBJ_VINE_WHIP2          ; 40
	const BATTLE_ANIM_OBJ_RAZOR_WIND1         ; 41
	const BATTLE_ANIM_OBJ_RAZOR_WIND2         ; 42
	const BATTLE_ANIM_OBJ_SONICBOOM_JP        ; 43
	const BATTLE_ANIM_OBJ_WARP                ; 44
	const BATTLE_ANIM_OBJ_ABSORB              ; 45
	const BATTLE_ANIM_OBJ_EGG                 ; 46
	const BATTLE_ANIM_OBJ_FOCUS               ; 47
	const BATTLE_ANIM_OBJ_BIND1               ; 48
	const BATTLE_ANIM_OBJ_BIND2               ; 49
	const BATTLE_ANIM_OBJ_LEECH_SEED          ; 4a
	const BATTLE_ANIM_OBJ_SOUND               ; 4b
	const BATTLE_ANIM_OBJ_WAVE                ; 4c
	const BATTLE_ANIM_OBJ_CONFUSE_RAY         ; 4d
	const BATTLE_ANIM_OBJ_LEER                ; 4e
	const BATTLE_ANIM_OBJ_LEER_TIP            ; 4f
	const BATTLE_ANIM_OBJ_SCREEN              ; 50
	const BATTLE_ANIM_OBJ_CHICK               ; 51
	const BATTLE_ANIM_OBJ_AMNESIA             ; 52
	const BATTLE_ANIM_OBJ_ASLEEP              ; 53
	const BATTLE_ANIM_OBJ_SKULL               ; 54
	const BATTLE_ANIM_OBJ_DIG_SAND            ; 55
	const BATTLE_ANIM_OBJ_DIG_PILE            ; 56
	const BATTLE_ANIM_OBJ_SAND                ; 57
	const BATTLE_ANIM_OBJ_PARALYZED           ; 58
	const BATTLE_ANIM_OBJ_STRING_SHOT         ; 59
	const BATTLE_ANIM_OBJ_HAZE                ; 5a
	const BATTLE_ANIM_OBJ_MIST                ; 5b
	const BATTLE_ANIM_OBJ_SMOG                ; 5c
	const BATTLE_ANIM_OBJ_POISON_GAS          ; 5d
	const BATTLE_ANIM_OBJ_HORN                ; 5e
	const BATTLE_ANIM_OBJ_NEEDLE              ; 5f
	const BATTLE_ANIM_OBJ_PETAL_DANCE         ; 60
	const BATTLE_ANIM_OBJ_SLUDGE_BOMB         ; 61
	const BATTLE_ANIM_OBJ_PAY_DAY             ; 62
	const BATTLE_ANIM_OBJ_SONICBOOM_JP_UNUSED ; 63
	const BATTLE_ANIM_OBJ_MIMIC               ; 64
	const BATTLE_ANIM_OBJ_ATTRACT             ; 65
	const BATTLE_ANIM_OBJ_BONEMERANG          ; 66
	const BATTLE_ANIM_OBJ_BONE_CLUB           ; 67
	const BATTLE_ANIM_OBJ_BONE_RUSH           ; 68
	const BATTLE_ANIM_OBJ_SWIFT               ; 69
	const BATTLE_ANIM_OBJ_KINESIS             ; 6a
	const BATTLE_ANIM_OBJ_FLASH               ; 6b
	const BATTLE_ANIM_OBJ_SHINY               ; 6c
	const BATTLE_ANIM_OBJ_SKY_ATTACK          ; 6d
	const BATTLE_ANIM_OBJ_LICK                ; 6e
	const BATTLE_ANIM_OBJ_WITHDRAW            ; 6f
	const BATTLE_ANIM_OBJ_DRAIN               ; 70
	const BATTLE_ANIM_OBJ_GROWTH              ; 71
	const BATTLE_ANIM_OBJ_CONVERSION2         ; 72
	const BATTLE_ANIM_OBJ_SMOKE               ; 73
	const BATTLE_ANIM_OBJ_SMOKESCREEN         ; 74
	const BATTLE_ANIM_OBJ_SWORDS_DANCE        ; 75
	const BATTLE_ANIM_OBJ_SPEED_LINE          ; 76
	const BATTLE_ANIM_OBJ_SHARPEN             ; 77
	const BATTLE_ANIM_OBJ_DEFENSE_CURL        ; 78
	const BATTLE_ANIM_OBJ_METRONOME_HAND      ; 79
	const BATTLE_ANIM_OBJ_METRONOME_SPARKLE   ; 7a
	const BATTLE_ANIM_OBJ_DISABLE             ; 7b
	const BATTLE_ANIM_OBJ_AGILITY             ; 7c
	const BATTLE_ANIM_OBJ_HEART               ; 7d
	const BATTLE_ANIM_OBJ_FLAME_WHEEL         ; 7e
	const BATTLE_ANIM_OBJ_SACRED_FIRE         ; 7f
	const BATTLE_ANIM_OBJ_COTTON_SPORE        ; 80
	const BATTLE_ANIM_OBJ_MILK_DRINK          ; 81
	const BATTLE_ANIM_OBJ_ANGER               ; 82
	const BATTLE_ANIM_OBJ_HEAL_BELL           ; 83
	const BATTLE_ANIM_OBJ_HEAL_BELL_NOTE      ; 84
	const BATTLE_ANIM_OBJ_BATON_PASS          ; 85
	const BATTLE_ANIM_OBJ_LOCK_ON             ; 86
	const BATTLE_ANIM_OBJ_MIND_READER         ; 87
	const BATTLE_ANIM_OBJ_SAFEGUARD           ; 88
	const BATTLE_ANIM_OBJ_PROTECT             ; 89
	const BATTLE_ANIM_OBJ_THIEF               ; 8a
	const BATTLE_ANIM_OBJ_OCTAZOOKA           ; 8b
	const BATTLE_ANIM_OBJ_PRESENT             ; 8c
	const BATTLE_ANIM_OBJ_SPIKES              ; 8d
	const BATTLE_ANIM_OBJ_POWDER_SNOW         ; 8e
	const BATTLE_ANIM_OBJ_DRAGONBREATH        ; 8f
	const BATTLE_ANIM_OBJ_CONVERSION          ; 90
	const BATTLE_ANIM_OBJ_SPIDER_WEB          ; 91
	const BATTLE_ANIM_OBJ_CAKE_UNUSED         ; 92
	const BATTLE_ANIM_OBJ_NIGHTMARE           ; 93
	const BATTLE_ANIM_OBJ_IN_NIGHTMARE        ; 94
	const BATTLE_ANIM_OBJ_LOVELY_KISS         ; 95
	const BATTLE_ANIM_OBJ_SWEET_KISS          ; 96
	const BATTLE_ANIM_OBJ_SKETCH              ; 97
	const BATTLE_ANIM_OBJ_ENCORE_HAND         ; 98
	const BATTLE_ANIM_OBJ_ENCORE_STAR         ; 99
	const BATTLE_ANIM_OBJ_DESTINY_BOND        ; 9a
	const BATTLE_ANIM_OBJ_MORNING_SUN         ; 9b
	const BATTLE_ANIM_OBJ_GLIMMER             ; 9c
	const BATTLE_ANIM_OBJ_MOONLIGHT           ; 9d
	const BATTLE_ANIM_OBJ_HIDDEN_POWER        ; 9e
	const BATTLE_ANIM_OBJ_CROSS_CHOP1         ; 9f
	const BATTLE_ANIM_OBJ_CROSS_CHOP2         ; a0
	const BATTLE_ANIM_OBJ_SANDSTORM           ; a1
	const BATTLE_ANIM_OBJ_ZAP_CANNON          ; a2
	const BATTLE_ANIM_OBJ_SPITE               ; a3
	const BATTLE_ANIM_OBJ_CURSE               ; a4
	const BATTLE_ANIM_OBJ_PERISH_SONG         ; a5
	const BATTLE_ANIM_OBJ_FORESIGHT           ; a6
	const BATTLE_ANIM_OBJ_RAPID_SPIN          ; a7
	const BATTLE_ANIM_OBJ_SWAGGER             ; a8
	const BATTLE_ANIM_OBJ_BELLY_DRUM_HAND     ; a9
	const BATTLE_ANIM_OBJ_BELLY_DRUM_NOTE     ; aa
	const BATTLE_ANIM_OBJ_MEAN_LOOK           ; ab
	const BATTLE_ANIM_OBJ_BETA_PURSUIT        ; ac
	const BATTLE_ANIM_OBJ_SHOOTING_SPARKLE    ; ad
	const BATTLE_ANIM_OBJ_RAIN                ; ae
	const BATTLE_ANIM_OBJ_B0                  ; af
	const BATTLE_ANIM_OBJ_PSYCH_UP            ; b0
	const BATTLE_ANIM_OBJ_ANCIENTPOWER        ; b1
	const BATTLE_ANIM_OBJ_AEROBLAST           ; b2
	const BATTLE_ANIM_OBJ_SHADOW_BALL         ; b3
	const BATTLE_ANIM_OBJ_ROCK_SMASH          ; b4
	const BATTLE_ANIM_OBJ_FLOWER              ; b5
	const BATTLE_ANIM_OBJ_COTTON              ; b6
	const BATTLE_ANIM_OBJ_ENEMYFEET_1ROW      ; b7
	const BATTLE_ANIM_OBJ_PLAYERHEAD_1ROW     ; b8
	const BATTLE_ANIM_OBJ_ENEMYFEET_2ROW      ; b9
	const BATTLE_ANIM_OBJ_PLAYERHEAD_2ROW     ; ba
	; New Objects
	const BATTLE_ANIM_OBJ_PALM_XFLIP          ; bb
	const BATTLE_ANIM_OBJ_MEDIUM_HORN         ; bc
	const BATTLE_ANIM_OBJ_MINIMIZE            ; bd
	const BATTLE_ANIM_OBJ_DAZZLE              ; be
	const BATTLE_ANIM_OBJ_EGG_BOMB            ; bf
	const BATTLE_ANIM_OBJ_BUBBLE_SPLASH       ; c0
	const BATTLE_ANIM_OBJ_RISING_BUBBLE       ; c1
	const BATTLE_ANIM_OBJ_OCTAZOOKA_SMOKE     ; c2
	const BATTLE_ANIM_OBJ_INK_SPLASH          ; c3
	const BATTLE_ANIM_OBJ_FAKE_OUT_L          ; c4
	const BATTLE_ANIM_OBJ_FAKE_OUT_R          ; c5
	const BATTLE_ANIM_OBJ_SMELLINGSALT_L      ; c6
	const BATTLE_ANIM_OBJ_SMELLINGSALT_R      ; c7
	const BATTLE_ANIM_OBJ_SMELLINGSALT_SHOCK  ; c8
	const BATTLE_ANIM_OBJ_BIG_WAVE            ; c9
	const BATTLE_ANIM_OBJ_UPROAR              ; ca
	const BATTLE_ANIM_OBJ_ENERGY_ORB          ; cb
	const BATTLE_ANIM_OBJ_ENERGY_ORB_OUT      ; cc
	const BATTLE_ANIM_OBJ_ENERGY_ORB_OUT_YFIX ; cd
	const BATTLE_ANIM_OBJ_MIST_BG             ; ce
	const BATTLE_ANIM_OBJ_HAIL                ; cf
	const BATTLE_ANIM_OBJ_TORMENT             ; d0
	const BATTLE_ANIM_OBJ_FLATTER_1           ; d1
	const BATTLE_ANIM_OBJ_FLATTER_2           ; d2
	const BATTLE_ANIM_OBJ_DROPLET_R           ; d3
	const BATTLE_ANIM_OBJ_DROPLET_L           ; d4
	const BATTLE_ANIM_OBJ_LONG_PUNCH          ; d5
	const BATTLE_ANIM_OBJ_CHARGE              ; d6
	const BATTLE_ANIM_OBJ_TAUNT               ; d7
	const BATTLE_ANIM_OBJ_TRICK               ; d8
	const BATTLE_ANIM_OBJ_WISH_1              ; d9
	const BATTLE_ANIM_OBJ_WISH_2              ; da
	const BATTLE_ANIM_OBJ_COSMIC_POWER_BG     ; db
DEF NUM_BATTLE_ANIM_OBJS EQU const_value

; DoBattleAnimFrame arguments (see engine/battle_anims/functions.asm)
	const_def
	const BATTLE_ANIM_FUNC_NULL                               ; 00
	const BATTLE_ANIM_FUNC_USER_TO_TARGET                     ; 01
	const BATTLE_ANIM_FUNC_USER_TO_TARGET_DISAPPEAR           ; 02
	const BATTLE_ANIM_FUNC_MOVE_IN_CIRCLE                     ; 03
	const BATTLE_ANIM_FUNC_WAVE_TO_TARGET                     ; 04
	const BATTLE_ANIM_FUNC_THROW_TO_TARGET                    ; 05
	const BATTLE_ANIM_FUNC_THROW_TO_TARGET_DISAPPEAR          ; 06
	const BATTLE_ANIM_FUNC_DROP                               ; 07
	const BATTLE_ANIM_FUNC_USER_TO_TARGET_SPIN                ; 08
	const BATTLE_ANIM_FUNC_SHAKE                              ; 09
	const BATTLE_ANIM_FUNC_FIRE_BLAST                         ; 0a
	const BATTLE_ANIM_FUNC_RAZOR_LEAF                         ; 0b
	const BATTLE_ANIM_FUNC_BUBBLE                             ; 0c
	const BATTLE_ANIM_FUNC_SURF                               ; 0d
	const BATTLE_ANIM_FUNC_SING                               ; 0e
	const BATTLE_ANIM_FUNC_WATER_GUN                          ; 0f
	const BATTLE_ANIM_FUNC_EMBER                              ; 10
	const BATTLE_ANIM_FUNC_POWDER                             ; 11
	const BATTLE_ANIM_FUNC_POKEBALL                           ; 12
	const BATTLE_ANIM_FUNC_POKEBALL_BLOCKED                   ; 13
	const BATTLE_ANIM_FUNC_RECOVER                            ; 14
	const BATTLE_ANIM_FUNC_THUNDER_WAVE                       ; 15
	const BATTLE_ANIM_FUNC_CLAMP_ENCORE                       ; 16
	const BATTLE_ANIM_FUNC_BITE                               ; 17
	const BATTLE_ANIM_FUNC_SOLAR_BEAM                         ; 18
	const BATTLE_ANIM_FUNC_GUST                               ; 19
	const BATTLE_ANIM_FUNC_RAZOR_WIND                         ; 1a
	const BATTLE_ANIM_FUNC_KICK                               ; 1b
	const BATTLE_ANIM_FUNC_ABSORB                             ; 1c
	const BATTLE_ANIM_FUNC_EGG                                ; 1d
	const BATTLE_ANIM_FUNC_MOVE_UP                            ; 1e
	const BATTLE_ANIM_FUNC_WRAP                               ; 1f
	const BATTLE_ANIM_FUNC_LEECH_SEED                         ; 20
	const BATTLE_ANIM_FUNC_SOUND                              ; 21
	const BATTLE_ANIM_FUNC_CONFUSE_RAY                        ; 22
	const BATTLE_ANIM_FUNC_DIZZY                              ; 23
	const BATTLE_ANIM_FUNC_AMNESIA                            ; 24
	const BATTLE_ANIM_FUNC_FLOAT_UP                           ; 25
	const BATTLE_ANIM_FUNC_DIG                                ; 26
	const BATTLE_ANIM_FUNC_STRING                             ; 27
	const BATTLE_ANIM_FUNC_PARALYZED                          ; 28
	const BATTLE_ANIM_FUNC_SPIRAL_DESCENT                     ; 29
	const BATTLE_ANIM_FUNC_POISON_GAS                         ; 2a
	const BATTLE_ANIM_FUNC_HORN                               ; 2b
	const BATTLE_ANIM_FUNC_NEEDLE                             ; 2c
	const BATTLE_ANIM_FUNC_PETAL_DANCE                        ; 2d
	const BATTLE_ANIM_FUNC_THIEF_PAYDAY                       ; 2e
	const BATTLE_ANIM_FUNC_ABSORB_CIRCLE                      ; 2f
	const BATTLE_ANIM_FUNC_BONEMERANG                         ; 30
	const BATTLE_ANIM_FUNC_SHINY                              ; 31
	const BATTLE_ANIM_FUNC_SKY_ATTACK                         ; 32
	const BATTLE_ANIM_FUNC_GROWTH_SWORDS_DANCE                ; 33
	const BATTLE_ANIM_FUNC_SMOKE_FLAME_WHEEL                  ; 34
	const BATTLE_ANIM_FUNC_PRESENT_SMOKESCREEN                ; 35
	const BATTLE_ANIM_FUNC_STRENGTH_SEISMIC_TOSS              ; 36
	const BATTLE_ANIM_FUNC_SPEED_LINE                         ; 37
	const BATTLE_ANIM_FUNC_SLUDGE                             ; 38
	const BATTLE_ANIM_FUNC_METRONOME_HAND                     ; 39
	const BATTLE_ANIM_FUNC_METRONOME_SPARKLE_SKETCH           ; 3a
	const BATTLE_ANIM_FUNC_AGILITY                            ; 3b
	const BATTLE_ANIM_FUNC_SACRED_FIRE                        ; 3c
	const BATTLE_ANIM_FUNC_SAFEGUARD_PROTECT                  ; 3d
	const BATTLE_ANIM_FUNC_LOCK_ON_MIND_READER                ; 3e
	const BATTLE_ANIM_FUNC_SPIKES                             ; 3f
	const BATTLE_ANIM_FUNC_HEAL_BELL_NOTES                    ; 40
	const BATTLE_ANIM_FUNC_BATON_PASS                         ; 41
	const BATTLE_ANIM_FUNC_CONVERSION                         ; 42
	const BATTLE_ANIM_FUNC_ENCORE_BELLY_DRUM                  ; 43
	const BATTLE_ANIM_FUNC_SWAGGER_MORNING_SUN                ; 44
	const BATTLE_ANIM_FUNC_HIDDEN_POWER                       ; 45
	const BATTLE_ANIM_FUNC_CURSE                              ; 46
	const BATTLE_ANIM_FUNC_PERISH_SONG                        ; 47
	const BATTLE_ANIM_FUNC_RAPID_SPIN                         ; 48
	const BATTLE_ANIM_FUNC_BETA_PURSUIT                       ; 49
	const BATTLE_ANIM_FUNC_RAIN_SANDSTORM                     ; 4a
	const BATTLE_ANIM_FUNC_BATTLE_ANIM_OBJ_B0                 ; 4b
	const BATTLE_ANIM_FUNC_PSYCH_UP                           ; 4c
	const BATTLE_ANIM_FUNC_ANCIENT_POWER                      ; 4d
	const BATTLE_ANIM_FUNC_ROCK_SMASH                         ; 4e
	const BATTLE_ANIM_FUNC_COTTON                             ; 4f
    ; New Functions
	const BATTLE_ANIM_FUNC_BUBBLE_SPLASH                      ; 50
	const BATTLE_ANIM_FUNC_RADIAL_MOVE_OUT                    ; 51
	const BATTLE_ANIM_FUNC_RADIAL_MOVE_OUT_CP_BG              ; 52
	const BATTLE_ANIM_FUNC_RADIAL_MOVE_OUT_SLOW               ; 53
	const BATTLE_ANIM_FUNC_RADIAL_MOVE_OUT_VERY_SLOW          ; 54
	const BATTLE_ANIM_FUNC_RADIAL_MOVE_OUT_FAST               ; 55
	const BATTLE_ANIM_FUNC_RADIAL_MOVE_OUT_VERY_FAST_NO_STOP  ; 56
	const BATTLE_ANIM_FUNC_RADIAL_MOVE_IN                     ; 57
	const BATTLE_ANIM_FUNC_OBJECT_HOVER                       ; 58
DEF NUM_BATTLE_ANIM_FUNCS EQU const_value

; BattleAnimFrameData indexes (see data/battle_anims/framesets.asm)
	const_def
	const BATTLE_ANIM_FRAMESET_HIT_BIG               ; 00
	const BATTLE_ANIM_FRAMESET_HIT                   ; 01
	const BATTLE_ANIM_FRAMESET_HIT_SMALL             ; 02
	const BATTLE_ANIM_FRAMESET_PUNCH                 ; 03
	const BATTLE_ANIM_FRAMESET_KICK                  ; 04
	const BATTLE_ANIM_FRAMESET_PALM                  ; 05
	const BATTLE_ANIM_FRAMESET_FANG                  ; 06
	const BATTLE_ANIM_FRAMESET_PUNCH_SHAKE           ; 07
	const BATTLE_ANIM_FRAMESET_BALL_POOF             ; 08
	const BATTLE_ANIM_FRAMESET_POKE_BALL_1           ; 09
	const BATTLE_ANIM_FRAMESET_POKE_BALL_2           ; 0a
	const BATTLE_ANIM_FRAMESET_POKE_BALL_3           ; 0b
	const BATTLE_ANIM_FRAMESET_POKE_BALL_4           ; 0c
	const BATTLE_ANIM_FRAMESET_POKE_BALL_5           ; 0d
	const BATTLE_ANIM_FRAMESET_DRAGON_RAGE           ; 0e
	const BATTLE_ANIM_FRAMESET_FLAMETHROWER          ; 0f
	const BATTLE_ANIM_FRAMESET_EMBER                 ; 10
	const BATTLE_ANIM_FRAMESET_BURNED                ; 11
	const BATTLE_ANIM_FRAMESET_BLIZZARD              ; 12
	const BATTLE_ANIM_FRAMESET_ICE                   ; 13
	const BATTLE_ANIM_FRAMESET_ICE_BEAM              ; 14
	const BATTLE_ANIM_FRAMESET_POWDER_SNOW           ; 15
	const BATTLE_ANIM_FRAMESET_RAZOR_LEAF_1          ; 16
	const BATTLE_ANIM_FRAMESET_RAZOR_LEAF_2          ; 17
	const BATTLE_ANIM_FRAMESET_EXPLOSION             ; 18
	const BATTLE_ANIM_FRAMESET_BIG_ROCK_STAR_HEART   ; 19
	const BATTLE_ANIM_FRAMESET_SMALL_ROCK_STAR_HEART ; 1a
	const BATTLE_ANIM_FRAMESET_STRENGTH              ; 1b
	const BATTLE_ANIM_FRAMESET_SKULL_CROSSBONE       ; 1c
	const BATTLE_ANIM_FRAMESET_ACID                  ; 1d
	const BATTLE_ANIM_FRAMESET_POISON_DROPLET_UNUSED ; 1e
	const BATTLE_ANIM_FRAMESET_SLUDGE_BUBBLE         ; 1f
	const BATTLE_ANIM_FRAMESET_SLUDGE_BUBBLE_BURST   ; 20
	const BATTLE_ANIM_FRAMESET_SMALL_BUBBLE          ; 21
	const BATTLE_ANIM_FRAMESET_PULSING_BUBBLE        ; 22
	const BATTLE_ANIM_FRAMESET_SURF                  ; 23
	const BATTLE_ANIM_FRAMESET_MUSIC_NOTE_1          ; 24
	const BATTLE_ANIM_FRAMESET_MUSIC_NOTE_2          ; 25
	const BATTLE_ANIM_FRAMESET_MUSIC_NOTE_3          ; 26
	const BATTLE_ANIM_FRAMESET_WATER_GUN_1           ; 27
	const BATTLE_ANIM_FRAMESET_WATER_GUN_2           ; 28
	const BATTLE_ANIM_FRAMESET_WATER_GUN_3           ; 29
	const BATTLE_ANIM_FRAMESET_HYDRO_PUMP            ; 2a
	const BATTLE_ANIM_FRAMESET_POWDER                ; 2b
	const BATTLE_ANIM_FRAMESET_BEAM                  ; 2c
	const BATTLE_ANIM_FRAMESET_BEAM_TIP              ; 2d
	const BATTLE_ANIM_FRAMESET_ICE_BUILDUP           ; 2e
	const BATTLE_ANIM_FRAMESET_FROZEN                ; 2f
	const BATTLE_ANIM_FRAMESET_CIRCLING_SPARKLE      ; 30
	const BATTLE_ANIM_FRAMESET_THUNDER_CENTER        ; 31
	const BATTLE_ANIM_FRAMESET_THUNDER_LEFT          ; 32
	const BATTLE_ANIM_FRAMESET_THUNDER_RIGHT         ; 33
	const BATTLE_ANIM_FRAMESET_THUNDER_WAVE_DISABLE  ; 34
	const BATTLE_ANIM_FRAMESET_THUNDER_WAVE_EXTRA    ; 35
	const BATTLE_ANIM_FRAMESET_THUNDERBOLT_SPARKS    ; 36
	const BATTLE_ANIM_FRAMESET_THUNDERBOLT_CORE      ; 37
	const BATTLE_ANIM_FRAMESET_THUNDERSHOCK_SPARKS   ; 38
	const BATTLE_ANIM_FRAMESET_THUNDERSHOCK_CORE     ; 39
	const BATTLE_ANIM_FRAMESET_CLAMP                 ; 3a
	const BATTLE_ANIM_FRAMESET_CLAMP_FLIPPED         ; 3b
	const BATTLE_ANIM_FRAMESET_BITE_1                ; 3c
	const BATTLE_ANIM_FRAMESET_BITE_2                ; 3d
	const BATTLE_ANIM_FRAMESET_CUT_DOWN_LEFT         ; 3e
	const BATTLE_ANIM_FRAMESET_CUT_DOWN_RIGHT        ; 3f
	const BATTLE_ANIM_FRAMESET_CUT_UP_RIGHT          ; 40
	const BATTLE_ANIM_FRAMESET_CUT_LONG_DOWN_LEFT    ; 41
	const BATTLE_ANIM_FRAMESET_CUT_LONG_DOWN_RIGHT   ; 42
	const BATTLE_ANIM_FRAMESET_CHARGE_ORB_1          ; 43
	const BATTLE_ANIM_FRAMESET_ABSORB_CENTER         ; 44
	const BATTLE_ANIM_FRAMESET_GUST                  ; 45
	const BATTLE_ANIM_FRAMESET_VINE_WHIP_1           ; 46
	const BATTLE_ANIM_FRAMESET_VINE_WHIP_2           ; 47
	const BATTLE_ANIM_FRAMESET_RAZOR_WIND_1          ; 48
	const BATTLE_ANIM_FRAMESET_RAZOR_WIND_2          ; 49
	const BATTLE_ANIM_FRAMESET_SONICBOOM_JP          ; 4a
	const BATTLE_ANIM_FRAMESET_WARP                  ; 4b
	const BATTLE_ANIM_FRAMESET_CHARGE_ORB_2          ; 4c
	const BATTLE_ANIM_FRAMESET_EGG                   ; 4d
	const BATTLE_ANIM_FRAMESET_EGG_WOBBLE            ; 4e
	const BATTLE_ANIM_FRAMESET_EGG_CRACKED_TOP       ; 4f
	const BATTLE_ANIM_FRAMESET_EGG_CRACKED_BOTTOM    ; 50
	const BATTLE_ANIM_FRAMESET_FOCUS                 ; 51
	const BATTLE_ANIM_FRAMESET_BIND_1                ; 52
	const BATTLE_ANIM_FRAMESET_BIND_2                ; 53
	const BATTLE_ANIM_FRAMESET_BIND_3                ; 54
	const BATTLE_ANIM_FRAMESET_BIND_4                ; 55
	const BATTLE_ANIM_FRAMESET_LEECH_SEED_1          ; 56
	const BATTLE_ANIM_FRAMESET_LEECH_SEED_2          ; 57
	const BATTLE_ANIM_FRAMESET_LEECH_SEED_3          ; 58
	const BATTLE_ANIM_FRAMESET_SOUND_1               ; 59
	const BATTLE_ANIM_FRAMESET_SOUND_2               ; 5a
	const BATTLE_ANIM_FRAMESET_SOUND_3               ; 5b
	const BATTLE_ANIM_FRAMESET_WAVE                  ; 5c
	const BATTLE_ANIM_FRAMESET_CONFUSE_RAY_1         ; 5d
	const BATTLE_ANIM_FRAMESET_CONFUSE_RAY_2         ; 5e
	const BATTLE_ANIM_FRAMESET_LEER                  ; 5f
	const BATTLE_ANIM_FRAMESET_REFLECT               ; 60
	const BATTLE_ANIM_FRAMESET_CHICK_1               ; 61
	const BATTLE_ANIM_FRAMESET_CHICK_2               ; 62
	const BATTLE_ANIM_FRAMESET_AMNESIA_1             ; 63
	const BATTLE_ANIM_FRAMESET_AMNESIA_2             ; 64
	const BATTLE_ANIM_FRAMESET_AMNESIA_3             ; 65
	const BATTLE_ANIM_FRAMESET_ASLEEP                ; 66
	const BATTLE_ANIM_FRAMESET_DIG_SAND              ; 67
	const BATTLE_ANIM_FRAMESET_DIG_PILE              ; 68
	const BATTLE_ANIM_FRAMESET_SAND                  ; 69
	const BATTLE_ANIM_FRAMESET_STRING_SHOT_1         ; 6a
	const BATTLE_ANIM_FRAMESET_STRING_SHOT_2         ; 6b
	const BATTLE_ANIM_FRAMESET_STRING_SHOT_3         ; 6c
	const BATTLE_ANIM_FRAMESET_PARALYZED             ; 6d
	const BATTLE_ANIM_FRAMESET_PARALYZED_FLIPPED     ; 6e
	const BATTLE_ANIM_FRAMESET_HAZE                  ; 6f
	const BATTLE_ANIM_FRAMESET_MIST                  ; 70
	const BATTLE_ANIM_FRAMESET_HORN                  ; 71
	const BATTLE_ANIM_FRAMESET_NEEDLE                ; 72
	const BATTLE_ANIM_FRAMESET_FLOWER                ; 73
	const BATTLE_ANIM_FRAMESET_BARRAGE_BALL          ; 74
	const BATTLE_ANIM_FRAMESET_PAY_DAY               ; 75
	const BATTLE_ANIM_FRAMESET_HEART                 ; 76
	const BATTLE_ANIM_FRAMESET_SPINNING_BONE         ; 77
	const BATTLE_ANIM_FRAMESET_STAR                  ; 78
	const BATTLE_ANIM_FRAMESET_SPOON                 ; 79
	const BATTLE_ANIM_FRAMESET_SPARKLE               ; 7a
	const BATTLE_ANIM_FRAMESET_SKY_ATTACK            ; 7b
	const BATTLE_ANIM_FRAMESET_LICK                  ; 7c
	const BATTLE_ANIM_FRAMESET_WITHDRAW_SHELL        ; 7d
	const BATTLE_ANIM_FRAMESET_SHRINKING_CHARGE_ORB  ; 7e
	const BATTLE_ANIM_FRAMESET_CONVERSION            ; 7f
	const BATTLE_ANIM_FRAMESET_SWORD                 ; 80
	const BATTLE_ANIM_FRAMESET_SPEED_LINE_1          ; 81
	const BATTLE_ANIM_FRAMESET_SPEED_LINE_2          ; 82
	const BATTLE_ANIM_FRAMESET_SPEED_LINE_3          ; 83
	const BATTLE_ANIM_FRAMESET_SEISMIC_TOSS          ; 84
	const BATTLE_ANIM_FRAMESET_SHARPEN               ; 85
	const BATTLE_ANIM_FRAMESET_DEFENSE_CURL          ; 86
	const BATTLE_ANIM_FRAMESET_METRONOME_HAND        ; 87
	const BATTLE_ANIM_FRAMESET_AGILITY               ; 88
	const BATTLE_ANIM_FRAMESET_COTTON                ; 89
	const BATTLE_ANIM_FRAMESET_MILK_BOTTLE           ; 8a
	const BATTLE_ANIM_FRAMESET_SPIKE                 ; 8b
	const BATTLE_ANIM_FRAMESET_ANGER_VEIN            ; 8c
	const BATTLE_ANIM_FRAMESET_HEAL_BELL             ; 8d
	const BATTLE_ANIM_FRAMESET_BATON_PASS            ; 8e
	const BATTLE_ANIM_FRAMESET_LOCK_ON_1             ; 8f
	const BATTLE_ANIM_FRAMESET_LOCK_ON_2             ; 90
	const BATTLE_ANIM_FRAMESET_LOCK_ON_3             ; 91
	const BATTLE_ANIM_FRAMESET_LOCK_ON_4             ; 92
	const BATTLE_ANIM_FRAMESET_MIND_READER_1         ; 93
	const BATTLE_ANIM_FRAMESET_MIND_READER_2         ; 94
	const BATTLE_ANIM_FRAMESET_MIND_READER_3         ; 95
	const BATTLE_ANIM_FRAMESET_MIND_READER_4         ; 96
	const BATTLE_ANIM_FRAMESET_SAFEGUARD             ; 97
	const BATTLE_ANIM_FRAMESET_MEGAPHONE_UNUSED      ; 98
	const BATTLE_ANIM_FRAMESET_ITEM_BAG              ; 99
	const BATTLE_ANIM_FRAMESET_SPIDER_WEB            ; 9a
	const BATTLE_ANIM_FRAMESET_UNUSED_CAKE           ; 9b
	const BATTLE_ANIM_FRAMESET_IMP                   ; 9c
	const BATTLE_ANIM_FRAMESET_IMP_FLIPPED           ; 9d
	const BATTLE_ANIM_FRAMESET_CHERUB                ; 9e
	const BATTLE_ANIM_FRAMESET_PENCIL                ; 9f
	const BATTLE_ANIM_FRAMESET_ENCORE_HAND           ; a0
	const BATTLE_ANIM_FRAMESET_ENCORE_HAND_FLIPPED   ; a1
	const BATTLE_ANIM_FRAMESET_DESTINY_BOND          ; a2
	const BATTLE_ANIM_FRAMESET_MORNING_SUN           ; a3
	const BATTLE_ANIM_FRAMESET_GLIMMER               ; a4
	const BATTLE_ANIM_FRAMESET_MOONLIGHT             ; a5
	const BATTLE_ANIM_FRAMESET_CROSS_CHOP_1          ; a6
	const BATTLE_ANIM_FRAMESET_CROSS_CHOP_2          ; a7
	const BATTLE_ANIM_FRAMESET_ZAP_CANNON            ; a8
	const BATTLE_ANIM_FRAMESET_CURSE_NAIL            ; a9
	const BATTLE_ANIM_FRAMESET_FORESIGHT_SHINE       ; aa
	const BATTLE_ANIM_FRAMESET_RAPID_SPIN            ; ab
	const BATTLE_ANIM_FRAMESET_SWAGGER               ; ac
	const BATTLE_ANIM_FRAMESET_MEAN_LOOK             ; ad
	const BATTLE_ANIM_FRAMESET_UPSIDE_DOWN_PUNCH     ; ae
	const BATTLE_ANIM_FRAMESET_GROWING_SPARKLE       ; af
	const BATTLE_ANIM_FRAMESET_RAIN                  ; b0
	const BATTLE_ANIM_FRAMESET_PSYCH_UP              ; b1
	const BATTLE_ANIM_FRAMESET_SPIRAL_UNUSED         ; b2
	const BATTLE_ANIM_FRAMESET_AEROBLAST             ; b3
	const BATTLE_ANIM_FRAMESET_SANDSTORM             ; b4
	const BATTLE_ANIM_FRAMESET_ENEMYFEET_1ROW        ; b5
	const BATTLE_ANIM_FRAMESET_PLAYERHEAD_1ROW       ; b6
	const BATTLE_ANIM_FRAMESET_ENEMYFEET_2ROW        ; b7
	const BATTLE_ANIM_FRAMESET_PLAYERHEAD_2ROW       ; b8
    ; New Framesets
    const BATTLE_ANIM_FRAMESET_PALM_XFLIP            ; b9
	const BATTLE_ANIM_FRAMESET_MEDIUM_HORN           ; ba
	const BATTLE_ANIM_FRAMESET_MINIMIZE              ; bb
    const BATTLE_ANIM_FRAMESET_BUBBLE_SPLASH         ; bc
    const BATTLE_ANIM_FRAMESET_OCTAZOOKA_SMOKE       ; bd
    const BATTLE_ANIM_FRAMESET_INK_SPLASH            ; be
	const BATTLE_ANIM_FRAMESET_SMELLINGSALT_L        ; bf
	const BATTLE_ANIM_FRAMESET_SMELLINGSALT_R        ; c0
	const BATTLE_ANIM_FRAMESET_SMELLINGSALT_SHOCK    ; c1
	const BATTLE_ANIM_FRAMESET_BIG_WAVE              ; c2
 	const BATTLE_ANIM_FRAMESET_UPROAR_NOTE           ; c3
	const BATTLE_ANIM_FRAMESET_ENERGY_ORB            ; c4
	const BATTLE_ANIM_FRAMESET_ENERGY_ORB_LONG       ; c5
	const BATTLE_ANIM_FRAMESET_TORMENT               ; c6
	const BATTLE_ANIM_FRAMESET_DROPLET_R             ; c7
	const BATTLE_ANIM_FRAMESET_DROPLET_L             ; c8
	const BATTLE_ANIM_FRAMESET_LONG_PUNCH            ; c9
	const BATTLE_ANIM_FRAMESET_TAUNT                 ; ca
	const BATTLE_ANIM_FRAMESET_ITEM_BAG_SIDE_PUNCH   ; cb
	const BATTLE_ANIM_FRAMESET_COSMIC_POWER_BG       ; cc
DEF NUM_BATTLE_ANIM_FRAMESETS EQU const_value

; BattleAnimOAMData indexes (see data/battle_anims/oam.asm)
	const_def
	const BATTLE_ANIM_OAMSET_00
	const BATTLE_ANIM_OAMSET_01
	const BATTLE_ANIM_OAMSET_02
	const BATTLE_ANIM_OAMSET_03
	const BATTLE_ANIM_OAMSET_04
	const BATTLE_ANIM_OAMSET_05
	const BATTLE_ANIM_OAMSET_06
	const BATTLE_ANIM_OAMSET_07
	const BATTLE_ANIM_OAMSET_08
	const BATTLE_ANIM_OAMSET_09
	const BATTLE_ANIM_OAMSET_0A
	const BATTLE_ANIM_OAMSET_0B
	const BATTLE_ANIM_OAMSET_0C
	const BATTLE_ANIM_OAMSET_0D
	const BATTLE_ANIM_OAMSET_0E
	const BATTLE_ANIM_OAMSET_0F
	const BATTLE_ANIM_OAMSET_10
	const BATTLE_ANIM_OAMSET_11
	const BATTLE_ANIM_OAMSET_12
	const BATTLE_ANIM_OAMSET_13
	const BATTLE_ANIM_OAMSET_14
	const BATTLE_ANIM_OAMSET_15
	const BATTLE_ANIM_OAMSET_16
	const BATTLE_ANIM_OAMSET_17
	const BATTLE_ANIM_OAMSET_18
	const BATTLE_ANIM_OAMSET_19
	const BATTLE_ANIM_OAMSET_1A
	const BATTLE_ANIM_OAMSET_1B
	const BATTLE_ANIM_OAMSET_1C
	const BATTLE_ANIM_OAMSET_1D
	const BATTLE_ANIM_OAMSET_1E
	const BATTLE_ANIM_OAMSET_1F
	const BATTLE_ANIM_OAMSET_20
	const BATTLE_ANIM_OAMSET_21
	const BATTLE_ANIM_OAMSET_22
	const BATTLE_ANIM_OAMSET_23
	const BATTLE_ANIM_OAMSET_24
	const BATTLE_ANIM_OAMSET_25
	const BATTLE_ANIM_OAMSET_26
	const BATTLE_ANIM_OAMSET_27
	const BATTLE_ANIM_OAMSET_28
	const BATTLE_ANIM_OAMSET_29
	const BATTLE_ANIM_OAMSET_2A
	const BATTLE_ANIM_OAMSET_2B
	const BATTLE_ANIM_OAMSET_2C
	const BATTLE_ANIM_OAMSET_2D
	const BATTLE_ANIM_OAMSET_2E
	const BATTLE_ANIM_OAMSET_2F
	const BATTLE_ANIM_OAMSET_30
	const BATTLE_ANIM_OAMSET_31
	const BATTLE_ANIM_OAMSET_32
	const BATTLE_ANIM_OAMSET_33
	const BATTLE_ANIM_OAMSET_34
	const BATTLE_ANIM_OAMSET_35
	const BATTLE_ANIM_OAMSET_36
	const BATTLE_ANIM_OAMSET_37
	const BATTLE_ANIM_OAMSET_38
	const BATTLE_ANIM_OAMSET_39
	const BATTLE_ANIM_OAMSET_3A
	const BATTLE_ANIM_OAMSET_3B
	const BATTLE_ANIM_OAMSET_3C
	const BATTLE_ANIM_OAMSET_3D
	const BATTLE_ANIM_OAMSET_3E
	const BATTLE_ANIM_OAMSET_3F
	const BATTLE_ANIM_OAMSET_40
	const BATTLE_ANIM_OAMSET_41
	const BATTLE_ANIM_OAMSET_42
	const BATTLE_ANIM_OAMSET_43
	const BATTLE_ANIM_OAMSET_44
	const BATTLE_ANIM_OAMSET_45
	const BATTLE_ANIM_OAMSET_46
	const BATTLE_ANIM_OAMSET_47
	const BATTLE_ANIM_OAMSET_48
	const BATTLE_ANIM_OAMSET_49
	const BATTLE_ANIM_OAMSET_4A
	const BATTLE_ANIM_OAMSET_4B
	const BATTLE_ANIM_OAMSET_4C
	const BATTLE_ANIM_OAMSET_4D
	const BATTLE_ANIM_OAMSET_4E
	const BATTLE_ANIM_OAMSET_4F
	const BATTLE_ANIM_OAMSET_50
	const BATTLE_ANIM_OAMSET_51
	const BATTLE_ANIM_OAMSET_52
	const BATTLE_ANIM_OAMSET_53
	const BATTLE_ANIM_OAMSET_54
	const BATTLE_ANIM_OAMSET_55
	const BATTLE_ANIM_OAMSET_56
	const BATTLE_ANIM_OAMSET_57
	const BATTLE_ANIM_OAMSET_58
	const BATTLE_ANIM_OAMSET_59
	const BATTLE_ANIM_OAMSET_5A
	const BATTLE_ANIM_OAMSET_5B
	const BATTLE_ANIM_OAMSET_5C
	const BATTLE_ANIM_OAMSET_5D
	const BATTLE_ANIM_OAMSET_5E
	const BATTLE_ANIM_OAMSET_5F
	const BATTLE_ANIM_OAMSET_60
	const BATTLE_ANIM_OAMSET_61
	const BATTLE_ANIM_OAMSET_62
	const BATTLE_ANIM_OAMSET_63
	const BATTLE_ANIM_OAMSET_64
	const BATTLE_ANIM_OAMSET_65
	const BATTLE_ANIM_OAMSET_66
	const BATTLE_ANIM_OAMSET_67
	const BATTLE_ANIM_OAMSET_68
	const BATTLE_ANIM_OAMSET_69
	const BATTLE_ANIM_OAMSET_6A
	const BATTLE_ANIM_OAMSET_6B
	const BATTLE_ANIM_OAMSET_6C
	const BATTLE_ANIM_OAMSET_6D
	const BATTLE_ANIM_OAMSET_6E
	const BATTLE_ANIM_OAMSET_6F
	const BATTLE_ANIM_OAMSET_70
	const BATTLE_ANIM_OAMSET_71
	const BATTLE_ANIM_OAMSET_72
	const BATTLE_ANIM_OAMSET_73
	const BATTLE_ANIM_OAMSET_74
	const BATTLE_ANIM_OAMSET_75
	const BATTLE_ANIM_OAMSET_76
	const BATTLE_ANIM_OAMSET_77
	const BATTLE_ANIM_OAMSET_78
	const BATTLE_ANIM_OAMSET_79
	const BATTLE_ANIM_OAMSET_7A
	const BATTLE_ANIM_OAMSET_7B
	const BATTLE_ANIM_OAMSET_7C
	const BATTLE_ANIM_OAMSET_7D
	const BATTLE_ANIM_OAMSET_7E
	const BATTLE_ANIM_OAMSET_7F
	const BATTLE_ANIM_OAMSET_80
	const BATTLE_ANIM_OAMSET_81
	const BATTLE_ANIM_OAMSET_82
	const BATTLE_ANIM_OAMSET_83
	const BATTLE_ANIM_OAMSET_84
	const BATTLE_ANIM_OAMSET_85
	const BATTLE_ANIM_OAMSET_86
	const BATTLE_ANIM_OAMSET_87
	const BATTLE_ANIM_OAMSET_88
	const BATTLE_ANIM_OAMSET_89
	const BATTLE_ANIM_OAMSET_8A
	const BATTLE_ANIM_OAMSET_8B
	const BATTLE_ANIM_OAMSET_8C
	const BATTLE_ANIM_OAMSET_8D
	const BATTLE_ANIM_OAMSET_8E
	const BATTLE_ANIM_OAMSET_8F
	const BATTLE_ANIM_OAMSET_90
	const BATTLE_ANIM_OAMSET_91
	const BATTLE_ANIM_OAMSET_92
	const BATTLE_ANIM_OAMSET_93
	const BATTLE_ANIM_OAMSET_94
	const BATTLE_ANIM_OAMSET_95
	const BATTLE_ANIM_OAMSET_96
	const BATTLE_ANIM_OAMSET_97
	const BATTLE_ANIM_OAMSET_98
	const BATTLE_ANIM_OAMSET_99
	const BATTLE_ANIM_OAMSET_9A
	const BATTLE_ANIM_OAMSET_9B
	const BATTLE_ANIM_OAMSET_9C
	const BATTLE_ANIM_OAMSET_9D
	const BATTLE_ANIM_OAMSET_9E
	const BATTLE_ANIM_OAMSET_9F
	const BATTLE_ANIM_OAMSET_A0
	const BATTLE_ANIM_OAMSET_A1
	const BATTLE_ANIM_OAMSET_A2
	const BATTLE_ANIM_OAMSET_A3
	const BATTLE_ANIM_OAMSET_A4
	const BATTLE_ANIM_OAMSET_A5
	const BATTLE_ANIM_OAMSET_A6
	const BATTLE_ANIM_OAMSET_A7
	const BATTLE_ANIM_OAMSET_A8
	const BATTLE_ANIM_OAMSET_A9
	const BATTLE_ANIM_OAMSET_AA
	const BATTLE_ANIM_OAMSET_AB
	const BATTLE_ANIM_OAMSET_AC
	const BATTLE_ANIM_OAMSET_AD
	const BATTLE_ANIM_OAMSET_AE
	const BATTLE_ANIM_OAMSET_AF
	const BATTLE_ANIM_OAMSET_B0
	const BATTLE_ANIM_OAMSET_B1
	const BATTLE_ANIM_OAMSET_B2
	const BATTLE_ANIM_OAMSET_B3
	const BATTLE_ANIM_OAMSET_B4
	const BATTLE_ANIM_OAMSET_B5
	const BATTLE_ANIM_OAMSET_B6
	const BATTLE_ANIM_OAMSET_B7
	const BATTLE_ANIM_OAMSET_B8
	const BATTLE_ANIM_OAMSET_B9
	const BATTLE_ANIM_OAMSET_BA
	const BATTLE_ANIM_OAMSET_BB
	const BATTLE_ANIM_OAMSET_BC
	const BATTLE_ANIM_OAMSET_BD
	const BATTLE_ANIM_OAMSET_BE
	const BATTLE_ANIM_OAMSET_BF
	const BATTLE_ANIM_OAMSET_C0
	const BATTLE_ANIM_OAMSET_C1
	const BATTLE_ANIM_OAMSET_C2
	const BATTLE_ANIM_OAMSET_C3
	const BATTLE_ANIM_OAMSET_C4
	const BATTLE_ANIM_OAMSET_C5
	const BATTLE_ANIM_OAMSET_C6
	const BATTLE_ANIM_OAMSET_C7
	const BATTLE_ANIM_OAMSET_C8
	const BATTLE_ANIM_OAMSET_C9
	const BATTLE_ANIM_OAMSET_CA
	const BATTLE_ANIM_OAMSET_CB
	const BATTLE_ANIM_OAMSET_CC
	const BATTLE_ANIM_OAMSET_CD
	const BATTLE_ANIM_OAMSET_CE
	const BATTLE_ANIM_OAMSET_CF
	const BATTLE_ANIM_OAMSET_D0
	const BATTLE_ANIM_OAMSET_D1
	const BATTLE_ANIM_OAMSET_D2
	const BATTLE_ANIM_OAMSET_D3
	const BATTLE_ANIM_OAMSET_D4
	const BATTLE_ANIM_OAMSET_D5
	const BATTLE_ANIM_OAMSET_D6
	const BATTLE_ANIM_OAMSET_D7
    ; New Oams
	const BATTLE_ANIM_OAMSET_D8
	const BATTLE_ANIM_OAMSET_D9
	const BATTLE_ANIM_OAMSET_DA
	const BATTLE_ANIM_OAMSET_DB
	const BATTLE_ANIM_OAMSET_DC
	const BATTLE_ANIM_OAMSET_DD
	const BATTLE_ANIM_OAMSET_DE
DEF NUM_BATTLE_ANIM_OAMSETS EQU const_value

assert NUM_BATTLE_ANIM_OAMSETS <= FIRST_OAM_CMD, \
	"BATTLE_ANIM_OAMSET_* constants overlap oam*_command constants"

; BattleBGEffects indexes (see engine/battle_anims/bg_effects.asm)
	const_def 1
	const BATTLE_BG_EFFECT_FLASH_INVERTED                   ; 01
	const BATTLE_BG_EFFECT_FLASH_WHITE                      ; 02
	const BATTLE_BG_EFFECT_WHITE_HUES                       ; 03
	const BATTLE_BG_EFFECT_BLACK_HUES                       ; 04
	const BATTLE_BG_EFFECT_ALTERNATE_HUES                   ; 05
	const BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW     ; 06
	const BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW ; 07
	const BATTLE_BG_EFFECT_CYCLE_BGPALS_INVERTED            ; 08
	const BATTLE_BG_EFFECT_HIDE_MON                         ; 09
	const BATTLE_BG_EFFECT_SHOW_MON                         ; 0a
	const BATTLE_BG_EFFECT_ENTER_MON                        ; 0b
	const BATTLE_BG_EFFECT_RETURN_MON                       ; 0c
	const BATTLE_BG_EFFECT_SURF                             ; 0d
	const BATTLE_BG_EFFECT_WHIRLPOOL                        ; 0e
	const BATTLE_BG_EFFECT_TELEPORT                         ; 0f
	const BATTLE_BG_EFFECT_NIGHT_SHADE                      ; 10
	const BATTLE_BG_EFFECT_BATTLEROBJ_1ROW                  ; 11
	const BATTLE_BG_EFFECT_BATTLEROBJ_2ROW                  ; 12
	const BATTLE_BG_EFFECT_DOUBLE_TEAM                      ; 13
	const BATTLE_BG_EFFECT_ACID_ARMOR                       ; 14
	const BATTLE_BG_EFFECT_RAPID_FLASH                      ; 15
	const BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT                ; 16
	const BATTLE_BG_EFFECT_FADE_MON_TO_BLACK                ; 17
	const BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT_REPEATING      ; 18
	const BATTLE_BG_EFFECT_FADE_MON_TO_BLACK_REPEATING      ; 19
	const BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING   ; 1a
	const BATTLE_BG_EFFECT_FLASH_MON_REPEATING              ; 1b
	const BATTLE_BG_EFFECT_FADE_MONS_TO_BLACK_REPEATING     ; 1c
	const BATTLE_BG_EFFECT_FADE_MON_TO_WHITE_WAIT_FADE_BACK ; 1d
	const BATTLE_BG_EFFECT_FADE_MON_FROM_WHITE              ; 1e
	const BATTLE_BG_EFFECT_SHAKE_SCREEN_X                   ; 1f
	const BATTLE_BG_EFFECT_SHAKE_SCREEN_Y                   ; 20
	const BATTLE_BG_EFFECT_WITHDRAW                         ; 21
	const BATTLE_BG_EFFECT_BOUNCE_DOWN                      ; 22
	const BATTLE_BG_EFFECT_DIG                              ; 23
	const BATTLE_BG_EFFECT_TACKLE                           ; 24
	const BATTLE_BG_EFFECT_BODY_SLAM                        ; 25
	const BATTLE_BG_EFFECT_WOBBLE_MON                       ; 26
	const BATTLE_BG_EFFECT_REMOVE_MON                       ; 27
	const BATTLE_BG_EFFECT_WAVE_DEFORM_MON                  ; 28
	const BATTLE_BG_EFFECT_PSYCHIC                          ; 29
	const BATTLE_BG_EFFECT_BETA_SEND_OUT_MON1               ; 2a
	const BATTLE_BG_EFFECT_BETA_SEND_OUT_MON2               ; 2b
	const BATTLE_BG_EFFECT_FLAIL                            ; 2c
	const BATTLE_BG_EFFECT_BETA_PURSUIT                     ; 2d
	const BATTLE_BG_EFFECT_ROLLOUT                          ; 2e
	const BATTLE_BG_EFFECT_VITAL_THROW                      ; 2f
	const BATTLE_BG_EFFECT_START_WATER                      ; 30
	const BATTLE_BG_EFFECT_WATER                            ; 31
	const BATTLE_BG_EFFECT_END_WATER                        ; 32
	const BATTLE_BG_EFFECT_VIBRATE_MON                      ; 33
	const BATTLE_BG_EFFECT_WOBBLE_PLAYER                    ; 34
	const BATTLE_BG_EFFECT_WOBBLE_SCREEN                    ; 35
DEF NUM_BATTLE_BG_EFFECTS EQU const_value - 1

; wBattleAnimTileDict keys (see wram.asm)
; AnimObjGFX indexes (see data/battle_anims/object_gfx.asm)
	const_def 1
	const BATTLE_ANIM_GFX_HIT            ; 01
	const BATTLE_ANIM_GFX_CUT            ; 02
	const BATTLE_ANIM_GFX_FIRE           ; 03
	const BATTLE_ANIM_GFX_WATER          ; 04
	const BATTLE_ANIM_GFX_LIGHTNING      ; 05
	const BATTLE_ANIM_GFX_PLANT          ; 06
	const BATTLE_ANIM_GFX_SMOKE          ; 07
	const BATTLE_ANIM_GFX_EXPLOSION      ; 08
	const BATTLE_ANIM_GFX_ROCKS          ; 09
	const BATTLE_ANIM_GFX_ICE            ; 0a
	const BATTLE_ANIM_GFX_POKE_BALL      ; 0b
	const BATTLE_ANIM_GFX_POISON         ; 0c
	const BATTLE_ANIM_GFX_BUBBLE         ; 0d
	const BATTLE_ANIM_GFX_NOISE          ; 0e
	const BATTLE_ANIM_GFX_POWDER         ; 0f
	const BATTLE_ANIM_GFX_BEAM           ; 10
	const BATTLE_ANIM_GFX_SPEED          ; 11
	const BATTLE_ANIM_GFX_CHARGE         ; 12
	const BATTLE_ANIM_GFX_WIND           ; 13
	const BATTLE_ANIM_GFX_WHIP           ; 14
	const BATTLE_ANIM_GFX_EGG            ; 15
	const BATTLE_ANIM_GFX_ROPE           ; 16
	const BATTLE_ANIM_GFX_PSYCHIC        ; 17
	const BATTLE_ANIM_GFX_REFLECT        ; 18
	const BATTLE_ANIM_GFX_STATUS         ; 19
	const BATTLE_ANIM_GFX_SAND           ; 1a
	const BATTLE_ANIM_GFX_WEB            ; 1b
	const BATTLE_ANIM_GFX_HAZE           ; 1c
	const BATTLE_ANIM_GFX_HORN           ; 1d
	const BATTLE_ANIM_GFX_FLOWER         ; 1e
	const BATTLE_ANIM_GFX_MISC           ; 1f
	const BATTLE_ANIM_GFX_SKY_ATTACK     ; 20
	const BATTLE_ANIM_GFX_GLOBE          ; 21
	const BATTLE_ANIM_GFX_SHAPES         ; 22
	const BATTLE_ANIM_GFX_OBJECTS        ; 23
	const BATTLE_ANIM_GFX_SHINE          ; 24
	const BATTLE_ANIM_GFX_ANGELS         ; 25
	const BATTLE_ANIM_GFX_WAVE           ; 26
	const BATTLE_ANIM_GFX_AEROBLAST      ; 27
	const BATTLE_ANIM_GFX_PLAYERHEAD     ; 28
	const BATTLE_ANIM_GFX_ENEMYFEET      ; 29
    ; New Graphics
	const BATTLE_ANIM_GFX_BEAM_LIGHT     ; 2a
	const BATTLE_ANIM_GFX_WIND_BG        ; 2b
	const BATTLE_ANIM_GFX_MISC_2         ; 2c
	const BATTLE_ANIM_GFX_SMOKE_PUFF     ; 2d
	const BATTLE_ANIM_GFX_FLATTER        ; 2e
	const BATTLE_ANIM_GFX_TAUNT          ; 2f
	const BATTLE_ANIM_GFX_STARS          ; 2f
	const BATTLE_ANIM_GFX_COSMIC_POWER   ; 30
DEF NUM_BATTLE_ANIM_GFX EQU const_value - 1

; battle_bg_effect struct members (see macros/ram.asm)
rsreset
DEF BG_EFFECT_STRUCT_FUNCTION    rb
DEF BG_EFFECT_STRUCT_JT_INDEX    rb
DEF BG_EFFECT_STRUCT_BATTLE_TURN rb
DEF BG_EFFECT_STRUCT_PARAM       rb
DEF BG_EFFECT_STRUCT_LENGTH EQU _RS
DEF NUM_BG_EFFECTS EQU 5 ; see wActiveBGEffects

; anim_bgeffect battle turn values for some effects
	const_def
	const BG_EFFECT_TARGET ; 0
	const BG_EFFECT_USER   ; 1

; battle palettes
	const_def
	const PAL_BATTLE_BG_PLAYER    ; 0
	const PAL_BATTLE_BG_ENEMY     ; 1
	const PAL_BATTLE_BG_ENEMY_HP  ; 2
	const PAL_BATTLE_BG_PLAYER_HP ; 3
	const PAL_BATTLE_BG_EXP       ; 4
	const PAL_BATTLE_BG_5         ; 5
	const PAL_BATTLE_BG_6         ; 6
	const PAL_BATTLE_BG_TEXT      ; 7
; sentinel palette indices that denote "user" or "target" for battle pics
; (anim_setbgpal applies them to the relevant obj palettes too)
	const PAL_BATTLE_BG_USER       ; 8
	const PAL_BATTLE_BG_TARGET     ; 9

; animation object palettes
	const_def
	const PAL_BATTLE_OB_ENEMY  ; 0
	const PAL_BATTLE_OB_PLAYER ; 1
	const PAL_BATTLE_OB_GRAY   ; 2
	const PAL_BATTLE_OB_YELLOW ; 3
	const PAL_BATTLE_OB_RED    ; 4
	const PAL_BATTLE_OB_GREEN  ; 5
	const PAL_BATTLE_OB_BLUE   ; 6
	const PAL_BATTLE_OB_BROWN  ; 7

; custom bg/obj palettes (see gfx/battle_anims/custom.pal)
; the first 6 matches PAL_BATTLE_OB_GRAY/YELLOW/...
	const_def
	const PAL_BTLCUSTOM_GRAY           ; 00
	const PAL_BTLCUSTOM_YELLOW         ; 01
	const PAL_BTLCUSTOM_RED            ; 02
	const PAL_BTLCUSTOM_GREEN          ; 03
	const PAL_BTLCUSTOM_BLUE           ; 04
	const PAL_BTLCUSTOM_BROWN          ; 05
	const PAL_BTLCUSTOM_PURPLE         ; 06
	const PAL_BTLCUSTOM_ICE            ; 07
	const PAL_BTLCUSTOM_FIRE           ; 08
	const PAL_BTLCUSTOM_WATER          ; 09 
	const PAL_BTLCUSTOM_BUBBLE         ; 0a
	const PAL_BTLCUSTOM_AURORA         ; 0b
	const PAL_BTLCUSTOM_GLOBE          ; 0c
	const PAL_BTLCUSTOM_SPORE          ; 0d
	const PAL_BTLCUSTOM_DRAGON_RAGE    ; 0e
	const PAL_BTLCUSTOM_DRAGONBREATH   ; 0f
	const PAL_BTLCUSTOM_LIGHT_SCREEN   ; 10
	const PAL_BTLCUSTOM_PEACH          ; 11
	const PAL_BTLCUSTOM_MIRROR_COAT    ; 12
	const PAL_BTLCUSTOM_HEAT_WAVE      ; 13
	const PAL_BTLCUSTOM_WILL_O_WISP    ; 14
	const PAL_BTLCUSTOM_COSMIC         ; 15
DEF NUM_CUSTOM_BATTLE_PALETTES EQU const_value

DEF PAL_BTLCUSTOM_DEFAULT EQU -1
