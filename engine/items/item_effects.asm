_DoItemEffect::
	ld a, [wCurItem]
	ld [wNamedObjectIndex], a
	call GetItemName
	call CopyName1
	ld a, 1
	ld [wItemEffectSucceeded], a
	push bc
	push de
	ld a, [wCurItem]
	call GetItemIndexFromID
	ld b, h
	ld c, l
	ld a, BANK(ItemEffects)
	ld hl, ItemEffects
	call LoadDoubleIndirectPointer
	pop de
	pop bc
	jp hl

ItemEffects:
; entries correspond to item ids (see constants/item_constants.asm)
	indirect_table 2, 1
	indirect_entries NUM_ITEM_POCKET, ItemEffects1
	indirect_entries FIRST_KEY_ITEM - 1 ; sparse table
	indirect_entries (FIRST_KEY_ITEM - 1) + NUM_KEY_ITEM_POCKET, ItemEffectsKeyItems
	indirect_entries FIRST_BALL_ITEM - 1 ; sparse table
	indirect_entries (FIRST_BALL_ITEM - 1) + NUM_BALL_ITEM_POCKET, ItemEffectsBalls
	indirect_entries FIRST_BERRY_ITEM - 1 ; sparse table
	indirect_entries (FIRST_BERRY_ITEM - 1) + NUM_BERRY_ITEM_POCKET, ItemEffectsBerries
	indirect_entries FIRST_MEDICINE_ITEM - 1 ; sparse table
	indirect_entries (FIRST_MEDICINE_ITEM - 1) + NUM_MEDICINE_ITEM_POCKET, ItemEffectsMedicineItems
	indirect_entries FIRST_VALUABLE_ITEM - 1 ; sparse table
	indirect_entries (FIRST_VALUABLE_ITEM - 1) + NUM_VALUABLE_ITEM_POCKET, ItemEffectsValuableItems
	indirect_table_end

ItemEffects1:
	dw NoEffect            ; BRIGHTPOWDER
	dw TownMapEffect       ; TOWN_MAP
	dw EvoStoneEffect      ; MOON_STONE
	dw EscapeRopeEffect    ; ESCAPE_ROPE
	dw RepelEffect         ; REPEL
	dw EvoStoneEffect      ; FIRE_STONE
	dw EvoStoneEffect      ; THUNDERSTONE
	dw EvoStoneEffect      ; WATER_STONE
	dw NoEffect            ; ITEM_19
	dw NoEffect            ; LUCKY_PUNCH
	dw XItemEffect         ; X_ACCURACY
	dw EvoStoneEffect      ; LEAF_STONE
	dw NoEffect            ; METAL_POWDER
	dw PokeDollEffect      ; POKE_DOLL
	dw GuardSpecEffect     ; GUARD_SPEC
	dw SuperRepelEffect    ; SUPER_REPEL
	dw MaxRepelEffect      ; MAX_REPEL
	dw DireHitEffect       ; DIRE_HIT
	dw NoEffect            ; ITEM_2D
	dw XItemEffect         ; X_ATTACK
	dw NoEffect            ; ITEM_32
	dw XItemEffect         ; X_DEFEND
	dw XItemEffect         ; X_SPEED
	dw XItemEffect         ; X_SP_ATK
	dw PokeFluteEffect     ; POKE_FLUTE
	dw NoEffect            ; EXP_SHARE
	dw NoEffect            ; QUICK_CLAW
	dw NoEffect            ; SOFT_SAND
	dw NoEffect            ; SHARP_BEAK
	dw NoEffect            ; POISON_BARB
	dw NoEffect            ; KINGS_ROCK
	dw NoEffect            ; SILVERPOWDER
	dw NoEffect            ; ITEM_5A
	dw NoEffect            ; AMULET_COIN
	dw NoEffect            ; CLEANSE_TAG
	dw NoEffect            ; MYSTIC_WATER
	dw NoEffect            ; TWISTEDSPOON
	dw NoEffect            ; BLACK_BELT_I
	dw NoEffect            ; ITEM_64
	dw NoEffect            ; BLACKGLASSES
	dw NoEffect            ; PINK_BOW
	dw NoEffect            ; STICK
	dw NoEffect            ; SMOKE_BALL
	dw NoEffect            ; NEVERMELTICE
	dw NoEffect            ; MAGNET
	dw NoEffect            ; EVERSTONE
	dw NoEffect            ; SPELL_TAG
	dw NoEffect            ; MIRACLE_SEED
	dw NoEffect            ; THICK_CLUB
	dw NoEffect            ; FOCUS_BAND
	dw NoEffect            ; ITEM_78
	dw NoEffect            ; HARD_STONE
	dw NoEffect            ; LUCKY_EGG
	dw NoEffect            ; ITEM_87
	dw NoEffect            ; ITEM_88
	dw NoEffect            ; CHARCOAL
	dw NoEffect            ; SCOPE_LENS
	dw NoEffect            ; ITEM_8D
	dw NoEffect            ; ITEM_8E
	dw NoEffect            ; METAL_COAT
	dw NoEffect            ; DRAGON_FANG
	dw NoEffect            ; ITEM_91
	dw NoEffect            ; LEFTOVERS
	dw NoEffect            ; ITEM_93
	dw NoEffect            ; ITEM_94
	dw NoEffect            ; ITEM_95
	dw NoEffect            ; DRAGON_SCALE
	dw NoEffect            ; BERSERK_GENE
	dw NoEffect            ; ITEM_99
	dw NoEffect            ; ITEM_9A
	dw NoEffect            ; ITEM_9B
	dw NoEffect            ; FLOWER_MAIL
	dw NoEffect            ; ITEM_A2
	dw NoEffect            ; LIGHT_BALL
	dw NormalBoxEffect     ; NORMAL_BOX
	dw GorgeousBoxEffect   ; GORGEOUS_BOX
	dw EvoStoneEffect      ; SUN_STONE
	dw NoEffect            ; POLKADOT_BOW
	dw NoEffect            ; ITEM_AB
	dw NoEffect            ; UP_GRADE
	dw NoEffect            ; ITEM_B0
	dw NoEffect            ; ITEM_B3
	dw NoEffect            ; SURF_MAIL
	dw NoEffect            ; LITEBLUEMAIL
	dw NoEffect            ; PORTRAITMAIL
	dw NoEffect            ; LOVELY_MAIL
	dw NoEffect            ; EON_MAIL
	dw NoEffect            ; MORPH_MAIL
	dw NoEffect            ; BLUESKY_MAIL
	dw NoEffect            ; MUSIC_MAIL
	dw NoEffect            ; MIRAGE_MAIL
	dw NoEffect            ; ITEM_BE
	dw NoEffect            ; ITEM_DC
	dw NoEffect            ; ITEM_C3
	dw NoEffect            ; ITEM_FA
	dw EvoStoneEffect      ; SHINY_STONE
	dw EvoStoneEffect      ; DUSK_STONE
	dw EvoStoneEffect      ; DAWN_STONE
	dw EvoStoneEffect      ; ICE_STONE 
	dw EvoStoneEffect      ; BLK_AUGURITE
	dw EvoStoneEffect      ; PEAT_BLOCK
	dw EvoStoneEffect      ; SWEET_APPLE
	dw EvoStoneEffect      ; TART_APPLE
	dw EvoStoneEffect      ; SYRUPY_APPLE
	dw EvoStoneEffect      ; GALAR_CUFF
	dw EvoStoneEffect      ; GALAR_WREATH
	dw EvoStoneEffect      ; HOLY_ARMOR
	dw EvoStoneEffect      ; CURSED_ARMOR
	dw EvoStoneEffect      ; ELECTIRIZER
	dw EvoStoneEffect      ; MAGMARIZER
	dw EvoStoneEffect      ; PROTECTOR
	dw EvoStoneEffect      ; DUBIOUS_DISC
	dw EvoStoneEffect      ; OVAL_STONE
	dw EvoStoneEffect      ; PRISM_SCALE
	dw EvoStoneEffect      ; RAZOR_CLAW
	dw EvoStoneEffect      ; RAZOR_FANG
	dw EvoStoneEffect      ; REAPER_CLOTH
	dw EvoStoneEffect      ; LINKING_CORD
	dw NoEffect            ; FAIRYFEATHER
	dw NoEffect            ; QUICK_POWDER
	dw NoEffect            ; EVIOLITE
	dw NoEffect            ; SOUL_DEW
	dw NoEffect            ; SOOTHE_BELL
	dw NoEffect            ; MIRROR_HERB
	dw NoEffect            ; MENTAL_HERB
	dw NoEffect            ; POWER_HERB
	dw NoEffect            ; WHITE_HERB
	dw NoEffect            ; FULL_INCENSE
	dw NoEffect            ; LAX_INCENSE
	dw NoEffect            ; LUCK_INCENSE
	dw NoEffect            ; ODD_INCENSE
	dw NoEffect            ; PURE_INCENSE
	dw NoEffect            ; ROCK_INCENSE
	dw NoEffect            ; ROSE_INCENSE
	dw NoEffect            ; SEA_INCENSE
	dw NoEffect            ; WAVE_INCENSE
	dw NoEffect            ; MACHO_BRACE
	dw NoEffect            ; POWER_ANKLET
	dw NoEffect            ; POWER_BAND
	dw NoEffect            ; POWER_BELT
	dw NoEffect            ; POWER_BRACER
	dw NoEffect            ; POWER_LENS
	dw NoEffect            ; POWER_WEIGHT
	dw XItemEffect         ; X_SP_DEF
	dw EvoStoneEffect      ; LEADER_CREST
	dw NoEffect            ; GRASSY_BLOCK
	dw NoEffect            ; FIERY_BLOCK
	dw NoEffect            ; CHILLY_BLOCK
	dw NoEffect            ; ZAPPY_BLOCK
	dw NoEffect            ; LOVELY_BLOCK
	dw NoEffect            ; CRUNCHYBLOCK
	dw NoEffect            ; AURORA_ORB
	dw XItemEffect         ; X_EVADE
	dw NoEffect            ; GLITTER_MAIL
	dw NoEffect            ; TROPIC_MAIL
	dw NoEffect            ; BREEZE_MAIL
	dw NoEffect            ; POSTCARD
	dw NoEffect            ; ROCKET_MAIL
	dw NoEffect            ; GOLD_MAIL
	dw NoEffect            ; ZIGZAG_MAIL
.IndirectEnd:

