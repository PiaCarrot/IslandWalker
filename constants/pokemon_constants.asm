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
        const BULBASAUR ; 01
        const IVYSAUR ; 02
        const VENUSAUR ; 03
        const CHARMANDER ; 04
        const CHARMELEON ; 05
        const CHARIZARD ; 06
        const SQUIRTLE ; 07
        const WARTORTLE ; 08
        const BLASTOISE ; 09
        const CATERPIE ; 0a
        const METAPOD ; 0b
        const BUTTERFREE ; 0c
        const WEEDLE ; 0d
        const KAKUNA ; 0e
        const BEEDRILL ; 0f
        const PIDGEY ; 10
        const PIDGEOTTO ; 11
        const PIDGEOT ; 12
        const RATTATA ; 13
        const RATICATE ; 14
        const SPEAROW ; 15
        const FEAROW ; 16
        const EKANS ; 17
        const ARBOK ; 18
        const PIKACHU ; 19
        const RAICHU ; 1a
        const SANDSHREW ; 1b
        const SANDSLASH ; 1c
        const NIDORAN_F ; 1d
        const NIDORINA ; 1e
        const NIDOQUEEN ; 1f
        const NIDORAN_M ; 20
        const NIDORINO ; 21
        const NIDOKING ; 22
        const CLEFAIRY ; 23
        const CLEFABLE ; 24
        const VULPIX ; 25
        const NINETALES ; 26
        const JIGGLYPUFF ; 27
        const WIGGLYTUFF ; 28
        const ZUBAT ; 29
        const GOLBAT ; 2a
        const ODDISH ; 2b
        const GLOOM ; 2c
        const VILEPLUME ; 2d
        const PARAS ; 2e
        const PARASECT ; 2f
        const VENONAT ; 30
        const VENOMOTH ; 31
        const DIGLETT ; 32
        const DUGTRIO ; 33
        const MEOWTH ; 34
        const PERSIAN ; 35
        const PSYDUCK ; 36
        const GOLDUCK ; 37
        const MANKEY ; 38
        const PRIMEAPE ; 39
        const GROWLITHE ; 3a
        const ARCANINE ; 3b
        const POLIWAG ; 3c
        const POLIWHIRL ; 3d
        const POLIWRATH ; 3e
        const ABRA ; 3f
        const KADABRA ; 40
        const ALAKAZAM ; 41
        const MACHOP ; 42
        const MACHOKE ; 43
        const MACHAMP ; 44
        const BELLSPROUT ; 45
        const WEEPINBELL ; 46
        const VICTREEBEL ; 47
        const TENTACOOL ; 48
        const TENTACRUEL ; 49
        const GEODUDE ; 4a
        const GRAVELER ; 4b
        const GOLEM ; 4c
        const PONYTA ; 4d
        const RAPIDASH ; 4e
        const SLOWPOKE ; 4f
        const SLOWBRO ; 50
        const MAGNEMITE ; 51
        const MAGNETON ; 52
        const FARFETCH_D ; 53
        const DODUO ; 54
        const DODRIO ; 55
        const SEEL ; 56
        const DEWGONG ; 57
        const GRIMER ; 58
        const MUK ; 59
        const SHELLDER ; 5a
        const CLOYSTER ; 5b
        const GASTLY ; 5c
        const HAUNTER ; 5d
        const GENGAR ; 5e
        const ONIX ; 5f
        const DROWZEE ; 60
        const HYPNO ; 61
        const KRABBY ; 62
        const KINGLER ; 63
        const VOLTORB ; 64
        const ELECTRODE ; 65
        const EXEGGCUTE ; 66
        const EXEGGUTOR ; 67
        const CUBONE ; 68
        const MAROWAK ; 69
        const HITMONLEE ; 6a
        const HITMONCHAN ; 6b
        const LICKITUNG ; 6c
        const KOFFING ; 6d
        const WEEZING ; 6e
        const RHYHORN ; 6f
        const RHYDON ; 70
        const CHANSEY ; 71
        const TANGELA ; 72
        const KANGASKHAN ; 73
        const HORSEA ; 74
        const SEADRA ; 75
        const GOLDEEN ; 76
        const SEAKING ; 77
        const STARYU ; 78
        const STARMIE ; 79
        const MR__MIME ; 7a
        const SCYTHER ; 7b
        const JYNX ; 7c
        const ELECTABUZZ ; 7d
        const MAGMAR ; 7e
        const PINSIR ; 7f
        const TAUROS ; 80
        const MAGIKARP ; 81
        const GYARADOS ; 82
        const LAPRAS ; 83
        const DITTO ; 84
        const EEVEE ; 85
        const VAPOREON ; 86
        const JOLTEON ; 87
        const FLAREON ; 88
        const PORYGON ; 89
        const OMANYTE ; 8a
        const OMASTAR ; 8b
        const KABUTO ; 8c
        const KABUTOPS ; 8d
        const AERODACTYL ; 8e
        const SNORLAX ; 8f
        const ARTICUNO ; 90
        const ZAPDOS ; 91
        const MOLTRES ; 92
        const DRATINI ; 93
        const DRAGONAIR ; 94
        const DRAGONITE ; 95
        const MEWTWO ; 96
