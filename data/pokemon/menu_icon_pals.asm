; code from Polished/Rangi's tutorial, palettes by Major Agnostic
MACRO icon_pals
	dn PAL_ICON_\1, PAL_ICON_\2
ENDM

	icon_pals RED,    BLUE   ; EGG is -3
	icon_pals RED,    RED    ; unused
	icon_pals RED,    RED    ; unused
	icon_pals RED,    RED    ; unused
MonMenuIconPals:
	table_width 1
	;         normal, shiny
; Kanto
	icon_pals TEAL,   GREEN  ; BULBASAUR
	icon_pals TEAL,   GREEN  ; IVYSAUR
	icon_pals TEAL,   GREEN  ; VENUSAUR
	icon_pals RED,    BROWN  ; CHARMANDER
	icon_pals RED,    BROWN  ; CHARMELEON
	icon_pals RED,    PURPLE ; CHARIZARD
	icon_pals BLUE,   TEAL   ; SQUIRTLE
	icon_pals BLUE,   TEAL   ; WARTORTLE
	icon_pals BLUE,   TEAL   ; BLASTOISE
	icon_pals GREEN,  BROWN  ; CATERPIE
	icon_pals GREEN,  BROWN  ; METAPOD
	icon_pals TEAL,   PINK   ; BUTTERFREE
	icon_pals RED,    GREEN  ; WEEDLE
	icon_pals BROWN,  GREEN  ; KAKUNA
	icon_pals RED,    BLUE   ; BEEDRILL
	icon_pals BROWN,  RED    ; PIDGEY
	icon_pals BROWN,  BROWN  ; PIDGEOTTO
	icon_pals BROWN,  GREEN  ; PIDGEOT
	icon_pals PURPLE, GRAY   ; RATTATA
	icon_pals BROWN,  BROWN  ; RATICATE
	icon_pals BROWN,  BROWN  ; SPEAROW
	icon_pals BROWN,  GRAY   ; FEAROW
	icon_pals PURPLE, GREEN  ; EKANS
	icon_pals PURPLE, GREEN  ; ARBOK
	icon_pals RED,    RED    ; PIKACHU
	icon_pals RED,    BROWN  ; RAICHU
	icon_pals BROWN,  GRAY   ; SANDSHREW
	icon_pals BROWN,  GRAY   ; SANDSLASH
	icon_pals BLUE,   PURPLE ; NIDORAN_F
	icon_pals BLUE,   PURPLE ; NIDORINA
	icon_pals BLUE,   GRAY   ; NIDOQUEEN
	icon_pals PURPLE, BLUE   ; NIDORAN_M
	icon_pals PURPLE, BLUE   ; NIDORINO
	icon_pals PURPLE, BLUE   ; NIDOKING
	icon_pals BROWN,  GREEN  ; CLEFAIRY
	icon_pals BROWN,  GREEN  ; CLEFABLE
	icon_pals RED,    BROWN  ; VULPIX
	icon_pals BROWN,  GRAY   ; NINETALES
	icon_pals RED,    PINK   ; JIGGLYPUFF
	icon_pals RED,    PINK   ; WIGGLYTUFF
	icon_pals BLUE,   GREEN  ; ZUBAT
	icon_pals BLUE,   PINK   ; GOLBAT
	icon_pals GREEN,  BROWN  ; ODDISH
	icon_pals RED,    BROWN  ; GLOOM
	icon_pals RED,    PINK   ; VILEPLUME
	icon_pals RED,    BROWN  ; PARAS
	icon_pals RED,    BROWN  ; PARASECT
	icon_pals RED,    BLUE   ; VENONAT
	icon_pals PURPLE, BLUE   ; VENOMOTH
	icon_pals BROWN,  BLUE   ; DIGLETT
	icon_pals BROWN,  BLUE   ; DUGTRIO
	icon_pals BROWN,  PURPLE ; PERSIAN
	icon_pals BROWN,  PURPLE ; MEOWTH
	icon_pals BROWN,  BLUE   ; PSYDUCK
	icon_pals BLUE,   BLUE   ; GOLDUCK
	icon_pals BROWN,  GREEN  ; MANKEY
	icon_pals BROWN,  BROWN  ; PRIMEAPE
	icon_pals RED,    BROWN  ; GROWLITHE
	icon_pals RED,    BROWN  ; ARCANINE
	icon_pals RED,    RED    ; POLIWAG
	icon_pals BLUE,   BLUE   ; POLIWHIRL
	icon_pals BLUE,   TEAL   ; POLIWRATH
	icon_pals BROWN,  PURPLE ; ABRA
	icon_pals BROWN,  PURPLE ; KADABRA
	icon_pals BROWN,  PURPLE ; ALAKAZAM
	icon_pals BROWN,  GRAY   ; MACHOP
	icon_pals GRAY,   GRAY   ; MACHOKE
	icon_pals BROWN,  GRAY   ; MACHAMP
	icon_pals GREEN,  BROWN  ; BELLSPROUT
	icon_pals GREEN,  PURPLE ; WEEPINBELL
	icon_pals GREEN,  GREEN  ; VICTREEBEL
	icon_pals BLUE,   BLUE   ; TENTACOOL
	icon_pals BLUE,   BLUE   ; TENTACRUEL
	icon_pals GRAY,   BROWN  ; GEODUDE
	icon_pals GRAY,   BROWN  ; GRAVELER
	icon_pals GRAY,   BROWN  ; GOLEM
	icon_pals RED,    BROWN  ; PONYTA
	icon_pals RED,    PURPLE ; RAPIDASH
	icon_pals PINK,   PURPLE ; SLOWPOKE
	icon_pals PINK,   PURPLE ; SLOWBRO
	icon_pals GRAY,   GRAY   ; MAGNEMITE
	icon_pals GRAY,   GRAY   ; MAGNETON
	icon_pals BROWN,  BROWN  ; FARFETCH_D
	icon_pals BROWN,  BROWN  ; DODUO
	icon_pals BROWN,  BROWN  ; DODRIO
	icon_pals BLUE,   GRAY   ; SEEL
	icon_pals BLUE,   GRAY   ; DEWGONG
	icon_pals PURPLE, GRAY   ; GRIMER
	icon_pals PURPLE, GREEN  ; MUK
	icon_pals PURPLE, BROWN  ; SHELLDER
	icon_pals PURPLE, BLUE   ; CLOYSTER
	icon_pals PURPLE, BLUE   ; GASTLY
	icon_pals RED,    BLUE   ; HAUNTER
	icon_pals RED,    PURPLE ; GENGAR
	icon_pals GRAY,   GREEN  ; ONIX
	icon_pals BROWN,  PURPLE ; DROWZEE
	icon_pals BROWN,  PURPLE ; HYPNO
	icon_pals RED,    BROWN  ; KRABBY
	icon_pals RED,    GRAY   ; KINGLER
	icon_pals RED,    BLUE   ; VOLTORB
	icon_pals RED,    BLUE   ; ELECTRODE
	icon_pals PINK,   GREEN  ; EXEGGCUTE
	icon_pals GREEN,  BROWN  ; EXEGGUTOR
	icon_pals BROWN,  GRAY   ; CUBONE
	icon_pals BROWN,  GRAY   ; MAROWAK
	icon_pals BROWN,  GREEN  ; HITMONLEE
	icon_pals BROWN,  GRAY   ; HITMONCHAN
	icon_pals RED,    PINK   ; LICKITUNG
	icon_pals PURPLE, BLUE   ; KOFFING
	icon_pals PURPLE, BLUE   ; WEEZING
	icon_pals GRAY,   BROWN  ; RHYHORN
	icon_pals GRAY,   GRAY   ; RHYDON
	icon_pals PINK,   GREEN  ; CHANSEY
	icon_pals BLUE,   GREEN  ; TANGELA
	icon_pals BROWN,  GRAY   ; KANGASKHAN
	icon_pals BLUE,   BLUE   ; HORSEA
	icon_pals BLUE,   BLUE   ; SEADRA
	icon_pals PINK,   BROWN  ; GOLDEEN
	icon_pals RED,    BROWN  ; SEAKING
	icon_pals BROWN,  BLUE   ; STARYU
	icon_pals PURPLE, BLUE   ; STARMIE
	icon_pals PINK,   GREEN  ; MR__MIME
	icon_pals GREEN,  GREEN  ; SCYTHER
	icon_pals PURPLE, PURPLE ; JYNX
	icon_pals BROWN,  GRAY   ; ELECTABUZZ
	icon_pals RED,    PURPLE ; MAGMAR
	icon_pals BROWN,  GRAY   ; PINSIR
	icon_pals BROWN,  BROWN  ; TAUROS
	icon_pals RED,    BROWN  ; MAGIKARP
	icon_pals BLUE,   RED    ; GYARADOS
	icon_pals BLUE,   PURPLE ; LAPRAS
	icon_pals PURPLE, BLUE   ; DITTO
	icon_pals BROWN,  GRAY   ; EEVEE
	icon_pals BLUE,   PURPLE ; VAPOREON
	icon_pals RED,    BROWN  ; JOLTEON
	icon_pals RED,    RED    ; FLAREON
	icon_pals TEAL,   BLUE   ; PORYGON
	icon_pals BLUE,   GRAY   ; OMANYTE
	icon_pals BLUE,   GRAY   ; OMASTAR
	icon_pals BROWN,  GRAY   ; KABUTO
	icon_pals BROWN,  GRAY   ; KABUTOPS
	icon_pals GRAY,   PURPLE ; AERODACTYL
	icon_pals BROWN,  BLUE   ; SNORLAX
	icon_pals BLUE,   BLUE   ; ARTICUNO
	icon_pals BROWN,  RED    ; ZAPDOS
	icon_pals RED,    RED    ; MOLTRES
	icon_pals BLUE,   PURPLE ; DRATINI
	icon_pals BLUE,   PURPLE ; DRAGONAIR
	icon_pals RED,    GRAY   ; DRAGONITE
	icon_pals PURPLE, BROWN  ; MEWTWO
	icon_pals PINK,   BLUE   ; MEW