ItemEffectsKeyItems:
	dw BicycleEffect      ; BICYCLE
	dw CoinCaseEffect     ; COIN_CASE
	dw ItemfinderEffect   ; ITEMFINDER
	dw OldRodEffect       ; OLD_ROD
	dw GoodRodEffect      ; GOOD_ROD
	dw SuperRodEffect     ; SUPER_ROD
	dw NoEffect           ; RED_SCALE
	dw NoEffect           ; SECRETPOTION
	dw NoEffect           ; S_S_TICKET
	dw NoEffect           ; MYSTERY_EGG
	dw NoEffect           ; CLEAR_BELL
	dw NoEffect           ; SILVER_WING
	dw NoEffect           ; GS_BALL
	dw BlueCardEffect     ; BLUE_CARD
	dw CardKeyEffect      ; CARD_KEY
	dw NoEffect           ; MACHINE_PART
	dw NoEffect           ; EGG_TICKET
	dw NoEffect           ; LOST_ITEM
	dw BasementKeyEffect  ; BASEMENT_KEY
	dw NoEffect           ; PASS
	dw SquirtbottleEffect ; SQUIRTBOTTLE
	dw NoEffect           ; RAINBOW_WING
	dw NoEffect           ; SECRET_STASH
	dw TownMapEffect      ; SEA_MAP
	dw NoEffect           ; BERRY_LOG (Effect not Implemented Yet)
	dw NoEffect           ; EXCEL_SCOPE
.IndirectEnd:

ItemEffectsBalls:
	dw PokeBallEffect ; MASTER_BALL
	dw PokeBallEffect ; ULTRA_BALL
	dw PokeBallEffect ; GREAT_BALL
	dw PokeBallEffect ; POKE_BALL
	dw PokeBallEffect ; SAFARI_BALL
	dw PokeBallEffect ; NET_BALL
	dw PokeBallEffect ; DIVE_BALL
	dw PokeBallEffect ; NEST_BALL
	dw PokeBallEffect ; REPEAT_BALL
	dw PokeBallEffect ; TIMER_BALL
	dw PokeBallEffect ; LUXURY_BALL
	dw PokeBallEffect ; PREMIER_BALL
	dw PokeBallEffect ; FAST_BALL
	dw PokeBallEffect ; LEVEL_BALL
	dw PokeBallEffect ; LURE_BALL
	dw PokeBallEffect ; HEAVY_BALL
	dw PokeBallEffect ; LOVE_BALL
	dw PokeBallEffect ; FRIEND_BALL
	dw PokeBallEffect ; MOON_BALL
	dw PokeBallEffect ; PARK_BALL
	dw PokeBallEffect ; SPORT_BALL
	dw PokeBallEffect ; DUSK_BALL
	dw PokeBallEffect ; HEAL_BALL
	dw PokeBallEffect ; QUICK_BALL
	dw PokeBallEffect ; CHERISH_BALL
	dw PokeBallEffect ; DREAM_BALL
	dw PokeBallEffect ; BEAST_BALL
	dw PokeBallEffect ; STRANGE_BALL
	dw PokeBallEffect ; POKE_BALL_H
	dw PokeBallEffect ; GREAT_BALL_H
	dw PokeBallEffect ; ULTRA_BALL_H
	dw PokeBallEffect ; HEAVY_BALL_H
	dw PokeBallEffect ; LEADEN_BALL 
	dw PokeBallEffect ; GIGATON_BALL
	dw PokeBallEffect ; FEATHER_BALL
	dw PokeBallEffect ; WING_BALL
	dw PokeBallEffect ; JET_BALL
	dw PokeBallEffect ; ORIGIN_BALL
	dw PokeBallEffect ; ROCKET_BALL
	dw PokeBallEffect ; GS_BALL
.IndirectEnd:

ItemEffectsBerries:
	dw NoEffect            ; RED_APRICORN
	dw NoEffect            ; BLU_APRICORN
	dw NoEffect            ; YLW_APRICORN
	dw NoEffect            ; GRN_APRICORN
	dw NoEffect            ; WHT_APRICORN
	dw NoEffect            ; BLK_APRICORN
	dw NoEffect            ; PNK_APRICORN
	dw NoEffect            ; BRN_APRICORN
	dw StatusHealingEffect ; PECHA_BERRY
	dw StatusHealingEffect ; CHERI_BERRY
	dw StatusHealingEffect ; ASPEAR_BERRY
	dw StatusHealingEffect ; RAWST_BERRY
	dw BitterBerryEffect   ; PERSIM_BERRY
	dw StatusHealingEffect ; CHESTO_BERRY
	dw StatusHealingEffect ; LUM_BERRY
	dw RestorePPEffect     ; LEPPA_BERRY
	dw RestoreHPEffect     ; ORAN_BERRY
	dw RestoreHPEffect     ; SITRUS_BERRY
	dw NoEffect            ; FIGY_BERRY
	dw NoEffect            ; WIKI_BERRY
	dw NoEffect            ; MAGO_BERRY
	dw NoEffect            ; AGUAV_BERRY
	dw NoEffect            ; IAPAPA_BERRY
	dw NoEffect            ; POMEG_BERRY
	dw NoEffect            ; KELPSY_BERRY
	dw NoEffect            ; QUALOT_BERRY
	dw NoEffect            ; HONDEW_BERRY
	dw NoEffect            ; GREPA_BERRY
	dw NoEffect            ; TAMATO_BERRY
	dw NoEffect            ; OCCA_BERRY
	dw NoEffect            ; PASSHO_BERRY
	dw NoEffect            ; WACAN_BERRY
	dw NoEffect            ; RINDO_BERRY
	dw NoEffect            ; YACHE_BERRY
	dw NoEffect            ; CHOPLE_BERRY
	dw NoEffect            ; KEBIA_BERRY
	dw NoEffect            ; SHUCA_BERRY
	dw NoEffect            ; COBA_BERRY
	dw NoEffect            ; PAYAPA_BERRY
	dw NoEffect            ; TANGA_BERRY
	dw NoEffect            ; CHARTI_BERRY
	dw NoEffect            ; KASIB_BERRY
	dw NoEffect            ; HABAN_BERRY
	dw NoEffect            ; COLBUR_BERRY
	dw NoEffect            ; BABIRI_BERRY
	dw NoEffect            ; CHILAN_BERRY
	dw NoEffect            ; ROSELI_BERRY
	dw NoEffect            ; LIECHI_BERRY
	dw NoEffect            ; GANLON_BERRY
	dw NoEffect            ; SALAC_BERRY
	dw NoEffect            ; PETAYA_BERRY
	dw NoEffect            ; APICOT_BERRY
	dw NoEffect            ; LANSAT_BERRY
	dw NoEffect            ; STARF_BERRY
	dw NoEffect            ; KEE_BERRY
	dw NoEffect            ; MARANGABERRY
	dw NoEffect            ; ENIGMA_BERRY
	dw NoEffect            ; MICLE_BERRY
	dw NoEffect            ; CUSTAP_BERRY
	dw NoEffect            ; JABOCA_BERRY
	dw NoEffect            ; ROWAP_BERRY
	dw NoEffect            ; EGGANT_BERRY
	dw NoEffect            ; UNYINN_BERRY GINEMA
	dw RestorePPEffect     ; HOPO_BERRY
	dw StatusHealingEffect ; PUMKIN_BERRY
	dw BitterBerryEffect   ; CAREEP_BERRY TOUGA
	dw StatusHealingEffect ; BITMEL_BERRY YAGO
	dw StatusHealingEffect ; DRASH_BERRY
	dw NoEffect            ; RAZZ_BERRY
	dw NoEffect            ; BLUK_BERRY
	dw NoEffect            ; NANAB_BERRY
	dw NoEffect            ; WEPEAR_BERRY
	dw NoEffect            ; PINAP_BERRY
	dw NoEffect            ; CORNN_BERRY
	dw NoEffect            ; MAGOST_BERRY
	dw NoEffect            ; RABUTA_BERRY
	dw NoEffect            ; NOMEL_BERRY
	dw NoEffect            ; SPELON_BERRY
	dw NoEffect            ; PAMTRE_BERRY
	dw NoEffect            ; WATMEL_BERRY
	dw NoEffect            ; DURIN_BERRY
	dw NoEffect            ; BELUE_BERRY
	dw NoEffect            ; STRIB_BERRY
	dw NoEffect            ; TILOTA_BERRY CHILAN
	dw NoEffect            ; NUTPEA_BERRY
	dw NoEffect            ; KRAU_BERRY   KUO
	dw NoEffect            ; LIGARC_BERRY NINIKU
	dw NoEffect            ; TOTAPO_BERRY TOPO
	dw PinkanBerry         ; PINKAN_BERRY
.IndirectEnd:

ItemEffectsMedicineItems:
	dw StatusHealingEffect ; ANTIDOTE
	dw StatusHealingEffect ; BURN_HEAL
	dw StatusHealingEffect ; ICE_HEAL
	dw StatusHealingEffect ; AWAKENING
	dw StatusHealingEffect ; PARLYZ_HEAL
	dw FullRestoreEffect   ; FULL_RESTORE
	dw RestoreHPEffect     ; MAX_POTION
	dw RestoreHPEffect     ; HYPER_POTION
	dw RestoreHPEffect     ; SUPER_POTION
	dw RestoreHPEffect     ; POTION
	dw RestorePPEffect     ; MAX_ELIXIR
	dw VitaminEffect       ; HP_UP
	dw VitaminEffect       ; PROTEIN
	dw VitaminEffect       ; IRON
	dw VitaminEffect       ; CARBOS
	dw VitaminEffect       ; CALCIUM
	dw RareCandyEffect     ; RARE_CANDY
	dw StatusHealingEffect ; FULL_HEAL
	dw ReviveEffect        ; REVIVE
	dw ReviveEffect        ; MAX_REVIVE
	dw RestoreHPEffect     ; FRESH_WATER
	dw RestoreHPEffect     ; SODA_POP
	dw RestoreHPEffect     ; LEMONADE
	dw RestorePPEffect     ; PP_UP
	dw RestorePPEffect     ; ETHER
	dw RestorePPEffect     ; MAX_ETHER
	dw RestorePPEffect     ; ELIXIR
	dw RestoreHPEffect     ; MOOMOO_MILK
	dw RestoreHPEffect     ; RAGECANDYBAR
	dw EnergypowderEffect  ; ENERGYPOWDER
	dw EnergyRootEffect    ; ENERGY_ROOT
	dw HealPowderEffect    ; HEAL_POWDER
	dw RevivalHerbEffect   ; REVIVAL_HERB
	dw VitaminEffect       ; ZINC
	dw RestoreHPEffect     ; BERRY_JUICE
	dw SacredAshEffect     ; SACRED_ASH
	dw RestorePPEffect     ; PP_MAX
	dw StatusHealingEffect ; PEWTER_ARARE
	dw StatusHealingEffect ; SEVENTH_HEAVEN
	dw MintEffect ; LONELY_MINT
	dw MintEffect ; ADAMANT_MINT
	dw MintEffect ; NAUGHTY_MINT
	dw MintEffect ; BRAVE_MINT
	dw MintEffect ; BOLD_MINT
	dw MintEffect ; IMPISH_MINT
	dw MintEffect ; LAX_MINT
	dw MintEffect ; RELAXED_MINT
	dw MintEffect ; MODEST_MINT
	dw MintEffect ; MILD_MINT
	dw MintEffect ; RASH_MINT
	dw MintEffect ; QUIET_MINT
	dw MintEffect ; CALM_MINT
	dw MintEffect ; GENTLE_MINT
	dw MintEffect ; CAREFUL_MINT
	dw MintEffect ; SASSY_MINT
	dw MintEffect ; TIMID_MINT
	dw MintEffect ; HASTY_MINT
	dw MintEffect ; JOLLY_MINT
	dw MintEffect ; NAIVE_MINT
	dw MintEffect ; SERIOUS_MINT
	dw MintEffect ; HARDY_MINT
	dw MintEffect ; DOCILE_MINT
	dw MintEffect ; BASHFUL_MINT
	dw MintEffect ; QUIRKY_MINT
	dw AbilityUp ; ABILITY_UP
	dw PinkCure ; PINK_CURE
	; dw RareCandyEffect ; EXP_CANDY_XS
	; dw RareCandyEffect ; EXP_CANDY_S
	; dw RareCandyEffect ; EXP_CANDY_M
	; dw RareCandyEffect ; EXP_CANDY_L
	; dw RareCandyEffect ; EXP_CANDY_XL