DEF NUM_KANTO_POKEMON EQU const_value -1
DEF JOHTO_POKEMON EQU const_value
        const CHIKORITA ; 97
        const BAYLEEF ; 98
        const MEGANIUM ; 99
        const CYNDAQUIL ; 9a
        const QUILAVA ; 9b
        const TYPHLOSION ; 9c
        const TOTODILE ; 9d
        const CROCONAW ; 9e
        const FERALIGATR ; 9f
        const SENTRET ; a0
        const FURRET ; a1
        const HOOTHOOT ; a2
        const NOCTOWL ; a3
        const LEDYBA ; a4
        const LEDIAN ; a5
        const SPINARAK ; a6
        const ARIADOS ; a7
        const CROBAT ; a8
        const CHINCHOU ; a9
        const LANTURN ; aa
        const PICHU ; ab
        const CLEFFA ; ac
        const IGGLYBUFF ; ad
        const TOGEPI ; ae
        const TOGETIC ; af
        const NATU ; b0
        const XATU ; b1
        const MAREEP ; b2
        const FLAAFFY ; b3
        const AMPHAROS ; b4
        const BELLOSSOM ; b5
        const MARILL ; b6
        const AZUMARILL ; b7
        const SUDOWOODO ; b8
        const POLITOED ; b9
        const HOPPIP ; ba
        const SKIPLOOM ; bb
        const JUMPLUFF ; bc
        const AIPOM ; bd
        const SUNKERN ; be
        const SUNFLORA ; bf
        const YANMA ; c0
        const WOOPER ; c1
        const QUAGSIRE ; c2
        const ESPEON ; c3
        const UMBREON ; c4
        const MURKROW ; c5
        const SLOWKING ; c6
        const MISDREAVUS ; c7
        const WOBBUFFET ; c8
        const GIRAFARIG ; c9
        const PINECO ; ca
        const FORRETRESS ; cb
        const DUNSPARCE ; cc
        const GLIGAR ; cd
        const STEELIX ; ce
        const SNUBBULL ; cf
        const GRANBULL ; d0
        const QWILFISH ; d1
        const SCIZOR ; d2
        const SHUCKLE ; d3
        const HERACROSS ; d4
        const SNEASEL ; d5
        const TEDDIURSA ; d6
        const URSARING ; d7
        const SLUGMA ; d8
        const MAGCARGO ; d9
        const SWINUB ; da
        const PILOSWINE ; db
        const CORSOLA ; dc
        const REMORAID ; dd
        const OCTILLERY ; de
        const DELIBIRD ; df
        const MANTINE ; e0
        const SKARMORY ; e1
        const HOUNDOUR ; e2
        const HOUNDOOM ; e3
        const KINGDRA ; e4
        const PHANPY ; e5
        const DONPHAN ; e6
        const PORYGON2 ; e7
        const STANTLER ; e8
        const SMEARGLE ; e9
        const TYROGUE ; ea
        const HITMONTOP ; eb
        const SMOOCHUM ; ec
        const ELEKID ; ed
        const MAGBY ; ee
        const MILTANK ; ef
        const BLISSEY ; f0
        const RAIKOU ; f1
        const ENTEI ; f2
        const SUICUNE ; f3
        const LARVITAR ; f4
        const PUPITAR ; f5
        const TYRANITAR ; f6
        const LUGIA ; f7
        const HO_OH ; f8
        const CELEBI ; f9