; Johto
	icon_pals GREEN,  BROWN  ; CHIKORITA
	icon_pals GREEN,  BROWN  ; BAYLEEF
	icon_pals GREEN,  GREEN  ; MEGANIUM
	icon_pals PINK,   PURPLE ; CYNDAQUIL
	icon_pals PINK,   PURPLE ; QUILAVA
	icon_pals PINK,   PURPLE ; TYPHLOSION
	icon_pals BLUE,   TEAL   ; TOTODILE
	icon_pals BLUE,   TEAL   ; CROCONAW
	icon_pals BLUE,   GREEN  ; FERALIGATR
	icon_pals BROWN,  PURPLE ; SENTRET
	icon_pals BROWN,  PURPLE ; FURRET
	icon_pals BROWN,  BROWN  ; HOOTHOOT
	icon_pals BROWN,  GREEN  ; NOCTOWL
	icon_pals RED,    PINK   ; LEDYBA
	icon_pals RED,    PINK   ; LEDIAN
	icon_pals GREEN,  PURPLE ; SPINARAK
	icon_pals RED,    PURPLE ; ARIADOS
	icon_pals PURPLE, PINK   ; CROBAT
	icon_pals BLUE,   GRAY   ; CHINCHOU
	icon_pals BLUE,   BLUE   ; LANTURN
	icon_pals RED,    PINK   ; PICHU
	icon_pals PINK,   GREEN  ; CLEFFA
	icon_pals PINK,   GREEN  ; IGGLYBUFF
	icon_pals RED,    BLUE   ; TOGEPI
	icon_pals RED,    BLUE   ; TOGETIC
	icon_pals TEAL,   TEAL   ; NATU
	icon_pals TEAL,   GREEN  ; XATU
	icon_pals BLUE,   PURPLE ; MAREEP
	icon_pals PINK,   PINK   ; FLAAFFY
	icon_pals BROWN,  BLUE   ; AMPHAROS
	icon_pals RED,    PINK   ; BELLOSSOM
	icon_pals BLUE,   GREEN  ; MARILL
	icon_pals BLUE,   BROWN  ; AZUMARILL
	icon_pals GREEN,  RED    ; SUDOWOODO
	icon_pals GREEN,  GRAY   ; POLITOED
	icon_pals RED,    GREEN  ; HOPPIP
	icon_pals GREEN,  PURPLE ; SKIPLOOM
	icon_pals BLUE,   PURPLE ; JUMPLUFF
	icon_pals PURPLE, PURPLE ; AIPOM
	icon_pals GREEN,  GREEN  ; SUNKERN
	icon_pals GREEN,  BROWN  ; SUNFLORA
	icon_pals RED,    BLUE   ; YANMA
	icon_pals BLUE,   PURPLE ; WOOPER
	icon_pals BLUE,   PURPLE ; QUAGSIRE
	icon_pals PURPLE, GREEN  ; ESPEON
	icon_pals BROWN,  BLUE   ; UMBREON
	icon_pals BLUE,   PURPLE ; MURKROW
	icon_pals PINK,   BLUE   ; SLOWKING
	icon_pals PURPLE, BROWN  ; MISDREAVUS
	icon_pals GRAY,   BLUE   ; UNOWN
	icon_pals BLUE,   PURPLE ; WOBBUFFET
	icon_pals RED,    BLUE   ; GIRAFARIG
	icon_pals TEAL,   PINK   ; PINECO
	icon_pals RED,    BROWN  ; FORRETRESS
	icon_pals BLUE,   PURPLE ; DUNSPARCE
	icon_pals PURPLE, GRAY   ; GLIGAR
	icon_pals GRAY,   BROWN  ; STEELIX
	icon_pals PINK,   BLUE   ; SNUBBULL
	icon_pals PURPLE, GRAY   ; GRANBULL
	icon_pals BLUE,   PURPLE ; QWILFISH
	icon_pals RED,    GREEN  ; SCIZOR
	icon_pals RED,    BLUE   ; SHUCKLE
	icon_pals BLUE,   PURPLE ; HERACROSS
	icon_pals RED,    PURPLE ; SNEASEL
	icon_pals BROWN,  GREEN  ; TEDDIURSA
	icon_pals BROWN,  GREEN  ; URSARING
	icon_pals RED,    GRAY   ; SLUGMA
	icon_pals RED,    BLUE   ; MAGCARGO
	icon_pals BROWN,  BLUE   ; SWINUB
	icon_pals BROWN,  BROWN  ; PILOSWINE
	icon_pals PINK,   TEAL   ; CORSOLA
	icon_pals BLUE,   GRAY   ; REMORAID
	icon_pals RED,    BROWN  ; OCTILLERY
	icon_pals RED,    PURPLE ; DELIBIRD
	icon_pals PURPLE, BLUE   ; MANTINE
	icon_pals RED,    GREEN  ; SKARMORY
	icon_pals RED,    BLUE   ; HOUNDOUR
	icon_pals RED,    BLUE   ; HOUNDOOM
	icon_pals BLUE,   PURPLE ; KINGDRA
	icon_pals BLUE,   TEAL   ; PHANPY
	icon_pals GRAY,   BROWN  ; DONPHAN
	icon_pals BLUE,   BLUE   ; PORYGON2
	icon_pals BROWN,  GREEN  ; STANTLER
	icon_pals BROWN,  GREEN  ; SMEARGLE
	icon_pals BROWN,  BLUE   ; TYROGUE
	icon_pals BROWN,  PURPLE ; HITMONTOP
	icon_pals PURPLE, PINK   ; SMOOCHUM
	icon_pals BROWN,  PINK   ; ELEKID
	icon_pals RED,    PINK   ; MAGBY
	icon_pals PINK,   GRAY   ; MILTANK
	icon_pals RED,    PINK   ; BLISSEY
	icon_pals PURPLE, PINK   ; RAIKOU
	icon_pals RED,    BROWN  ; ENTEI
	icon_pals BLUE,   GRAY   ; SUICUNE
	icon_pals GREEN,  BROWN  ; LARVITAR
	icon_pals BLUE,   PURPLE ; PUPITAR
	icon_pals GREEN,  BROWN  ; TYRANITAR
	icon_pals BLUE,   TEAL   ; LUGIA
	icon_pals RED,    BROWN  ; HO_OH
	icon_pals GREEN,  PINK   ; CELEBI