.IndirectEnd:

ItemEffectsValuableItems:
	dw NoEffect            ; NUGGET
	dw NoEffect            ; SILVER_LEAF
	dw NoEffect            ; GOLD_LEAF
	dw NoEffect            ; TINYMUSHROOM
	dw NoEffect            ; BIG_MUSHROOM
	dw NoEffect            ; SLOWPOKETAIL
	dw NoEffect            ; PEARL
	dw NoEffect            ; BIG_PEARL
	dw NoEffect            ; STARDUST
	dw NoEffect            ; STAR_PIECE
	dw NoEffect            ; BRICK_PIECE
	dw NoEffect            ; HEART_SCALE
	dw NoEffect            ; BLUE_SHARD
	dw NoEffect            ; GREEN_SHARD
	dw NoEffect            ; RED_SHARD
	dw NoEffect            ; YELLOW_SHARD
	dw NoEffect            ; RARE_BONE
	dw NoEffect            ; BALMMUSHROOM
	dw NoEffect            ; BIG_NUGGET
	dw NoEffect            ; COMET_SHARD
	dw NoEffect            ; PEARL_STRING
	dw NoEffect            ; BEACH_GLASS
	dw NoEffect            ; PRETTY_SHELL
	dw NoEffect            ; TINY_BAMBOO
	dw NoEffect            ; BIG_BAMBOO
	dw NoEffect            ; SPIDER_SILK
	dw NoEffect            ; ANCIENT_VASE
	dw NoEffect            ; ANCIENT_CUP
	dw NoEffect            ; ANCIENT_JAR
	dw NoEffect            ; CLAY_SHARD
	dw NoEffect            ; HUGE_CRYSTAL
	dw NoEffect            ; BIG_JADE
	dw NoEffect            ; BIG_EMERALD
	dw NoEffect            ; BIG_RUBY
	dw NoEffect            ; BIG_SAPPHIRE
	dw NoEffect            ; BIG_AMETHYST
	dw NoEffect            ; BIG_TOPAZ
	dw NoEffect            ; BIG_GARNET
	dw NoEffect            ; BIG_ONYX
	dw NoEffect            ; BIG_DIAMOND
	dw NoEffect            ; SILVER_CAP
	dw NoEffect            ; GOLD_CAP
	dw NoEffect            ; GOLD_DUST
	dw NoEffect            ; GOLD_STATUE
	dw NoEffect            ; HONEY
	dw NoEffect            ; SWEET_HONEY
	dw NoEffect            ; CANDYTRUFFLE
.IndirectEnd:

PokeBallEffect:
	ld a, [wBattleMode]
	dec a
	jmp nz, UseBallInTrainerBattle

	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL
	jr z, .room_in_party

	ld a, [wPartyCount]
	cp PARTY_LENGTH
	jr nz, .room_in_party

	farcall NewStorageBoxPointer
	jmp c, Ball_BoxIsFullMessage

.room_in_party
	xor a
	ld [wWildMon], a
	ld a, [wBattleType]
	cp BATTLETYPE_CONTEST
	call nz, ReturnToBattle_UseBall

	ld hl, wOptions
	res NO_TEXT_SCROLL, [hl]
	ld hl, ItemUsedText
	call PrintText

	ld a, [wOTPartyMon1Species]
	ld [wWildMon], a

	farcall GetModifiedCaptureRate

	ld d, a
	push de
	ld a, [wBattleMonItem]
	ld b, a
	farcall GetItemHeldEffect
	ld a, b
	cp HELD_CATCH_CHANCE
	pop de
	ld a, d
	jr nz, .max_2
	add c
	jr nc, .max_2
	ld a, $ff
.max_2

	ld [wFinalCatchRate], a
	ld a, [wTempEnemyMonSpecies]
	ld [wEnemyMonSpecies], a
	ld [wWildMon], a

	ld c, 20
	call DelayFrames

	ld a, [wCurItem]
	ld [wBattleAnimParam], a
	call GetItemIndexFromID
	cphl16 POKE_BALL + 1 ; Assumes Master/Ultra/Great come before
	jr c, .not_kurt_ball
	ld hl, POKE_BALL
	call GetItemIDFromIndex
	ld [wBattleAnimParam], a
.not_kurt_ball

	ld de, ANIM_THROW_POKE_BALL
	ld a, e
	ld [wFXAnimID], a
	ld a, d
	ld [wFXAnimID + 1], a
	xor a
	ldh [hBattleTurn], a
	ld [wThrownBallWobbleCount], a
	ld [wNumHits], a
	predef PlayBattleAnim

	ld a, [wThrownBallWobbleCount]
	and a
	ld hl, BallBrokeFreeText
	jmp z, .shake_and_break_free
	dec a
	ld hl, BallAppearedCaughtText
	jmp z, .shake_and_break_free
	dec a
	ld hl, BallAlmostHadItText
	jmp z, .shake_and_break_free
	dec a
	ld hl, BallSoCloseText
	jmp z, .shake_and_break_free

.caught
	ld hl, wEnemyMonStatus
	ld a, [hli]
	push af
	inc hl
	ld a, [hli]
	push af
	ld a, [hl]
	push af
	push hl
	ld hl, wEnemyMonItem
	ld a, [hl]
	push af
	push hl
	ld hl, wEnemySubStatus5
	ld a, [hl]
	push af
	set SUBSTATUS_TRANSFORMED, [hl]

	bit SUBSTATUS_TRANSFORMED, a
	jr nz, .load_data

	ld hl, wEnemyBackupIVsAndPersonality
	ld a, [wEnemyMonIVs]
	ld [hli], a
	ld a, [wEnemyMonIVs + 1]
	ld [hli], a
	ld a, [wEnemyMonIVs + 2]
	ld [hli], a
	ld a, [wEnemyMonIVs + 3]
	ld [hli], a
	ld a, [wEnemyMonPersonality]
	ld [hli], a
	ld a, [wEnemyMonPersonality + 1]
	ld [hl], a

.load_data
	ld a, [wTempEnemyMonSpecies]
	ld [wCurPartySpecies], a
	ld a, [wEnemyMonLevel]
	ld [wCurPartyLevel], a
	farcall LoadEnemyMon

	ld hl, wEnemyBackupIVsAndPersonality
	ld a, [hli]
	ld [wEnemyMonIVs], a
	ld a, [hli]
	ld [wEnemyMonIVs + 1], a
	ld a, [hli]
	ld [wEnemyMonIVs + 2], a
	ld a, [hli]
	ld [wEnemyMonIVs + 3], a
	ld a, [hli]
	ld [wEnemyMonPersonality], a
	ld a, [hl]
	ld [wEnemyMonPersonality + 1], a

	pop af
	ld [wEnemySubStatus5], a

	pop hl
	pop af
	ld [hl], a
	pop hl
	pop af
	ld [hld], a
	pop af
	ld [hld], a
	dec hl
	pop af
	ld [hl], a

	ld hl, wEnemySubStatus5
	bit SUBSTATUS_TRANSFORMED, [hl]
	jr nz, .Transformed
	ld hl, wWildMonMoves
	ld de, wEnemyMonMoves
	ld bc, NUM_MOVES
	rst CopyBytes

	ld hl, wWildMonPP
	ld de, wEnemyMonPP
	ld bc, NUM_MOVES
	rst CopyBytes

.Transformed:
	ld a, [wEnemyMonSpecies]
	ld [wWildMon], a
	ld [wCurPartySpecies], a
	ld [wTempSpecies], a
	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL
	jmp z, .FinishTutorial

	farcall StubbedTrainerRankings_WildMonsCaught

	ld hl, Text_GotchaMonWasCaught
	call PrintText

	call ClearSprites

	ld a, [wTempSpecies]
	call CheckCaughtMon

	ld a, c
	push af
	ld a, [wTempSpecies]
	call SetSeenAndCaughtMon
	pop af
	and a
	jr nz, .skip_pokedex

	call CheckReceivedDex
	jr z, .skip_pokedex

	ld hl, NewDexDataText
	call PrintText

	call ClearSprites

	ld a, [wEnemyMonSpecies]
	ld [wTempSpecies], a
	predef NewPokedexEntry

.skip_pokedex
	ld a, [wBattleType]
	cp BATTLETYPE_CONTEST
	jmp z, .catch_bug_contest_mon
	cp BATTLETYPE_CELEBI
	jr nz, .not_celebi
	ld hl, wBattleResult
	set BATTLERESULT_CAUGHT_CELEBI, [hl]