DEF NUM_JOHTO_POKEMON EQU const_value - JOHTO_POKEMON
DEF HOENN_POKEMON EQU const_value
        const POOCHYENA ; fa
        const MIGHTYENA ; fb
        const ZIGZAGOON ; fc
        const LINOONE ; fd
        const WINGULL ; fe
        const PELIPPER ; ff
        const RALTS ; 100
        const KIRLIA ; 101
        const GARDEVOIR ; 102
        const SHROOMISH ; 103
        const BRELOOM ; 104
        const NINCADA ; 105
        const NINJASK ; 106
        const SHEDINJA ; 107
        const AZURILL ; 108
        const ARON ; 109
        const LAIRON ; 10a
        const AGGRON ; 10b
        const CARVANHA ; 10c
        const SHARPEDO ; 10d
        const WAILMER ; 10e
        const WAILORD ; 10f
        const NUMEL ; 110
        const CAMERUPT ; 111
        const SPOINK ; 112
        const GRUMPIG ; 113
        const SPINDA ; 114
        const TRAPINCH ; 115
        const VIBRAVA ; 116
        const FLYGON ; 117
        const SWABLU ; 118
        const ALTARIA ; 119
        const ZANGOOSE ; 11a
        const SEVIPER ; 11b
        const FEEBAS ; 11c
        const MILOTIC ; 11d
        const KECLEON ; 11e
        const SHUPPET ; 11f
        const BANETTE ; 120
        const DUSKULL ; 121
        const DUSCLOPS ; 122
        const TROPIUS ; 123
        const CHIMECHO ; 124
        const WYNAUT ; 125
        const SNORUNT ; 126
        const GLALIE ; 127
        const SPHEAL ; 128
        const SEALEO ; 129
        const WALREIN ; 12a
        const RELICANTH ; 12b
        const LUVDISC ; 12c
        const LATIAS ; 12d
        const LATIOS ; 12e
DEF NUM_HOENN_POKEMON EQU const_value - HOENN_POKEMON
DEF SINNOH_POKEMON EQU const_value
        const SHINX ; 12f
        const LUXIO ; 130
        const LUXRAY ; 131
        const CHERUBI ; 132
        const CHERRIM ; 133
        const AMBIPOM ; 134
        const MISMAGIUS ; 135
        const HONCHKROW ; 136
        const CHINGLING ; 137
        const BONSLY ; 138
        const MIME_JR ; 139
        const HAPPINY ; 13a
        const CHATOT ; 13b
        const MUNCHLAX ; 13c
        const RIOLU ; 13d
        const LUCARIO ; 13e
        const CROAGUNK ; 13f
        const TOXICROAK ; 140
        const CARNIVINE ; 141
        const FINNEON ; 142
        const LUMINEON ; 143
        const MANTYKE ; 144
        const WEAVILE ; 145
        const MAGNEZONE ; 146
        const LICKILICKY ; 147
        const RHYPERIOR ; 148
        const TANGROWTH ; 149
        const ELECTIVIRE ; 14a
        const MAGMORTAR ; 14b
        const TOGEKISS ; 14c
        const YANMEGA ; 14d
        const LEAFEON ; 14e
        const GLACEON ; 14f
        const GLISCOR ; 150
        const MAMOSWINE ; 151
        const PORYGON_Z ; 152
        const GALLADE ; 153
        const DUSKNOIR ; 154
        const FROSLASS ; 155
        const ROTOM ; 156
