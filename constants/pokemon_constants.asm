; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - IconPointers (see data/pokemon/icon_pointers.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - Footprints (see gfx/footprints.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - EZChat_SortedPokemon (see data/pokemon/ezchat_order.asm)
	const_def 1
	const BULBASAUR  ; 01
	const IVYSAUR    ; 02
	const VENUSAUR   ; 03
	const CHARMANDER ; 04
	const CHARMELEON ; 05
	const CHARIZARD  ; 06
	const SQUIRTLE   ; 07
	const WARTORTLE  ; 08
	const BLASTOISE  ; 09
	const CATERPIE   ; 0a
	const METAPOD    ; 0b
	const BUTTERFREE ; 0c
	const WEEDLE     ; 0d
	const KAKUNA     ; 0e
	const BEEDRILL   ; 0f
	const PIDGEY     ; 10
	const PIDGEOTTO  ; 11
	const PIDGEOT    ; 12
	const RATTATA    ; 13
	const RATICATE   ; 14
	const SPEAROW    ; 15
	const FEAROW     ; 16
	const EKANS      ; 17
	const ARBOK      ; 18
	const PIKACHU    ; 19
	const RAICHU     ; 1a
	const SANDSHREW  ; 1b
	const SANDSLASH  ; 1c
	const NIDORAN_F  ; 1d
	const NIDORINA   ; 1e
	const NIDOQUEEN  ; 1f
	const NIDORAN_M  ; 20
	const NIDORINO   ; 21
	const NIDOKING   ; 22
	const CLEFAIRY   ; 23
	const CLEFABLE   ; 24
	const VULPIX     ; 25
	const NINETALES  ; 26
	const JIGGLYPUFF ; 27
	const WIGGLYTUFF ; 28
	const ZUBAT      ; 29
	const GOLBAT     ; 2a
	const ODDISH     ; 2b
	const GLOOM      ; 2c
	const VILEPLUME  ; 2d
	const PARAS      ; 2e
	const PARASECT   ; 2f
	const VENONAT    ; 30
	const VENOMOTH   ; 31
	const DIGLETT    ; 32
	const DUGTRIO    ; 33
	const MEOWTH     ; 34
	const PERSIAN    ; 35
	const PSYDUCK    ; 36
	const GOLDUCK    ; 37
	const MANKEY     ; 38
	const PRIMEAPE   ; 39
	const GROWLITHE  ; 3a
	const ARCANINE   ; 3b
	const POLIWAG    ; 3c
	const POLIWHIRL  ; 3d
	const POLIWRATH  ; 3e
	const ABRA       ; 3f
	const KADABRA    ; 40
	const ALAKAZAM   ; 41
	const MACHOP     ; 42
	const MACHOKE    ; 43
	const MACHAMP    ; 44
	const BELLSPROUT ; 45
	const WEEPINBELL ; 46
	const VICTREEBEL ; 47
	const TENTACOOL  ; 48
	const TENTACRUEL ; 49
	const GEODUDE    ; 4a
	const GRAVELER   ; 4b
	const GOLEM      ; 4c
	const PONYTA     ; 4d
	const RAPIDASH   ; 4e
	const SLOWPOKE   ; 4f
	const SLOWBRO    ; 50
	const MAGNEMITE  ; 51
	const MAGNETON   ; 52
	const FARFETCH_D ; 53
	const DODUO      ; 54
	const DODRIO     ; 55
	const SEEL       ; 56
	const DEWGONG    ; 57
	const GRIMER     ; 58
	const MUK        ; 59
	const SHELLDER   ; 5a
	const CLOYSTER   ; 5b
	const GASTLY     ; 5c
	const HAUNTER    ; 5d
	const GENGAR     ; 5e
	const ONIX       ; 5f
	const DROWZEE    ; 60
	const HYPNO      ; 61
	const KRABBY     ; 62
	const KINGLER    ; 63
	const VOLTORB    ; 64
	const ELECTRODE  ; 65
	const EXEGGCUTE  ; 66
	const EXEGGUTOR  ; 67
	const CUBONE     ; 68
	const MAROWAK    ; 69
	const HITMONLEE  ; 6a
	const HITMONCHAN ; 6b
	const LICKITUNG  ; 6c
	const KOFFING    ; 6d
	const WEEZING    ; 6e
	const RHYHORN    ; 6f
	const RHYDON     ; 70
	const CHANSEY    ; 71
	const TANGELA    ; 72
	const KANGASKHAN ; 73
	const HORSEA     ; 74
	const SEADRA     ; 75
	const GOLDEEN    ; 76
	const SEAKING    ; 77
	const STARYU     ; 78
	const STARMIE    ; 79
	const MR__MIME   ; 7a
	const SCYTHER    ; 7b
	const JYNX       ; 7c
	const ELECTABUZZ ; 7d
	const MAGMAR     ; 7e
	const PINSIR     ; 7f
	const TAUROS     ; 80
	const MAGIKARP   ; 81
	const GYARADOS   ; 82
	const LAPRAS     ; 83
	const DITTO      ; 84
	const EEVEE      ; 85
	const VAPOREON   ; 86
	const JOLTEON    ; 87
	const FLAREON    ; 88
	const PORYGON    ; 89
	const OMANYTE    ; 8a
	const OMASTAR    ; 8b
	const KABUTO     ; 8c
	const KABUTOPS   ; 8d
	const AERODACTYL ; 8e
	const SNORLAX    ; 8f
	const ARTICUNO   ; 90
	const ZAPDOS     ; 91
	const MOLTRES    ; 92
	const DRATINI    ; 93
	const DRAGONAIR  ; 94
	const DRAGONITE  ; 95
	const MEWTWO     ; 96
	const MEW        ; 97
DEF NUM_KANTO_POKEMON EQU const_value -1
DEF JOHTO_POKEMON EQU const_value
	const CHIKORITA  ; 98
	const BAYLEEF    ; 99
	const MEGANIUM   ; 9a
	const CYNDAQUIL  ; 9b
	const QUILAVA    ; 9c
	const TYPHLOSION ; 9d
	const TOTODILE   ; 9e
	const CROCONAW   ; 9f
	const FERALIGATR ; a0
	const SENTRET    ; a1
	const FURRET     ; a2
	const HOOTHOOT   ; a3
	const NOCTOWL    ; a4
	const LEDYBA     ; a5
	const LEDIAN     ; a6
	const SPINARAK   ; a7
	const ARIADOS    ; a8
	const CROBAT     ; a9
	const CHINCHOU   ; aa
	const LANTURN    ; ab
	const PICHU      ; ac
	const CLEFFA     ; ad
	const IGGLYBUFF  ; ae
	const TOGEPI     ; af
	const TOGETIC    ; b0
	const NATU       ; b1
	const XATU       ; b2
	const MAREEP     ; b3
	const FLAAFFY    ; b4
	const AMPHAROS   ; b5
	const BELLOSSOM  ; b6
	const MARILL     ; b7
	const AZUMARILL  ; b8
	const SUDOWOODO  ; b9
	const POLITOED   ; ba
	const HOPPIP     ; bb
	const SKIPLOOM   ; bc
	const JUMPLUFF   ; bd
	const AIPOM      ; be
	const SUNKERN    ; bf
	const SUNFLORA   ; c0
	const YANMA      ; c1
	const WOOPER     ; c2
	const QUAGSIRE   ; c3
	const ESPEON     ; c4
	const UMBREON    ; c5
	const MURKROW    ; c6
	const SLOWKING   ; c7
	const MISDREAVUS ; c8
	const UNOWN      ; c9
	const WOBBUFFET  ; ca
	const GIRAFARIG  ; cb
	const PINECO     ; cc
	const FORRETRESS ; cd
	const DUNSPARCE  ; ce
	const GLIGAR     ; cf
	const STEELIX    ; d0
	const SNUBBULL   ; d1
	const GRANBULL   ; d2
	const QWILFISH   ; d3
	const SCIZOR     ; d4
	const SHUCKLE    ; d5
	const HERACROSS  ; d6
	const SNEASEL    ; d7
	const TEDDIURSA  ; d8
	const URSARING   ; d9
	const SLUGMA     ; da
	const MAGCARGO   ; db
	const SWINUB     ; dc
	const PILOSWINE  ; dd
	const CORSOLA    ; de
	const REMORAID   ; df
	const OCTILLERY  ; e0
	const DELIBIRD   ; e1
	const MANTINE    ; e2
	const SKARMORY   ; e3
	const HOUNDOUR   ; e4
	const HOUNDOOM   ; e5
	const KINGDRA    ; e6
	const PHANPY     ; e7
	const DONPHAN    ; e8
	const PORYGON2   ; e9
	const STANTLER   ; ea
	const SMEARGLE   ; eb
	const TYROGUE    ; ec
	const HITMONTOP  ; ed
	const SMOOCHUM   ; ee
	const ELEKID     ; ef
	const MAGBY      ; f0
	const MILTANK    ; f1
	const BLISSEY    ; f2
	const RAIKOU     ; f3
	const ENTEI      ; f4
	const SUICUNE    ; f5
	const LARVITAR   ; f6
	const PUPITAR    ; f7
	const TYRANITAR  ; f8
	const LUGIA      ; f9
	const HO_OH      ; fa
	const CELEBI     ; fb
DEF NUM_JOHTO_POKEMON EQU const_value - JOHTO_POKEMON
DEF HOENN_POKEMON EQU const_value
	const POOCHYENA  ; fc
	const MIGHTYENA  ; fd
	const ZIGZAGOON  ; fe
	const LINOONE    ; ff
	const WINGULL    ; 100
	const PELIPPER   ; 101
	const RALTS	     ; 102
	const KIRLIA     ; 103
	const GARDEVOIR  ; 104
	const SHROOMISH  ; 105
	const BRELOOM    ; 106
	const NINCADA    ; 107
	const NINJASK    ; 108
	const SHEDINJA   ; 109
	const AZURILL    ; 10a
	const ARON       ; 10b
	const LAIRON     ; 10c
	const AGGRON     ; 10d
	const CARVANHA   ; 10e
	const SHARPEDO   ; 10f
	const WAILMER    ; 110
	const WAILORD    ; 111
	const NUMEL      ; 112
	const CAMERUPT   ; 113
	const SPOINK     ; 114
	const GRUMPIG    ; 115
	const SPINDA     ; 116
	const TRAPINCH   ; 117
	const VIBRAVA    ; 118
	const FLYGON     ; 119
	const SWABLU     ; 11a
	const ALTARIA    ; 11b
	const ZANGOOSE   ; 11c
	const SEVIPER    ; 11d
	const FEEBAS     ; 11e
	const MILOTIC    ; 11f
	const KECLEON    ; 120
	const SHUPPET    ; 121
	const BANETTE    ; 122
	const DUSKULL    ; 123
	const DUSCLOPS   ; 124
	const TROPIUS    ; 125
	const CHIMECHO   ; 126
	const WYNAUT     ; 127
	const SNORUNT    ; 128
	const GLALIE     ; 129
	const SPHEAL     ; 12a
	const SEALEO     ; 12b
	const WALREIN    ; 12c
	const RELICANTH  ; 12d
	const LUVDISC    ; 12e
	const LATIAS     ; 12f
	const LATIOS     ; 130
DEF NUM_HOENN_POKEMON EQU const_value - HOENN_POKEMON
; DEF SINNOH_POKEMON EQU const_value
	; const SHINX      ; 131
	; const LUXIO      ; 132
	; const LUXRAY     ; 133
	; const CHERUBI    ; 134
	; const CHERRIM    ; 135
	; const AMBIPOM    ; 136
	; const MISMAGIUS  ; 137
	; const HONCHKROW  ; 138
	; const CHINGLING  ; 139
	; const BONSLY     ; 13a
	; const MIME_JR    ; 13b
	; const HAPPINY    ; 13c
	; const CHATOT     ; 13d
	; const MUNCHLAX   ; 13e
	; const RIOLU      ; 13f
	; const LUCARIO    ; 140
	; const CROAGUNK   ; 141
	; const TOXICROAK  ; 142
	; const CARNIVINE  ; 143
	; const FINNEON    ; 145
	; const LUMINEON   ; 146
	; const MANTYKE    ; 147
	; const WEAVILE    ; 148
	; const MAGNEZONE  ; 149
	; const LICKILICKY ; 14a
	; const RHYPERIOR  ; 14b
	; const TANGROWTH  ; 14c
	; const ELECTIVIRE ; 14d
	; const MAGMORTAR  ; 14e
	; const TOGEKISS   ; 14f
	; const YANMEGA    ; 150
	; const LEAFEON    ; 151
	; const GLACEON    ; 152
	; const GLISCOR    ; 153
	; const MAMOSWINE  ; 154
	; const PORYGON_Z  ; 155
	; const GALLADE    ; 156
	; const DUSKNOIR   ; 157
	; const FROSLASS   ; 158
	; const ROTOM      ; 159
	; const PHIONE     ; 15a
	; const MANAPHY    ; 15b
; DEF NUM_SINNOH_POKEMON EQU const_value - SINNOH_POKEMON
; DEF OTHER_POKEMON EQU const_value
	; const FERROSEED  ; 15c
	; const FERROTHORN ; 15d
	; const STUNFISK   ; 15e
	; const PAWNIARD   ; 15f
	; const BISHARP    ; 160
	; const ZORUA      ; 161
	; const ZORUARK    ; 162
	; const SKRELP     ; 163
	; const DRAGALGE   ; 164
	; const CLAUNCHER  ; 165
	; const CLAWITZER  ; 166
	; const SYLVEON    ; 167
	; const PANCHAM    ; 168
	; const PANGORO    ; 169
	; const INKAY      ; 16a
	; const MALAMAR    ; 16b
	; const NOIBAT     ; 16c
	; const NOIVERN    ; 16d
	; const HONEDGE    ; 16e
	; const DOUBLADE   ; 16f
	; const AEGISLASH  ; 170
	; const GOOMY      ; 171
	; const SLIGGOO    ; 172
	; const GOODRA     ; 173
	; const ROCKRUFF   ; 174
	; const LYCANROC   ; 175
	; const CUTIEFLY   ; 176
	; const RIBOMBEE   ; 177
	; const PIKIPEK    ; 178
	; const TRUMBEAK   ; 179
	; const TOUCANNON  ; 17a
	; const MIMIKYU    ; 17b
	; const SANDYGHAST ; 17c
	; const PALLOSAND  ; 17d
	; const SALANDIT   ; 17e
	; const SALAZZLE   ; 17f
	; const MAREANIE   ; 180
	; const TOXAPEX    ; 181
	; const TURTONATOR ; 182
	; const DHELMISE   ; 183
	; const PINCURCHIN ; 184
	; const CRAMORANT  ; 185
	; const ARROKUDA   ; 186
	; const BARRASKEWDA ; 187
	; const APPLIN     ; 188
	; const FLAPPLE    ; 189
	; const APPLETUN   ; 18a
	; const GIMMIGHOUL ; 18b
	; const GHOLDENGO  ; 18c
	; const ANNIHILAPE ; 18d
	; const DUDUNSPARCE ; 18e
	; const GIRAFARIG  ; 18f
	; const KINGAMBIT  ; 190
	; const DIPPLIN    ; 191
	; const HYDRAPPLE  ; 192
	; const CHARCADET  ; 193
	; const ARMAROUGE  ; 194
	; const CERULEDGE  ; 195
	; const CLODSIRE   ; 196
	; const CURSOLA    ; 197
	; const PERRSERKER ; 198
	; const SIRFETCH_D ; 199
	; const MR__RIME   ; 19a
	; const OBSTAGOON  ; 19b
	; const OVERQWIL   ; 19c
	; const SNEASLER   ; 19d
	; const KLEAVOR    ; 19e
	; const URSALUNA   ; 19f
	; const WYRDEER    ; 1a0
	; const MARSHADOW  ; 1a1
	; const MELTAN     ; 1a2
	; const MELMETAL   ; 1a3
; DEF NUM_OTHER_POKEMON EQU const_value - OTHER_POKEMON
DEF FORM_POKEMON EQU const_value
	const LAPRAS_PARTNER      ; 1a4
	; const RATATTA_ALOLA       ; 1a5
	; const RATICATE_ALOLA      ; 1a6
	; const RAICHU_ALOLA        ; 1a7
	; const SANDSHREW_ALOLA     ; 1a8
	; const SANDSLASH_ALOLA     ; 1a9
	; const DIGLETT_ALOLA       ; 1aa
	; const DUGTRIO_ALOLA       ; 1ab
	; const GRIMER_ALOLA        ; 1ac
	; const MUK_ALOLA           ; 1ad
	; const GEODUDE_ALOLA       ; 1ae
	; const GRAVELLER_ALOLA     ; 1af
	; const GOLEM_ALOLA         ; 1b0
	; const VULPIX_ALOLA        ; 1b1
	; const NINETALES_ALOLA     ; 1b2
	; const MAROWAK_ALOLA       ; 1b3
	; const EXEGGUTOR_ALOLA     ; 1b4
	; const MEOWTH_ALOLA        ; 1b5
	; const PERSIAN_ALOLA       ; 1b6
	; const PONYTA_GALAR        ; 1b7
	; const RAPIDASH_GALAR      ; 1b8
	; const FARFETCH_D_GALAR    ; 1b9
	; const MR__MIME_GALAR      ; 1ba
	; const WEEZING_GALAR       ; 1bb
	; const ZIGZAGOON_GALAR     ; 1bc
	; const LINOONE_GALAR       ; 1bd
	; const STUNFISK_GALAR      ; 1be
	; const CORSOLA_GALAR       ; 1bf
	; const MEOWTH_GALAR        ; 1c0
	; const SLOWPOKE_GALAR      ; 1c1
	; const SLOWBRO_GALAR       ; 1c2
	; const SLOWKING_GALAR      ; 1c3
	; const ARTICUNO_GALAR      ; 1c4
	; const ZAPDOS_GALAR        ; 1c5
	; const MOLTRES_GALAR       ; 1c6
	; const GROWLITHE_HISUI     ; 1c7
	; const ARCANINE_HISUI      ; 1c8
	; const VOLTORB_HISUI       ; 1c9
	; const ELECTRODE_HISUI     ; 1ca
	; const QWILFISH_HISUI      ; 1cb
	; const SNEASEL_HISUI       ; 1cc
	; const ZORUA_HISUI         ; 1cd
	; const ZOROARK_HISUI       ; 1ce
	; const SLIGGOO_HISUI       ; 1cf
	; const GOODRA_HISUI        ; 1d0
	; const TYPHLOSION_HISUI    ; 1d1
	; const WOOPER_PALDEA       ; 1d2
	; const TAUROS_COMBAT       ; 1d3
	; const TAUROS_BLAZE        ; 1d4
	; const TAUROS_AQUA         ; 1d5
	; const CATERPIE_VALENCIA   ; 1d6
	; const METAPOD_VALENCIA    ; 1d7
	; const BUTTERFREE_VALENCIA ; 1d8
	; const ODDISH_VALENCIA     ; 1d9
	; const GLOOM_VALENCIA      ; 1da
	; const VILEPLUME_VALENCIA  ; 1db
	; const BELOSSOM_VALENCIA   ; 1dc
	; const BELLSPROUT_VALENCIA ; 1dd
	; const WEEPINBELL_VALENCIA ; 1de
	; const VICTREEBEL_VALENCIA ; 1df
	; const PARAS_VALENCIA      ; 1e0
	; const PARASECT_VALENCIA   ; 1e1
	; const ONIX_CRYSTAL        ; 1e2
	; const STEELIX_CRYSTAL     ; 1e3
	; const URSALUNA_BLOODMOON  ; 1e4
DEF NUM_FORM_POKEMON EQU const_value - FORM_POKEMON
DEF NUM_POKEMON EQU const_value - 1

DEF EGG EQU -3

; limits:
; 999: everything that prints dex counts
; 1407: size of wPokedexOrder
; 4095: hard limit; would require serious redesign to increase
if NUM_POKEMON > 999
	fail "Too many Pokémon defined!"
endc

; Unown forms
; indexes for:
; - UnownWords (see data/pokemon/unown_words.asm)
; - UnownPicPointers (see data/pokemon/unown_pic_pointers.asm)
; - AnimationPointersUnown (see gfx/pokemon/unown_anim_pointers.asm)
; - UnownAnimationIdlePointers (see gfx/pokemon/unown_idle_pointers.asm)
; - UnownBitmasksPointers (see gfx/pokemon/unown_bitmask_pointers.asm)
; - UnownFramesPointers (see gfx/pokemon/unown_frame_pointers.asm)
	const_def 1
	const UNOWN_A           ;  1
	const UNOWN_B           ;  2
	const UNOWN_C           ;  3
	const UNOWN_D           ;  4
	const UNOWN_E           ;  5
	const UNOWN_F           ;  6
	const UNOWN_G           ;  7
	const UNOWN_H           ;  8
	const UNOWN_I           ;  9
	const UNOWN_J           ; 10
	const UNOWN_K           ; 11
	const UNOWN_L           ; 12
	const UNOWN_M           ; 13
	const UNOWN_N           ; 14
	const UNOWN_O           ; 15
	const UNOWN_P           ; 16
	const UNOWN_Q           ; 17
	const UNOWN_R           ; 18
	const UNOWN_S           ; 19
	const UNOWN_T           ; 20
	const UNOWN_U           ; 21
	const UNOWN_V           ; 22
	const UNOWN_W           ; 23
	const UNOWN_X           ; 24
	const UNOWN_Y           ; 25
	const UNOWN_Z           ; 26
	const UNOWN_EXCLAMATION ; 27
	const UNOWN_QUESTION    ; 28
DEF NUM_UNOWN EQU const_value - 1 ; 28

; Magikarp forms
; indexes for:
; - MagikarpPicPointers (see data/pokemon/magikarp_pic_pointers.asm)
; - AnimationPointersMagikarp (see gfx/pokemon/magikarp_anim_pointers.asm)
; - MagikarpAnimationIdlePointers (see gfx/pokemon/magikarp_idle_pointers.asm)
; - MagikarpBitmasksPointers (see gfx/pokemon/magikarp_bitmask_pointers.asm)
; - MagikarpFramesPointers (see gfx/pokemon/magikarp_frame_pointers.asm)
	; const_def 1
	; const MAGIKARP_PLAIN           ;  1
	; const MAGIKARP_SKELLY          ;  2
	; const MAGIKARP_CALICO_OW       ;  3
	; const MAGIKARP_CALICO_OWB      ;  4
	; const MAGIKARP_CALICO_WO       ;  5
	; const MAGIKARP_CALICO_OG       ;  6
	; const MAGIKARP_ORANGE_2_TONE   ;  7
	; const MAGIKARP_ORANGE_ORCA     ;  8
	; const MAGIKARP_ORANGE_DAPPLE   ;  9
	; const MAGIKARP_PINK_2_TONE     ; 10
	; const MAGIKARP_PINK_ORCA       ; 11
	; const MAGIKARP_PINK_DAPPLE     ; 12
	; const MAGIKARP_GRAY_BUBBLE     ; 13
	; const MAGIKARP_GRAY_DIAMOND    ; 14
	; const MAGIKARP_GRAY_PATCH      ; 15
	; const MAGIKARP_PURPLE_BUBBLE   ; 16
	; const MAGIKARP_PURPLE_DIAMOND  ; 17
	; const MAGIKARP_PURPLE_PATCH    ; 18
	; const MAGIKARP_APRICOT_TIGER   ; 19
	; const MAGIKARP_APRICOT_ZEBRA   ; 20
	; const MAGIKARP_APRICOT_STRIPE  ; 21
	; const MAGIKARP_BROWN_TIGER     ; 22
	; const MAGIKARP_BROWN_ZEBRA     ; 23
	; const MAGIKARP_BROWN_STRIPE    ; 24
	; const MAGIKARP_ORANGE_FOREHEAD ; 25
	; const MAGIKARP_ORANGE_MASK     ; 26
	; const MAGIKARP_BLACK_FOREHEAD  ; 27
	; const MAGIKARP_BLACK_MASK      ; 28
	; const MAGIKARP_BLUE_SAUCY      ; 29
	; const MAGIKARP_BLUE_RAIN       ; 30
	; const MAGIKARP_VIOLET_SAUCY    ; 31
	; const MAGIKARP_VIOLET_RAIN     ; 32
; DEF NUM_MAGIKARP EQU const_value - 1 ; 32

DEF UNOWN_OFFSET EQU NUM_POKEMON + NUM_UNOWN