.not_celebi

	ld a, [wPartyCount]
	cp PARTY_LENGTH
	jr z, .SendToPC

	xor a ; PARTYMON
	ld [wMonType], a
	call ClearSprites

	predef TryAddMonToParty

	farcall SetCaughtData

	ld a, [wCurItem]
	call GetItemIndexFromID
	cphl16 FRIEND_BALL
	jr nz, .SkipPartyMonFriendBall

	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1Happiness
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes

	ld [hl], FRIEND_BALL_HAPPINESS

.SkipPartyMonFriendBall:
	ld hl, AskGiveNicknameText
	call PrintText

	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName

	call YesNoBox
	jmp c, .return_from_capture

	ld a, [wPartyCount]
	dec a
	ld [wCurPartyMon], a
	ld hl, wPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	rst AddNTimes

	ld d, h
	ld e, l
	push de
	xor a ; PARTYMON
	ld [wMonType], a
	ld b, NAME_MON
	farcall NamingScreen

	ld c, 15
	call FadeToWhite

	call LoadStandardFont

	pop hl
	ld de, wStringBuffer1
	call InitName

	jmp .return_from_capture

.SendToPC:
	call ClearSprites

	predef SendMonIntoBox

	farcall SetBoxMonCaughtData

	farcall NewStorageBoxPointer
	jr nc, .BoxNotFullYet
	ld hl, wBattleResult
	set BATTLERESULT_BOX_FULL, [hl]
.BoxNotFullYet:
	ld a, [wCurItem]
	call GetItemIndexFromID
	cphl16 FRIEND_BALL
	jr nz, .SkipBoxMonFriendBall
	; The captured mon is now first in the box
	ld a, FRIEND_BALL_HAPPINESS
	ld [wBufferMonHappiness], a
.SkipBoxMonFriendBall:
	ld hl, AskGiveNicknameText
	call PrintText

	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName

	call YesNoBox
	jr c, .SkipBoxMonNickname

	xor a
	ld [wCurPartyMon], a
	ld a, BUFFERMON
	ld [wMonType], a
	ld de, wMonOrItemNameBuffer
	ld b, NAME_MON
	farcall NamingScreen

	ld hl, wMonOrItemNameBuffer
	ld de, wBufferMonNickname
	ld bc, MON_NAME_LENGTH
	rst CopyBytes

	ld hl, wBufferMonNickname
	ld de, wStringBuffer1
	call InitName

.SkipBoxMonNickname:
	ld hl, wBufferMonNickname
	ld de, wMonOrItemNameBuffer
	ld bc, MON_NAME_LENGTH
	rst CopyBytes

	farcall UpdateStorageBoxMonFromTemp

	; Switch current Box if it was full. We can check this by checking if
	; the buffermon's box location matches the current box.
	ld a, [wBufferMonBox]
	ld b, a
	ld a, [wCurBox]
	inc a
	cp b
	jr z, .curbox_not_full

	push bc
	ld b, a
	farcall GetBoxName
	ld hl, CurBoxFullText
	call PrintText
	pop bc

	; Switch current box.
	ld a, b
	dec a
	ld [wCurBox], a

.curbox_not_full
	ld a, [wCurBox]
	inc a
	ld b, a
	farcall GetBoxName

	ld hl, BallSentToPCText
	call PrintText

	ld c, 15
	call FadeToWhite

	call LoadStandardFont
	jr .return_from_capture

.catch_bug_contest_mon
	call BugContest_SetCaughtContestMon
	jr .return_from_capture

.FinishTutorial:
	ld hl, Text_GotchaMonWasCaught
	jr .got_text

.shake_and_break_free
	xor a
	ld [wWildMon], a
.got_text
	call PrintText
	call ClearSprites

.return_from_capture
	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL
	ret z
	cp BATTLETYPE_DEBUG
	ret z
	cp BATTLETYPE_CONTEST
	jr z, .used_sport_ball

	ld a, [wWildMon]
	and a
	jr z, .toss

	call ClearBGPalettes
	call ClearTilemap

.toss
	ld hl, wNumItems
	inc a
	ld [wItemQuantityChange], a
	jmp TossItem

.used_sport_ball
	ld hl, wParkBallsRemaining
	dec [hl]
	ret

; BallDodgedText and BallMissedText were used in Gen 1.

BallBrokeFreeText:
	text_far _BallBrokeFreeText
	text_end

BallAppearedCaughtText:
	text_far _BallAppearedCaughtText
	text_end

BallAlmostHadItText:
	text_far _BallAlmostHadItText
	text_end

BallSoCloseText:
	text_far _BallSoCloseText
	text_end

Text_GotchaMonWasCaught:
	; Gotcha! @ was caught!@ @
	text_far Text_BallCaught
	text_asm
	call WaitSFX
	push bc
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	ld de, MUSIC_CAPTURE
	call PlayMusic
	pop bc
	ld hl, WaitButtonText
	ret

WaitButtonText:
	text_far _WaitButtonText
	text_end

CurBoxFullText:
	text_far _CurBoxFullText
	text_end

BallSentToPCText:
	text_far _BallSentToPCText
	text_end

NewDexDataText:
	text_far _NewDexDataText
	text_end

AskGiveNicknameText:
	text_far _AskGiveNicknameText
	text_end

ReturnToBattle_UseBall:
	farjp _ReturnToBattle_UseBall

TownMapEffect:
	call FadeToMenu
	farcall _TownMap
	call ExitMenu
	xor a
	ldh [hBGMapMode], a
	farcall Pack_InitGFX
	farcall WaitBGMap_DrawPackGFX
	farcall Pack_InitColors
	ret

BicycleEffect:
	jmp BikeFunction

EvoStoneEffect:
	ld b, PARTYMENUACTION_EVO_STONE
	call UseItem_SelectMon

	jr c, .DecidedNotToUse

	ld a, MON_ITEM
	call GetPartyParamLocation

	ld a, [hl]
	push hl
	call GetItemIndexFromID
	cphl16 EVERSTONE
	pop hl
	jr z, .NoEffect

	ld a, TRUE
	ld [wForceEvolution], a
	farcall EvolvePokemon

	ld a, [wMonTriedToEvolve]
	and a
	jmp nz, UseDisposableItem
; fallthrough
.NoEffect:
	call WontHaveAnyEffectMessage

.DecidedNotToUse:
	xor a
	ld [wItemEffectSucceeded], a
	ret

VitaminEffect:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon

	jmp c, RareCandy_StatBooster_ExitMenu

	call RareCandy_StatBooster_GetParameters

	call GetEVRelativePointer

	ld a, MON_EVS
	call GetPartyParamLocation

	ld a, [wBaseStats]
	cp 1 ; Check for Shedinja
	jr z, NoEffectMessage

	ld d, 10
	push bc
	push hl
	ld e, NUM_STATS
	ld bc, 0
.count_evs
	ld a, [hli]
	add c
	ld c, a
	adc b
	sub c
	ld b, a
	dec e
	jr nz, .count_evs
	ld a, d
	add c
	ld c, a
	adc b
	sub c
	ld b, a
	ld e, d
.decrease_evs_gained
	farcall IsEvsGreaterThan510
	jr nc, .check_ev_overflow
	dec e
	dec bc
	jr .decrease_evs_gained
.check_ev_overflow
	pop hl
	pop bc

	ld a, e
	and a
	jr z, NoEffectMessage

	add hl, bc
	ld a, [hl]
	cp 100
	jr nc, NoEffectMessage

	add e
	ld [hl], a
	call UpdateStatsAfterItem

	call GetEVRelativePointer

	ld hl, StatStrings
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, wStringBuffer2
	ld bc, ITEM_NAME_LENGTH
	rst CopyBytes

	call Play_SFX_FULL_HEAL

	ld hl, ItemStatRoseText
	call PrintText

	ld c, HAPPINESS_USEDITEM
	farcall ChangeHappiness

	jmp UseDisposableItem

NoEffectMessage:
	ld hl, ItemWontHaveEffectText
	call PrintText
	jmp ClearPalettes

UpdateStatsAfterItem:
	ld a, MON_MAXHP
	call GetPartyParamLocation
	ld d, h
	ld e, l
	ld a, MON_EVS - 1
	call GetPartyParamLocation
	ld b, TRUE
	predef_jump CalcMonStats

RareCandy_StatBooster_ExitMenu:
	xor a
	ld [wItemEffectSucceeded], a
	jmp ClearPalettes

ItemStatRoseText:
	text_far _ItemStatRoseText
	text_end

StatStrings:
	dw .health
	dw .attack
	dw .defense
	dw .speed
	dw .sp_atk
	dw .sp_def

.health  db "HEALTH@"
.attack  db "ATTACK@"
.defense db "DEFENSE@"
.speed   db "SPEED@"
.sp_atk  db "SPCL.ATK@"
.sp_def  db "SPCL.DEF@"

GetEVRelativePointer:
	ld a, [wCurItem]
	call GetItemIndexFromID
	ld de, EVItemPointerOffsets
.next
	ld a, [de]
	inc de
	cp l
	jr nz, .skip_entry
	ld a, [de]
	inc de
	cp h
	jr z, .got_it
	inc de
	jr .next ; possible infinite loop here
.skip_entry
	inc de
	inc de
	jr .next

.got_it
	ld a, [de]
	ld c, a
	ld b, 0
	ret

EVItemPointerOffsets:
	dwb HP_UP,   MON_HP_EV  - MON_EVS
	dwb PROTEIN, MON_ATK_EV - MON_EVS
	dwb IRON,    MON_DEF_EV - MON_EVS
	dwb CARBOS,  MON_SPD_EV - MON_EVS
	dwb CALCIUM, MON_SAT_EV - MON_EVS
	dwb ZINC,    MON_SDF_EV - MON_EVS

RareCandy_StatBooster_GetParameters:
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	ld [wTempSpecies], a
	ld a, MON_LEVEL
	call GetPartyParamLocation
	ld a, [hl]
	ld [wCurPartyLevel], a
	call GetBaseData
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	jmp GetNickname