DEF NUM_SINNOH_POKEMON EQU const_value - SINNOH_POKEMON
DEF OTHER_POKEMON EQU const_value
        const FERROSEED ; 157
        const FERROTHORN ; 158
        const STUNFISK ; 159
        const PAWNIARD ; 15a
        const BISHARP ; 15b
        const ZORUA ; 15c
        const ZOROARK ; 15d
        const SKRELP ; 15e
        const DRAGALGE ; 15f
        const CLAUNCHER ; 160
        const CLAWITZER ; 161
        const SYLVEON ; 162
        const PANCHAM ; 163
        const PANGORO ; 164
        const INKAY ; 165
        const MALAMAR ; 166
        const NOIBAT ; 167
        const NOIVERN ; 168
        const HONEDGE ; 169
        const DOUBLADE ; 16a
        const AEGISLASH ; 16b
        const GOOMY ; 16c
        const SLIGGOO ; 16d
        const GOODRA ; 16e
        const ROCKRUFF ; 16f
        const LYCANROC ; 170
        const CUTIEFLY ; 171
        const RIBOMBEE ; 172
        const PIKIPEK ; 173
        const TRUMBEAK ; 174
        const TOUCANNON ; 175
        const MIMIKYU ; 176
        const SANDYGAST ; 177
        const PALOSSAND ; 178
        const SALANDIT ; 179
        const SALAZZLE ; 17a
        const MAREANIE ; 17b
        const TOXAPEX ; 17c
        const TURTONATOR ; 17d
        const DHELMISE ; 17e
        const PINCURCHIN ; 17f
        const CRAMORANT ; 180
        const BINACLE ; 181
        const BARBARACLE ; 182
        const APPLIN ; 183
        const FLAPPLE ; 184
        const APPLETUN ; 185
        const GIMMIGHOUL ; 186
        const GHOLDENGO ; 187
        const ANNIHILAPE ; 188
        const DUDUNSPARCE ; 189
        const FARIGIRAF ; 18a
        const KINGAMBIT ; 18b
        const DIPPLIN ; 18c
        const HYDRAPPLE ; 18d
        const CHARCADET ; 18e
        const ARMAROUGE ; 18f
        const CERULEDGE ; 190
        const CLODSIRE ; 191
        const CURSOLA ; 192
        const PERRSERKER ; 193
        const SIRFETCHD ; 194
        const MR_RIME ; 195
        const OBSTAGOON ; 196
        const OVERQWIL ; 197
        const SNEASLER ; 198
        const KLEAVOR ; 199
        const URSALUNA ; 19a
        const WYRDEER ; 19b
        const MARSHADOW ; 19c
        const PHIONE ; 19d
        const MANAPHY ; 19e
        const MELTAN ; 19f
        const MELMETAL ; 1a0
        const MEW ; 1a1
        const UNOWN ; 1a2