; Hoenn
	icon_pals RED,    RED    ; TREECKO
	icon_pals RED,    RED    ; GROVYLE
	icon_pals RED,    RED    ; SCEPTILE
	icon_pals RED,    RED    ; TORCHIC
	icon_pals RED,    RED    ; COMBUSKEN
	icon_pals RED,    RED    ; BLAZIKEN
	icon_pals RED,    RED    ; MUDKIP
	icon_pals RED,    RED    ; MARSHTOMP
	icon_pals RED,    RED    ; SWAMPERT
	icon_pals RED,    RED    ; POOCHYENA
	icon_pals RED,    RED    ; MIGHTYENA
	icon_pals RED,    RED    ; ZIGZAGOON
	icon_pals RED,    RED    ; LINOONE
	icon_pals RED,    RED    ; WURMPLE
	icon_pals RED,    RED    ; SILCOON
	icon_pals RED,    RED    ; BEAUTIFLY
	icon_pals RED,    RED    ; CASCOON
	icon_pals RED,    RED    ; DUSTOX
	icon_pals RED,    RED    ; LOTAD
	icon_pals RED,    RED    ; LOMBRE
	icon_pals RED,    RED    ; LUDICOLO
	icon_pals RED,    RED    ; SEEDOT
	icon_pals RED,    RED    ; NUZLEAF
	icon_pals RED,    RED    ; SHIFTRY
	icon_pals RED,    RED    ; TAILLOW
	icon_pals RED,    RED    ; SWELLOW
	icon_pals RED,    RED    ; WINGULL
	icon_pals RED,    RED    ; PELIPPER
	icon_pals RED,    RED    ; RALTS
	icon_pals RED,    RED    ; KIRLIA
	icon_pals RED,    RED    ; GARDEVOIR
	icon_pals RED,    RED    ; SURSKIT
	icon_pals RED,    RED    ; MASQUERAIN
	icon_pals RED,    RED    ; SHROOMISH
	icon_pals RED,    RED    ; BRELOOM
	icon_pals RED,    RED    ; SLAKOTH
	icon_pals RED,    RED    ; VIGOROTH
	icon_pals RED,    RED    ; SLAKING
	icon_pals RED,    RED    ; NINCADA
	icon_pals RED,    RED    ; NINJASK
	icon_pals RED,    RED    ; SHEDINJA
	icon_pals RED,    RED    ; WHISMUR
	icon_pals RED,    RED    ; LOUDRED
	icon_pals RED,    RED    ; EXPLOUD
	icon_pals RED,    RED    ; MAKUHITA
	icon_pals RED,    RED    ; HARIYAMA
	icon_pals RED,    RED    ; AZURILL
	icon_pals RED,    RED    ; NOSEPASS
	icon_pals RED,    RED    ; SKITTY
	icon_pals RED,    RED    ; DELCATTY
	icon_pals RED,    RED    ; SABLEYE
	icon_pals RED,    RED    ; MAWILE
	icon_pals RED,    RED    ; ARON
	icon_pals RED,    RED    ; LAIRON
	icon_pals RED,    RED    ; AGGRON
	icon_pals RED,    RED    ; MEDITITE
	icon_pals RED,    RED    ; MEDICHAM
	icon_pals RED,    RED    ; ELECTRIKE
	icon_pals RED,    RED    ; MANECTRIC
	icon_pals RED,    RED    ; PLUSLE
	icon_pals RED,    RED    ; MINUN
	icon_pals RED,    RED    ; VOLBEAT
	icon_pals RED,    RED    ; ILLUMISE
	icon_pals RED,    RED    ; ROSELIA
	icon_pals RED,    RED    ; GULPIN
	icon_pals RED,    RED    ; SWALOT
	icon_pals RED,    RED    ; CARVANHA
	icon_pals RED,    RED    ; SHARPEDO
	icon_pals RED,    RED    ; WAILMER
	icon_pals RED,    RED    ; WAILORD
	icon_pals RED,    RED    ; NUMEL
	icon_pals RED,    RED    ; CAMERUPT
	icon_pals RED,    RED    ; TORKOAL
	icon_pals RED,    RED    ; SPOINK
	icon_pals RED,    RED    ; GRUMPIG
	icon_pals RED,    RED    ; SPINDA
	icon_pals RED,    RED    ; TRAPINCH
	icon_pals RED,    RED    ; VIBRAVA
	icon_pals RED,    RED    ; FLYGON
	icon_pals RED,    RED    ; CACNEA
	icon_pals RED,    RED    ; CACTURNE
	icon_pals RED,    RED    ; SWABLU
	icon_pals RED,    RED    ; ALTARIA
	icon_pals RED,    RED    ; ZANGOOSE
	icon_pals RED,    RED    ; SEVIPER
	icon_pals RED,    RED    ; LUNATONE
	icon_pals RED,    RED    ; SOLROCK
	icon_pals RED,    RED    ; BARBOACH
	icon_pals RED,    RED    ; WHISCASH
	icon_pals RED,    RED    ; CORPHISH
	icon_pals RED,    RED    ; CRAWDAUNT
	icon_pals RED,    RED    ; BALTOY
	icon_pals RED,    RED    ; CLAYDOL
	icon_pals RED,    RED    ; LILEEP
	icon_pals RED,    RED    ; CRADILY
	icon_pals RED,    RED    ; ANORITH
	icon_pals RED,    RED    ; ARMALDO
	icon_pals RED,    RED    ; FEEBAS
	icon_pals RED,    RED    ; MILOTIC
	icon_pals RED,    RED    ; CASTFORM
	icon_pals RED,    RED    ; KECLEON
	icon_pals RED,    RED    ; SHUPPET
	icon_pals RED,    RED    ; BANETTE
	icon_pals RED,    RED    ; DUSKULL
	icon_pals RED,    RED    ; DUSCLOPS
	icon_pals RED,    RED    ; TROPIUS
	icon_pals RED,    RED    ; CHIMECHO
	icon_pals RED,    RED    ; ABSOL
	icon_pals RED,    RED    ; WYNAUT
	icon_pals RED,    RED    ; SNORUNT
	icon_pals RED,    RED    ; GLALIE
	icon_pals RED,    RED    ; SPHEAL
	icon_pals RED,    RED    ; SEALEO
	icon_pals RED,    RED    ; WALREIN
	icon_pals RED,    RED    ; CLAMPERL
	icon_pals RED,    RED    ; HUNTAIL
	icon_pals RED,    RED    ; GOREBYSS
	icon_pals RED,    RED    ; RELICANTH
	icon_pals RED,    RED    ; LUVDISC
	icon_pals RED,    RED    ; BAGON
	icon_pals RED,    RED    ; SHELGON
	icon_pals RED,    RED    ; SALAMENCE
	icon_pals RED,    RED    ; BELDUM
	icon_pals RED,    RED    ; METANG
	icon_pals RED,    RED    ; METAGROSS
	icon_pals RED,    RED    ; REGIROCK
	icon_pals RED,    RED    ; REGICE
	icon_pals RED,    RED    ; REGISTEEL
	icon_pals RED,    RED    ; LATIAS
	icon_pals RED,    RED    ; LATIOS
	icon_pals RED,    RED    ; KYOGRE
	icon_pals RED,    RED    ; GROUDON
	icon_pals RED,    RED    ; RAYQUAZA
	icon_pals RED,    RED    ; JIRACHI
	icon_pals RED,    RED    ; DEOXYS
; Forms
	icon_pals BLUE,   TEAL   ; LAPRAS
	assert_table_length NUM_POKEMON