RareCandyEffect:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon

	jmp c, RareCandy_StatBooster_ExitMenu

	call RareCandy_StatBooster_GetParameters

	ld a, MON_LEVEL
	call GetPartyParamLocation

	ld a, [hl]
	cp MAX_LEVEL
	jmp nc, NoEffectMessage

	inc a
	ld [hl], a
	ld [wCurPartyLevel], a
	push de
	ld d, a
	farcall CalcExpAtLevel

	pop de
	ld a, MON_EXP
	call GetPartyParamLocation

	ldh a, [hMultiplicand + 0]
	ld [hli], a
	ldh a, [hMultiplicand + 1]
	ld [hli], a
	ldh a, [hMultiplicand + 2]
	ld [hl], a

	ld a, MON_MAXHP
	call GetPartyParamLocation
	ld a, [hli]
	ld b, a
	ld c, [hl]
	push bc
	call UpdateStatsAfterItem

	ld a, MON_MAXHP + 1
	call GetPartyParamLocation

	pop bc
	ld a, [hld]
	sub c
	ld c, a
	ld a, [hl]
	sbc b
	ld b, a
	dec hl
	ld a, [hl]
	add c
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a
	farcall LevelUpHappinessMod

	ld a, PARTYMENUTEXT_LEVEL_UP
	call ItemActionText

	xor a ; PARTYMON
	ld [wMonType], a
	predef CopyMonToTempMon

	hlcoord 9, 0
	lb bc, 10, 9
	call Textbox

	hlcoord 11, 1
	ld bc, 4
	predef PrintTempMonStats

	call WaitPressAorB_BlinkCursor

	xor a ; PARTYMON
	ld [wMonType], a
	ld a, [wCurPartySpecies]
	ld [wTempSpecies], a
	predef LearnLevelMoves

	xor a
	ld [wForceEvolution], a
	farcall EvolvePokemon

	jmp UseDisposableItem

HealPowderEffect:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon

	jmp c, StatusHealer_ExitMenu

	call UseStatusHealer
	cp FALSE
	jr nz, .not_used

	ld c, HAPPINESS_BITTERPOWDER
	farcall ChangeHappiness
	call LooksBitterMessage
	xor a
; fallthrough
.not_used
	jmp StatusHealer_Jumptable

StatusHealingEffect:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon
	jmp c, StatusHealer_ExitMenu

FullyHealStatus:
	call UseStatusHealer
	jmp StatusHealer_Jumptable

UseStatusHealer:
	call IsMonFainted
	ld a, TRUE
	ret z
	call GetItemHealingAction
	ld a, MON_STATUS
	call GetPartyParamLocation
	ld a, [hl]
	and c
	jr nz, .good
	call IsItemUsedOnConfusedMon
	ld a, TRUE
	ret nc
	ld b, PARTYMENUTEXT_HEAL_CONFUSION
.good
	xor a
	ld [hl], a
	ld a, b
	ld [wPartyMenuActionText], a
	call HealStatus
	call Play_SFX_FULL_HEAL
	call ItemActionTextWaitButton
	call UseDisposableItem
	xor a ; FALSE
	ret

IsItemUsedOnConfusedMon:
	call IsItemUsedOnBattleMon
	jr nc, .nope
	ld a, [wPlayerSubStatus3]
	bit SUBSTATUS_CONFUSED, a
	jr z, .nope
	ld a, c
	cp $ff
	jr nz, .nope
	scf
	ret

.nope
	and a
	ret

BattlemonRestoreHealth:
	call IsItemUsedOnBattleMon
	ret nc
	ld a, MON_HP
	call GetPartyParamLocation
	ld a, [hli]
	ld [wBattleMonHP], a
	ld a, [hld]
	ld [wBattleMonHP + 1], a
	ret

HealStatus:
	call IsItemUsedOnBattleMon
	ret nc
	xor a
	ld [wBattleMonStatus], a
	ld hl, wPlayerSubStatus5
	res SUBSTATUS_TOXIC, [hl]
	ld hl, wPlayerSubStatus1
	res SUBSTATUS_NIGHTMARE, [hl]
	call GetItemHealingAction
	ld a, c
	cp %11111111
	jr nz, .not_full_heal
	ld hl, wPlayerSubStatus3
	res SUBSTATUS_CONFUSED, [hl]
.not_full_heal
	push bc
	farcall CalcPlayerStats
	pop bc
	ret

GetItemHealingAction:
	push hl
	push de
	ld hl, StatusHealingActions
	ld de, 4
.next
	call GetItemIDFromHL
	and a
	jr z, .found_it ; NO_ITEM Bound check.
	ld b, a
	ld a, [wCurItem]
	cp b
	jr z, .found_it
	add hl, de
	jr .next

.found_it
	inc hl
	inc hl
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ld c, a
	cp %11111111
	pop de
	pop hl
	ret

INCLUDE "data/items/heal_status.asm"

StatusHealer_Jumptable:
	ld hl, .dw
	jmp JumpTable

.dw
	dw StatusHealer_ClearPalettes
	dw StatusHealer_NoEffect
	dw StatusHealer_ExitMenu

RevivalHerbEffect:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon
	jmp c, StatusHealer_ExitMenu

	call RevivePokemon
	cp FALSE
	jr nz, StatusHealer_Jumptable

	ld c, HAPPINESS_REVIVALHERB
	farcall ChangeHappiness
	call LooksBitterMessage
	xor a
	jr StatusHealer_Jumptable

ReviveEffect:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon
	jmp c, StatusHealer_ExitMenu

	call RevivePokemon
	jr StatusHealer_Jumptable

RevivePokemon:
	call IsMonFainted
	ld a, TRUE
	ret nz
	ld a, [wBattleMode]
	and a
	jr z, .skip_to_revive

	ld a, [wCurPartyMon]
	ld c, a
	ld d, 0
	ld hl, wBattleParticipantsIncludingFainted
	ld b, CHECK_FLAG
	predef SmallFarFlagAction
	ld a, c
	and a
	jr z, .skip_to_revive

	ld a, [wCurPartyMon]
	ld c, a
	ld hl, wBattleParticipantsNotFainted
	ld b, SET_FLAG
	predef SmallFarFlagAction

.skip_to_revive
	xor a
	ld [wLowHealthAlarm], a
	ld a, [wCurItem]
	push hl
	call GetItemIndexFromID
	cphl16 REVIVE
	pop hl
	jr z, .revive_half_hp

	call ReviveFullHP
	jr .finish_revive

.revive_half_hp
	call ReviveHalfHP

.finish_revive
	call HealHP_SFX_GFX
	ld a, PARTYMENUTEXT_REVIVE
	ld [wPartyMenuActionText], a
	call ItemActionTextWaitButton
	call UseDisposableItem
	xor a ; FALSE
	ret

FullRestoreEffect:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon
	jmp c, StatusHealer_ExitMenu

	call IsMonFainted
	jmp z, StatusHealer_NoEffect

	call IsMonAtFullHealth
	jmp nc, FullyHealStatus
	call .FullRestore
	jmp StatusHealer_Jumptable

.FullRestore:
	xor a
	ld [wLowHealthAlarm], a
	call ReviveFullHP
	ld a, MON_STATUS
	call GetPartyParamLocation
	xor a
	ld [hli], a
	ld [hl], a
	call HealStatus
	call BattlemonRestoreHealth
	call HealHP_SFX_GFX
	ld a, PARTYMENUTEXT_HEAL_HP
	ld [wPartyMenuActionText], a
	call ItemActionTextWaitButton
	call UseDisposableItem
	xor a
	ret

BitterBerryEffect:
	ld hl, wPlayerSubStatus3
	bit SUBSTATUS_CONFUSED, [hl]
	ld a, 1
	jr z, .done

	res SUBSTATUS_CONFUSED, [hl]
	xor a
	ldh [hBattleTurn], a
	call UseItemText

	ld hl, ConfusedNoMoreText
	call StdBattleTextbox
	xor a
; fallthrough
.done
	jmp StatusHealer_Jumptable

RestoreHPEffect:
	call ItemRestoreHP
	jmp StatusHealer_Jumptable

EnergypowderEffect:
	ld c, HAPPINESS_BITTERPOWDER
	jr EnergypowderEnergyRootCommon

EnergyRootEffect:
	ld c, HAPPINESS_ENERGYROOT

EnergypowderEnergyRootCommon:
	push bc
	call ItemRestoreHP
	pop bc
	and a
	jr nz, .skip_happiness

	farcall ChangeHappiness
	call LooksBitterMessage
	xor a
; fallthrough
.skip_happiness
	jmp StatusHealer_Jumptable

ItemRestoreHP:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon
	ld a, 2
	ret c

	call IsMonFainted
	ld a, 1
	ret z

	call IsMonAtFullHealth
	ld a, 1
	ret nc

	xor a
	ld [wLowHealthAlarm], a
	call GetHealingItemAmount
	call RestoreHealth
	call BattlemonRestoreHealth
	call HealHP_SFX_GFX
	ld a, PARTYMENUTEXT_HEAL_HP
	ld [wPartyMenuActionText], a
	call ItemActionTextWaitButton
	call UseDisposableItem
	xor a
	ret

HealHP_SFX_GFX:
	push de
	ld de, SFX_POTION
	call WaitPlaySFX
	pop de
	ld a, [wCurPartyMon]
	hlcoord 11, 0
	ld bc, SCREEN_WIDTH * 2
	rst AddNTimes
	ld a, $2
	ld [wWhichHPBar], a
	predef_jump AnimateHPBar

UseItem_SelectMon:
	call .SelectMon
	ret c

	ld a, [wCurPartySpecies]
	cp EGG
	jr nz, .not_egg

	call CantUseOnEggMessage
	scf
	ret

.not_egg
	and a
	ret

.SelectMon:
	ld a, b
	ld [wPartyMenuActionText], a
	push hl
	push de
	push bc
	call ClearBGPalettes
	call ChooseMonToUseItemOn
	jmp PopBCDEHL

ChooseMonToUseItemOn:
	farcall LoadPartyMenuGFX
	farcall InitPartyMenuWithCancel
	farcall InitPartyMenuGFX
	farcall WritePartyMenuTilemap
	farcall PlacePartyMenuText
	call WaitBGMap
	call SetDefaultBGPAndOBP
	call DelayFrame
	farjp PartyMenuSelect

ItemActionText:
	ld [wPartyMenuActionText], a
	ld a, [wCurPartySpecies]
	push af
	ld a, [wCurPartyMon]
	push af
	push hl
	push de
	push bc
	farcall WritePartyMenuTilemap
	farcall PrintPartyMenuActionText
	call WaitBGMap
	call SetDefaultBGPAndOBP
	call DelayFrame
	pop bc
	pop de
	pop hl
	pop af
	ld [wCurPartyMon], a
	pop af
	ld [wCurPartySpecies], a
	ret

ItemActionTextWaitButton:
	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 0
	ld bc, wTilemapEnd - wTilemap
	ld a, " "
	rst ByteFill
	ld a, [wPartyMenuActionText]
	call ItemActionText
	ld a, $1
	ldh [hBGMapMode], a
	ld c, 50
	call DelayFrames
	jmp WaitPressAorB_BlinkCursor