DEF NUM_OTHER_POKEMON EQU const_value - OTHER_POKEMON
DEF FORM_POKEMON EQU const_value
        const LAPRAS_PARTNER ; 1a3
        const RATTATA_ALOLA ; 1a4
        const RATICATE_ALOLA ; 1a5
        const RAICHU_ALOLA ; 1a6
        const SANDSHREW_ALOLA ; 1a7
        const SANDSLASH_ALOLA ; 1a8
        const DIGLETT_ALOLA ; 1a9
        const DUGTRIO_ALOLA ; 1aa
        const GRIMER_ALOLA ; 1ab
        const MUK_ALOLA ; 1ac
        const GEODUDE_ALOLA ; 1ad
        const GRAVELER_ALOLA ; 1ae
        const GOLEM_ALOLA ; 1af
        const VULPIX_ALOLA ; 1b0
        const NINETALES_ALOLA ; 1b1
        const MAROWAK_ALOLA ; 1b2
        const EXEGGUTOR_ALOLA ; 1b3
        const MEOWTH_ALOLA ; 1b4
        const PERSIAN_ALOLA ; 1b5
        const PONYTA_GALAR ; 1b6
        const RAPIDASH_GALAR ; 1b7
        const FARFETCH_D_GALAR ; 1b8
        const MR__MIME_GALAR ; 1b9
        const WEEZING_GALAR ; 1ba
        const ZIGZAGOON_GALAR ; 1bb
        const LINOONE_GALAR ; 1bc
        const STUNFISK_GALAR ; 1bd
        const CORSOLA_GALAR ; 1be
        const MEOWTH_GALAR ; 1bf
        const SLOWPOKE_GALAR ; 1c0
        const SLOWBRO_GALAR ; 1c1
        const SLOWKING_GALAR ; 1c2
        const ARTICUNO_GALAR ; 1c3
        const ZAPDOS_GALAR ; 1c4
        const MOLTRES_GALAR ; 1c5
        const GROWLITHE_HISUI ; 1c6
        const ARCANINE_HISUI ; 1c7
        const VOLTORB_HISUI ; 1c8
        const ELECTRODE_HISUI ; 1c9
        const QWILFISH_HISUI ; 1ca
        const SNEASEL_HISUI ; 1cb
        const ZORUA_HISUI ; 1cc
        const ZOROARK_HISUI ; 1cd
        const SLIGGOO_HISUI ; 1ce
        const GOODRA_HISUI ; 1cf
        const TYPHLOSION_HISUI ; 1d0
        const WOOPER_PALDEA ; 1d1
        const TAUROS_COMBAT ; 1d2
        const TAUROS_BLAZE ; 1d3
        const TAUROS_AQUA ; 1d4
        const CATERPIE_VALENCIA ; 1d5
        const METAPOD_VALENCIA ; 1d6
        const BUTTERFREE_VALENCIA ; 1d7
        const ODDISH_VALENCIA ; 1d8
        const GLOOM_VALENCIA ; 1d9
        const VILEPLUME_VALENCIA ; 1da
        const BELLOSSOM_VALENCIA ; 1db
        const BELLSPROUT_VALENCIA ; 1dc
        const WEEPINBELL_VALENCIA ; 1dd
        const VICTREEBEL_VALENCIA ; 1de
        const PARAS_VALENCIA ; 1df
        const PARASECT_VALENCIA ; 1e0
        const ONIX_CRYSTAL ; 1e1
        const STEELIX_CRYSTAL ; 1e2
        const URSALUNA_BLOODMOON ; 1e3
        const DRATINI_PARTNER ; 1e4
        const EEVEE_PARTNER ; 1e5
        const PIKACHU_PARTNER ; 1e6
        const DRAGONAIR_PARTNER ; 1e7
        const DRAGONITE_PARTNER ; 1e8
        const ROCKRUFF_OWN_TEMPO ; 1e9
        const LYCANROC_MIDNIGHT ; 1ea
        const LYCANROC_DUSK ; 1eb
        const GIMMIGHOUL_ROAMING ; 1ec
        const MEOWTH_ROCKET ; 1ed
        const ROTOM_HEAT ; 1ee
        const ROTOM_WASH ; 1ef
        const ROTOM_FROST ; 1f0
        const ROTOM_FAN ; 1f1
        const ROTOM_MOW ; 1f2
        ; const DUDUNSPARCE_THREE  ; 1f4
DEF NUM_FORM_POKEMON EQU const_value - FORM_POKEMON
DEF NUM_DEX_POKEMON EQU FORM_POKEMON - 1
DEF NUM_DEX_BYTES EQU (NUM_DEX_POKEMON + 7) / 8
DEF NUM_DEX_BEFORE_FORMS EQU NUM_DEX_POKEMON - 18
DEF NUM_DEX_BEFORE_FORMS_BYTES EQU (NUM_DEX_BEFORE_FORMS + 7) / 8
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
        const UNOWN_A ; 1f3
        const UNOWN_B ; 1f4
        const UNOWN_C ; 1f5
        const UNOWN_D ; 1f6
        const UNOWN_E ; 1f7
        const UNOWN_F ; 1f8
        const UNOWN_G ; 1f9
        const UNOWN_H ; 1fa
        const UNOWN_I ; 1fb
        const UNOWN_J ; 1fc
        const UNOWN_K ; 1fd
        const UNOWN_L ; 1fe
        const UNOWN_M ; 1ff
        const UNOWN_N ; 200
        const UNOWN_O ; 201
        const UNOWN_P ; 202
        const UNOWN_Q ; 203
        const UNOWN_R ; 204
        const UNOWN_S ; 205
        const UNOWN_T ; 206
        const UNOWN_U ; 207
        const UNOWN_V ; 208
        const UNOWN_W ; 209
        const UNOWN_X ; 20a
        const UNOWN_Y ; 20b
        const UNOWN_Z ; 20c
        const UNOWN_EXCLAMATION ; 20d
        const UNOWN_QUESTION ; 20e
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