StatusHealer_NoEffect:
	call WontHaveAnyEffectMessage
	jr StatusHealer_ClearPalettes

StatusHealer_ExitMenu:
	xor a
	ld [wItemEffectSucceeded], a
StatusHealer_ClearPalettes:
	jmp ClearPalettes

IsItemUsedOnBattleMon:
	ld a, [wBattleMode]
	and a
	ret z
	ld a, [wCurPartyMon]
	push hl
	ld hl, wCurBattleMon
	cp [hl]
	pop hl
	jr nz, .nope
	scf
	ret

.nope
	xor a
	ret

ReviveHalfHP:
	call LoadHPFromBuffer1
	srl d
	rr e
	jr ContinueRevive

ReviveFullHP:
	call LoadHPFromBuffer1
ContinueRevive:
	ld a, MON_HP
	call GetPartyParamLocation
	ld a, d
	ld [hli], a
	ld [hl], e
	jr LoadCurHPIntoBuffer3

RestoreHealth:
	ld a, MON_HP + 1
	call GetPartyParamLocation
	ld a, [hl]
	add e
	ld [hld], a
	ld a, [hl]
	adc d
	ld [hl], a
	jr c, ReviveFullHP
	call LoadCurHPIntoBuffer3
	ld a, MON_HP + 1
	call GetPartyParamLocation
	ld d, h
	ld e, l
	ld a, MON_MAXHP + 1
	call GetPartyParamLocation
	ld a, [de]
	sub [hl]
	dec de
	dec hl
	ld a, [de]
	sbc [hl]
	ret c
	jr ReviveFullHP

RemoveHP:
	ld a, MON_HP + 1
	call GetPartyParamLocation
	ld a, [hl]
	sub e
	ld [hld], a
	ld a, [hl]
	sbc d
	ld [hl], a
	jr nc, LoadCurHPIntoBuffer3
	xor a
	ld [hld], a
	ld [hl], a
	jr LoadCurHPIntoBuffer3

IsMonFainted:
	push de
	call LoadMaxHPIntoBuffer1
	call LoadCurHPIntoBuffer2
	call LoadHPFromBuffer2
	ld a, d
	or e
	pop de
	ret

IsMonAtFullHealth:
	call LoadHPFromBuffer2
	ld h, d
	ld l, e
	call LoadHPFromBuffer1
	ld a, l
	sub e
	ld a, h
	sbc d
	ret

LoadCurHPIntoBuffer3:
	ld a, MON_HP
	call GetPartyParamLocation
	ld a, [hli]
	ld [wHPBuffer3 + 1], a
	ld a, [hl]
	ld [wHPBuffer3], a
	ret

LoadCurHPIntoBuffer2:
	ld a, MON_HP
	call GetPartyParamLocation
	ld a, [hli]
	ld [wHPBuffer2 + 1], a
	ld a, [hl]
	ld [wHPBuffer2], a
	ret

LoadHPFromBuffer2:
	ld a, [wHPBuffer2 + 1]
	ld d, a
	ld a, [wHPBuffer2]
	ld e, a
	ret

LoadMaxHPIntoBuffer1:
	push hl
	ld a, MON_MAXHP
	call GetPartyParamLocation
	ld a, [hli]
	ld [wHPBuffer1 + 1], a
	ld a, [hl]
	ld [wHPBuffer1], a
	pop hl
	ret

LoadHPFromBuffer1:
	ld a, [wHPBuffer1 + 1]
	ld d, a
	ld a, [wHPBuffer1]
	ld e, a
	ret

GetOneFifthMaxHP:
	push bc
	ld a, MON_MAXHP
	call GetPartyParamLocation
	ld a, [hli]
	ldh [hDividend + 0], a
	ld a, [hl]
	ldh [hDividend + 1], a
	ld a, 5
	ldh [hDivisor], a
	ld b, 2
	call Divide
	ldh a, [hQuotient + 2]
	ld d, a
	ldh a, [hQuotient + 3]
	ld e, a
	pop bc
	ret

GetHealingItemAmount:
	push hl
	ld hl, HealingHPAmounts
	; [hl] == $ffff?
.check
	push hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	cphl16 $ffff
	pop hl
	jr z, .not_found ; branch if $ffff
	call GetItemIDFromHL
	ld b, a
	ld a, [wCurItem]

	inc hl
	inc hl ; hl at price

	cp b
	jr z, .done
	inc hl
	inc hl
	jr .check

.not_found:
	inc hl
	inc hl
	scf
.done
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	ret

INCLUDE "data/items/heal_hp.asm"

Softboiled_MilkDrinkFunction:
; Softboiled/Milk Drink in the field
	ld a, [wPartyMenuCursor]
	dec a
	ld b, a
	call .SelectMilkDrinkRecipient ; select pokemon
	jr c, .skip
	ld a, b
	ld [wCurPartyMon], a
	call IsMonFainted
	call GetOneFifthMaxHP
	call RemoveHP
	push bc
	call HealHP_SFX_GFX
	pop bc
	call GetOneFifthMaxHP
	ld a, c
	ld [wCurPartyMon], a
	call IsMonFainted
	call RestoreHealth
	call HealHP_SFX_GFX
	ld a, PARTYMENUTEXT_HEAL_HP
	call ItemActionText
	call JoyWaitAorB
.skip
	ld a, b
	inc a
	ld [wPartyMenuCursor], a
	ret

.SelectMilkDrinkRecipient:
.loop
	push bc
	ld a, PARTYMENUACTION_HEALING_ITEM
	ld [wPartyMenuActionText], a
	call ChooseMonToUseItemOn
	pop bc
	jr c, .set_carry
	ld a, [wPartyMenuCursor]
	dec a
	ld c, a
	ld a, b
	cp c
	jr z, .cant_use ; chose the same mon as user
	ld a, c
	ld [wCurPartyMon], a
	call IsMonFainted
	jr z, .cant_use
	call IsMonAtFullHealth
	jr nc, .cant_use
	xor a
	ret

.set_carry
	scf
	ret

.cant_use
	push bc
	ld hl, .ItemCantUseOnMonText
	call MenuTextboxBackup
	pop bc
	jr .loop

.ItemCantUseOnMonText:
	text_far _ItemCantUseOnMonText
	text_end

EscapeRopeEffect:
	xor a
	ld [wItemEffectSucceeded], a
	call EscapeRopeFunction

	ld a, [wItemEffectSucceeded]
	cp 1
	jmp z, UseDisposableItem
	ret

SuperRepelEffect:
	ld b, 200
	jr UseRepel

MaxRepelEffect:
	ld b, 250
	jr UseRepel

RepelEffect:
	ld b, 100

UseRepel:
	ld a, [wRepelEffect]
	and a
	ld hl, RepelUsedEarlierIsStillInEffectText
	jmp nz, PrintText

	ld a, b
	ld [wRepelEffect], a
	jmp UseItemText

RepelUsedEarlierIsStillInEffectText:
	text_far _RepelUsedEarlierIsStillInEffectText
	text_end

PokeDollEffect:
	ld a, [wBattleMode]
	dec a ; WILD_BATTLE?
	jr nz, .not_wild
	inc a ; TRUE
	ld [wForcedSwitch], a
	ld a, [wBattleResult]
	and BATTLERESULT_BITMASK
	or DRAW
	ld [wBattleResult], a
	jmp UseItemText

.not_wild
	xor a
	ld [wItemEffectSucceeded], a
	ret

GuardSpecEffect:
	ld hl, wPlayerSubStatus4
	bit SUBSTATUS_MIST, [hl]
	jmp nz, WontHaveAnyEffect_NotUsedMessage
	set SUBSTATUS_MIST, [hl]
	jmp UseItemText

DireHitEffect:
	ld hl, wPlayerSubStatus4
	bit SUBSTATUS_FOCUS_ENERGY, [hl]
	jmp nz, WontHaveAnyEffect_NotUsedMessage
	set SUBSTATUS_FOCUS_ENERGY, [hl]
	jmp UseItemText

XItemEffect:
	call UseItemText
	ld hl, XItemStats
.loop
	call GetItemIDFromHL
	ld b, a
	ld a, [wCurItem]
	cp b
	jr z, .got_it
; move to next item
	inc hl
	inc hl
	inc hl
	jr .loop

.got_it
	inc hl
	inc hl
	ld b, [hl]
	xor a
	ldh [hBattleTurn], a
	ld [wAttackMissed], a
	ld [wEffectFailed], a
	farcall RaiseStat
	call WaitSFX

	farcall BattleCommand_StatUpMessage
	farcall BattleCommand_StatUpFailText

	ld a, [wCurBattleMon]
	ld [wCurPartyMon], a
	ld c, HAPPINESS_USEDXITEM
	farjp ChangeHappiness

INCLUDE "data/items/x_stats.asm"

PinkanBerry:
; Choose a Pokémon to use it on
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon
; Exit early if the player canceled
	jp c, PinkanBerry_ExitMenu

; Pinkan Berry has no effect on already-pink mons
	ld a, MON_PINK
	call GetPartyParamLocation
	ld a, [hl]
	and PINK_MASK
	jp nz, NoEffectMessage

; Make it pink
	ld a, [hl]
	or PINK_MASK
	ld [hl], a

; Play a sound effect
	call Play_SFX_FULL_HEAL

; Describe the effect
	ld a, PARTYMENUTEXT_MAKE_PINK
	ld [wPartyMenuActionText], a
	call ItemActionTextWaitButton
; Use up the Pinkan Berry
	call UseDisposableItem
	jp ClearPalettes
	
PinkCure:
; Choose a Pokémon to use it on
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon
; Exit early if the player canceled
	jp c, PinkCure_ExitMenu

; Pink Cure has no effect on not-pink mons
	ld a, MON_PINK
	call GetPartyParamLocation
	ld a, [hl]
	and PINK_MASK
	jp z, NoEffectMessage

; Make it not pink
	ld a, [hl]
	and $ff - PINK_MASK
	ld [hl], a

; Play a sound effect
	call Play_SFX_FULL_HEAL

; Describe the effect
	ld a, PARTYMENUTEXT_MAKE_NOT_PINK
	ld [wPartyMenuActionText], a
	call ItemActionTextWaitButton
; Use up the Pink Cure
	call UseDisposableItem
	jp ClearPalettes
	
AbilityUp:
; Choose a Pokémon to use it on
    ld b, PARTYMENUACTION_HEALING_ITEM
    call UseItem_SelectMon
; Exit early if the player canceled
    jp c, AbilityUp_ExitMenu
    
; Is it Ability1?
    ld a, MON_ABILITY
    call GetPartyParamLocation
    ld a, [hl]
    and ABILITY_MASK
    jp z, .ChangeToAbility2
    
; Change to Ability1
    ld a, [hl]
    and ~ABILITY_MASK ; reset ability bits only
    ld [hl], a
    jp .finish
    
.ChangeToAbility2
    ld a, [hl]
    and ~ABILITY_MASK
    or %00100000
    ld [hl], a    

.finish
; Play a sound effect
    call Play_SFX_FULL_HEAL
; Describe the effect
    ld a, PARTYMENUTEXT_CHANGE_ABILITY
    ld [wPartyMenuActionText], a
    call ItemActionTextWaitButton
; Use up the ABILITY UP
    call UseDisposableItem
    jp ClearPalettes	

	
MintEffect:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon
	jr c, Mint_ExitMenu
	ld a, [wCurItem]
	call GetItemIndexFromID
	ld b, h
	ld c, l
	ld hl, .get_nature
	ld de, 3
	call IsInWordArray
	inc hl
	inc hl
	ld c, [hl]
	ret nc
	ld a, MON_NATURE
	call GetPartyParamLocation
	ld a, [hl]
	and ~NATURE_MASK
	or c
	ld [hl], a
	call Play_SFX_FULL_HEAL
	ld a, PARTYMENUTEXT_NATURE_TEXT
	ld [wPartyMenuActionText], a
	call ItemActionTextWaitButton
	call UseDisposableItem
	jp ClearPalettes

.get_nature
	dwb HARDY_MINT, HARDY
	dwb LONELY_MINT, LONELY
	dwb BRAVE_MINT, BRAVE
	dwb ADAMANT_MINT, ADAMANT
	dwb NAUGHTY_MINT, NAUGHTY
	dwb BOLD_MINT, BOLD
	dwb DOCILE_MINT, DOCILE
	dwb RELAXED_MINT, RELAXED
	dwb IMPISH_MINT, IMPISH
	dwb LAX_MINT, LAX
	dwb TIMID_MINT, TIMID
	dwb HASTY_MINT, HASTY
	dwb SERIOUS_MINT, SERIOUS
	dwb JOLLY_MINT, JOLLY
	dwb NAIVE_MINT, NAIVE
	dwb MODEST_MINT, MODEST
	dwb MILD_MINT, MILD
	dwb QUIET_MINT, QUIET
	dwb BASHFUL_MINT, BASHFUL
	dwb RASH_MINT, RASH
	dwb CALM_MINT, CALM
	dwb GENTLE_MINT, GENTLE
	dwb SASSY_MINT, SASSY
	dwb CAREFUL_MINT, CAREFUL
	dwb QUIRKY_MINT, QUIRKY
	db -1
	
PinkanBerry_ExitMenu:
PinkCure_ExitMenu:
AbilityUp_ExitMenu:
Mint_ExitMenu:
; wItemEffectSucceeded of 0 means it was canceled
; it's set to 1 by default before calling PinkanBerry
	xor a
	ld [wItemEffectSucceeded], a
	jp ClearPalettes

PokeFluteEffect:
	ld a, [wBattleMode]
	and a
	jr nz, .in_battle
	; overworld flute code was dummied out here

.in_battle
	xor a
	ld [wPokeFluteCuredSleep], a

	ld b, ~SLP_MASK

	ld hl, wPartyMon1Status
	call .CureSleep

	ld a, [wBattleMode]
	cp WILD_BATTLE
	jr z, .skip_otrainer
	ld hl, wOTPartyMon1Status
	call .CureSleep
.skip_otrainer

	ld hl, wBattleMonStatus
	ld a, [hl]
	and b
	ld [hl], a
	ld hl, wEnemyMonStatus
	ld a, [hl]
	and b
	ld [hl], a

	ld a, [wPokeFluteCuredSleep]
	and a
	ld hl, .PlayedFluteText
	jmp z, PrintText
	ld hl, .PlayedTheFlute
	call PrintText

	ld a, [wLowHealthAlarm]
	and 1 << DANGER_ON_F
	jr nz, .dummy
	; more code was dummied out here
.dummy
	ld hl, .FluteWakeUpText
	jmp PrintText

.CureSleep:
	ld de, PARTYMON_STRUCT_LENGTH
	ld c, PARTY_LENGTH
.loop
	ld a, [hl]
	push af
	and SLP_MASK
	jr z, .not_asleep
	ld a, TRUE
	ld [wPokeFluteCuredSleep], a
.not_asleep
	pop af
	and b
	ld [hl], a
	add hl, de
	dec c
	jr nz, .loop
	ret

.PlayedFluteText:
	text_far _PlayedFluteText
	text_end

.FluteWakeUpText:
	text_far _FluteWakeUpText
	text_end

.PlayedTheFlute:
	; played the # FLUTE.@ @
	text_far Text_PlayedPokeFlute
	text_asm
	ld a, [wBattleMode]
	and a
	jr nz, .battle

	push de
	ld de, SFX_POKEFLUTE
	call WaitPlaySFX
	call WaitSFX
	pop de

.battle
	jmp PokeFluteTerminator

BlueCardEffect:
	ld hl, .BlueCardBalanceText
	jmp MenuTextboxWaitButton

.BlueCardBalanceText:
	text_far _BlueCardBalanceText
	text_end

CoinCaseEffect:
	ld hl, .CoinCaseCountText
	jmp MenuTextboxWaitButton

.CoinCaseCountText:
	text_far _CoinCaseCountText
	text_end

OldRodEffect:
	ld e, $0
	jr UseRod

GoodRodEffect:
	ld e, $1
	jr UseRod

SuperRodEffect:
	ld e, $2
; fallthrough
UseRod:
	jmp FishFunction

ItemfinderEffect:
	farjp ItemFinder

RestorePPEffect:
	ld a, [wCurItem]
	ld [wTempRestorePPItem], a

.loop
	; Party Screen opens to choose on which mon to use the Item
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon
	jmp c, PPRestoreItem_Cancel

.loop2
	ld a, [wTempRestorePPItem]
	call GetItemIndexFromID
	cphl16 MAX_ELIXIR
	jmp z, Elixer_RestorePPofAllMoves
	cphl16 ELIXIR
	jmp z, Elixer_RestorePPofAllMoves

	ld hl, RaiseThePPOfWhichMoveText
	ld a, [wTempRestorePPItem]
	push hl
	call GetItemIndexFromID
	cphl16 PP_UP
	pop hl
	jr z, .ppup
	ld hl, RestoreThePPOfWhichMoveText

.ppup
	call PrintText

	ld a, [wCurMoveNum]
	push af
	xor a
	ld [wCurMoveNum], a
	ld a, $2
	ld [wMoveSelectionMenuType], a
	farcall MoveSelectionScreen
	pop bc

	ld a, b
	ld [wCurMoveNum], a
	jr nz, .loop
	ld hl, wPartyMon1Moves
	ld bc, PARTYMON_STRUCT_LENGTH
	call GetMthMoveOfNthPartymon

	push hl
	ld a, [hl]
	ld [wNamedObjectIndex], a
	call GetMoveName
	call CopyName1
	pop hl

	ld a, [wTempRestorePPItem]
	push hl
	call GetItemIndexFromID
	cphl16 PP_UP
	pop hl
	jmp nz, Not_PP_Up

	ld a, [hl]
	push hl
	call GetMoveIndexFromID
	ld a, h
	if HIGH(SKETCH)
		cp HIGH(SKETCH)
	else
		and a
	endc
	ld a, l
	pop hl
	jr nz, .not_sketch
	cp LOW(SKETCH)
	jr z, .CantUsePPUpOnSketch
.not_sketch

	ld bc, MON_PP - MON_MOVES
	add hl, bc
	ld a, [hl]
	cp PP_UP_MASK
	jr c, .do_ppup

.CantUsePPUpOnSketch:
	ld hl, PPIsMaxedOutText
	call PrintText
	jmp .loop2

.do_ppup
	ld a, [hl]
	add PP_UP_ONE
	ld [hl], a
	ld a, TRUE
	ld [wUsePPUp], a
	call ApplyPPUp
	call Play_SFX_FULL_HEAL

	ld hl, PPsIncreasedText
	call PrintText

FinishPPRestore:
	call ClearPalettes
	jmp UseDisposableItem

BattleRestorePP:
	ld a, [wBattleMode]
	and a
	jr z, .not_in_battle
	ld a, [wCurPartyMon]
	ld b, a
	ld a, [wCurBattleMon]
	cp b
	jr nz, .not_in_battle
	ld a, [wPlayerSubStatus5]
	bit SUBSTATUS_TRANSFORMED, a
	call z, .UpdateBattleMonPP
; fallthrough
.not_in_battle
	call Play_SFX_FULL_HEAL
	ld hl, PPRestoredText
	call PrintText
	jr FinishPPRestore

.UpdateBattleMonPP:
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Moves
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld de, wBattleMonMoves
	ld b, NUM_MOVES
.loop
	ld a, [de]
	and a
	ret z
	cp [hl]
	jr nz, .next
	push hl
	push de
	push bc
rept NUM_MOVES + 2 ; wBattleMonPP - wBattleMonMoves
	inc de
endr
	ld bc, MON_PP - MON_MOVES
	add hl, bc
	ld a, [hl]
	ld [de], a
	pop bc
	pop de
	pop hl

.next
	inc hl
	inc de
	dec b
	jr nz, .loop
	ret

Not_PP_Up:
	call RestorePP
	jr nz, BattleRestorePP
	jr PPRestoreItem_NoEffect

Elixer_RestorePPofAllMoves:
	xor a
	ld hl, wMenuCursorY
	ld [hli], a
	ld [hl], a
	ld b, NUM_MOVES
.moveLoop
	push bc
	ld hl, wPartyMon1Moves
	ld bc, PARTYMON_STRUCT_LENGTH
	call GetMthMoveOfNthPartymon
	ld a, [hl]
	and a
	jr z, .next

	call RestorePP
	jr z, .next
	ld hl, wMenuCursorX
	inc [hl]

.next
	ld hl, wMenuCursorY
	inc [hl]
	pop bc
	dec b
	jr nz, .moveLoop
	ld a, [wMenuCursorX]
	and a
	jmp nz, BattleRestorePP

PPRestoreItem_NoEffect:
	call WontHaveAnyEffectMessage

PPRestoreItem_Cancel:
	call ClearPalettes
	xor a
	ld [wItemEffectSucceeded], a
	ret

RestorePP:
	xor a ; PARTYMON
	ld [wMonType], a
	call GetMaxPPOfMove
	ld hl, wPartyMon1PP
	ld bc, PARTYMON_STRUCT_LENGTH
	call GetMthMoveOfNthPartymon
	ld a, [wTempPP]
	ld b, a
	ld a, [hl]
	and PP_MASK
	cp b
	jr nc, .dont_restore

	ld a, [wTempRestorePPItem]
	push hl
	call GetItemIndexFromID
	cphl16 MAX_ELIXIR
	pop hl
	jr z, .restore_all
	ld a, [wTempRestorePPItem]
	push hl
	call GetItemIndexFromID
	cphl16 MAX_ETHER
	pop hl
	jr z, .restore_all

	ld c, 5
	ld a, [wTempRestorePPItem]
	push hl
	call GetItemIndexFromID
	cphl16 LEPPA_BERRY
	pop hl
	jr z, .restore_some
	call GetItemIndexFromID
	cphl16 HOPO_BERRY
	pop hl
	jr z, .restore_some

	ld c, 10

.restore_some
	ld a, [hl]
	and PP_MASK
	add c
	cp b
	jr nc, .restore_all
	ld b, a

.restore_all
	ld a, [hl]
	and PP_UP_MASK
	or b
	ld [hl], a
	ret

.dont_restore
	xor a
	ret

RaiseThePPOfWhichMoveText:
	text_far _RaiseThePPOfWhichMoveText
	text_end

RestoreThePPOfWhichMoveText:
	text_far _RestoreThePPOfWhichMoveText
	text_end

PPIsMaxedOutText:
	text_far _PPIsMaxedOutText
	text_end

PPsIncreasedText:
	text_far _PPsIncreasedText
	text_end

PPRestoredText:
	text_far _PPRestoredText
	text_end

SquirtbottleEffect:
	farjp _Squirtbottle

CardKeyEffect:
	farjp _CardKey

BasementKeyEffect:
	farjp _BasementKey

SacredAshEffect:
	farcall _SacredAsh
	ld a, [wItemEffectSucceeded]
	cp $1
	ret nz
	jr UseDisposableItem

NormalBoxEffect:
	ld c, DECOFLAG_SILVER_TROPHY_DOLL
	jr OpenBox

GorgeousBoxEffect:
	ld c, DECOFLAG_GOLD_TROPHY_DOLL
OpenBox:
	farcall SetSpecificDecorationFlag

	ld hl, .SentTrophyHomeText
	call PrintText

	jr UseDisposableItem

.SentTrophyHomeText:
	text_far _SentTrophyHomeText
	text_end

Play_SFX_FULL_HEAL:
	push de
	ld de, SFX_FULL_HEAL
	call WaitPlaySFX
	pop de
	ret

UseItemText:
	ld hl, ItemUsedText
	call PrintText
	call Play_SFX_FULL_HEAL
	call WaitPressAorB_BlinkCursor
UseDisposableItem:
	ld hl, wNumItems
	ld a, 1
	ld [wItemQuantityChange], a
	jmp TossItem

UseBallInTrainerBattle:
	call ReturnToBattle_UseBall
	ld de, ANIM_THROW_POKE_BALL
	ld a, e
	ld [wFXAnimID], a
	ld a, d
	ld [wFXAnimID + 1], a
	xor a
	ld [wBattleAnimParam], a
	ldh [hBattleTurn], a
	ld [wNumHits], a
	predef PlayBattleAnim
	ld hl, BallBlockedText
	call PrintText
	ld hl, BallDontBeAThiefText
	call PrintText
	jr UseDisposableItem

WontHaveAnyEffect_NotUsedMessage:
	ld hl, ItemWontHaveEffectText
	call PrintText

	; Item wasn't used.
	ld a, $2
	ld [wItemEffectSucceeded], a
	ret

LooksBitterMessage:
	ld hl, ItemLooksBitterText
	jmp PrintText

Ball_BoxIsFullMessage:
	ld hl, StorageFullText
	jr z, .got_msg
	ld hl, DatabaseTaxedText
.got_msg
	call PrintText

	; Item wasn't used.
	ld a, $2
	ld [wItemEffectSucceeded], a
	ret

CantUseOnEggMessage:
	ld hl, ItemCantUseOnEggText
	jr CantUseItemMessage

NoEffect:
	ld hl, ItemOakWarningText
	jr CantUseItemMessage

WontHaveAnyEffectMessage:
	ld hl, ItemWontHaveEffectText
; fallthrough
CantUseItemMessage:
; Item couldn't be used.
	xor a
	ld [wItemEffectSucceeded], a
	jmp PrintText

ItemLooksBitterText:
	text_far _ItemLooksBitterText
	text_end

ItemCantUseOnEggText:
	text_far _ItemCantUseOnEggText
	text_end

ItemOakWarningText:
	text_far _ItemOakWarningText
	text_end

ItemWontHaveEffectText:
	text_far _ItemWontHaveEffectText
	text_end

BallBlockedText:
	text_far _BallBlockedText
	text_end

BallDontBeAThiefText:
	text_far _BallDontBeAThiefText
	text_end

StorageFullText:
	text_far _StorageFullText
	text_end

DatabaseTaxedText:
	text_far _StorageFullText
	text_end

ItemUsedText:
	text_far _ItemUsedText
	text_end

ApplyPPUp:
	ld a, MON_MOVES
	call GetPartyParamLocation
	push hl
	ld de, wPPUpPPBuffer
	predef FillPP
	pop hl
	ld bc, MON_PP - MON_MOVES
	add hl, bc
	ld de, wPPUpPPBuffer
	ld b, 0
.loop
	inc b
	ld a, b
	cp NUM_MOVES + 1
	ret z
	ld a, [wUsePPUp]
	dec a ; FALSE?
	jr nz, .use
	ld a, [wMenuCursorY]
	inc a
	cp b
	jr nz, .skip

.use
	ld a, [hl]
	and PP_UP_MASK
	ld a, [de] ; wasted cycle
	call nz, ComputeMaxPP

.skip
	inc hl
	inc de
	jr .loop

ComputeMaxPP:
	push bc
	; Divide the base PP by 5.
	ld a, [de]
	ldh [hDividend + 3], a
	xor a
	ldh [hDividend], a
	ldh [hDividend + 1], a
	ldh [hDividend + 2], a
	ld a, 5
	ldh [hDivisor], a
	ld b, 4
	call Divide
	; Get the number of PP, which are bits 6 and 7 of the PP value stored in RAM.
	ld a, [hl]
	ld b, a
	swap a
	and $f
	srl a
	srl a
	ld c, a
	; If this value is 0, we are done
	and a
	jr z, .NoPPUp

.loop
	; Normally, a move with 40 PP would have 64 PP with three PP Ups.
	; Since this would overflow into bit 6, we prevent that from happening
	; by decreasing the extra amount of PP each PP Up provides, resulting
	; in a maximum of 61.
	ldh a, [hQuotient + 3]
	cp $8
	jr c, .okay
	ld a, $7

.okay
	add b
	ld b, a
	ld a, [wTempPP]
	dec a
	jr z, .NoPPUp
	dec c
	jr nz, .loop

.NoPPUp:
	ld [hl], b
	pop bc
	ret

RestoreBufferPP:
	ld hl, wBufferMonMoves
	ld de, wBufferMonPP
	ld a, [wMenuCursorY]
	push af
	ld a, BUFFERMON
	ld [wMonType], a
	call _RestoreAllPP
	pop af
	ld [wMenuCursorY], a
	ret

RestoreAllPP:
	ld a, MON_PP
	call GetPartyParamLocation
	push hl
	ld a, MON_MOVES
	call GetPartyParamLocation
	pop de
	xor a ; PARTYMON
	ld [wMonType], a
	; fallthrough
_RestoreAllPP:
	xor a
	ld [wMenuCursorY], a
	ld c, NUM_MOVES
.loop
	ld a, [hli]
	and a
	ret z
	push hl
	push de
	push bc
	call GetMaxPPOfMove
	pop bc
	pop de
	ld a, [de]
	and PP_UP_MASK
	ld b, a
	ld a, [wTempPP]
	add b
	ld [de], a
	inc de
	ld hl, wMenuCursorY
	inc [hl]
	pop hl
	dec c
	jr nz, .loop
	ret

GetMaxPPOfMove:
	ld a, [wStringBuffer1 + 0]
	push af
	ld a, [wStringBuffer1 + 1]
	push af

	ld a, [wMonType]
	and a

	ld hl, wPartyMon1Moves
	ld bc, PARTYMON_STRUCT_LENGTH
	jr z, .got_partymon ; PARTYMON

	ld hl, wOTPartyMon1Moves
	dec a
	jr z, .got_partymon ; OTPARTYMON

	ld hl, wTempMonMoves
	dec a
	jr z, .got_nonpartymon ; BOXMON

	ld hl, wTempMonMoves ; Wasted cycles
	dec a
	jr z, .got_nonpartymon ; TEMPMON

	ld hl, wBattleMonMoves ; WILDMON
	dec a
	jr z, .got_nonpartymon

	ld hl, wBufferMonMoves ; BUFFERMON

.got_nonpartymon ; BOXMON, TEMPMON, WILDMON
	call GetMthMoveOfCurrentMon
	jr .gotdatmove

.got_partymon ; PARTYMON, OTPARTYMON
	call GetMthMoveOfNthPartymon

.gotdatmove
	ld a, [hl]

	push hl
	ld l, a
	ld a, MOVE_PP
	call GetMoveAttribute
	ld b, a
	ld de, wStringBuffer1
	ld [de], a
	pop hl

	push bc
	ld bc, MON_PP - MON_MOVES
	ld a, [wMonType]
	cp WILDMON
	jr nz, .notwild
	ld bc, wEnemyMonPP - wEnemyMonMoves
.notwild
	add hl, bc
	ld a, [hl]
	and PP_UP_MASK
	pop bc

	or b
	ld hl, wStringBuffer1 + 1
	ld [hl], a
	xor a
	ld [wTempPP], a
	ld a, b ; this gets lost anyway
	call ComputeMaxPP
	ld a, [hl]
	and PP_MASK
	ld [wTempPP], a

	pop af
	ld [wStringBuffer1 + 1], a
	pop af
	ld [wStringBuffer1 + 0], a
	ret

GetMthMoveOfNthPartymon:
	ld a, [wCurPartyMon]
	rst AddNTimes

GetMthMoveOfCurrentMon:
	ld a, [wMenuCursorY]
	ld c, a
	ld b, 0
	add hl, bc
	ret
