; Johto Pokémon in grass

JohtoGrassWildMons:

	def_grass_wildmons VALENCIA_ISLAND
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	dbw 15, PIDGEY
	dbw 15, BELLSPROUT
	dbw 16, PIDGEY
	dbw 16, BELLSPROUT
	dbw 15, CATERPIE
	dbw 16, CATERPIE
	dbw 15, HOPPIP
	dbw 16, HOPPIP
	dbw 17, SKIPLOOM
	dbw 17, METAPOD
	dbw 18, METAPOD
	dbw 18, SKIPLOOM
	; day
	dbw 15, PIDGEY
	dbw 15, BELLSPROUT
	dbw 16, PIDGEY
	dbw 16, BELLSPROUT
	dbw 15, CATERPIE
	dbw 16, CATERPIE
	dbw 15, HOPPIP
	dbw 16, HOPPIP
	dbw 17, SKIPLOOM
	dbw 17, METAPOD
	dbw 18, METAPOD
	dbw 18, SKIPLOOM
	; nite
	dbw 15, ODDISH
	dbw 15, BELLSPROUT
	dbw 16, ODDISH
	dbw 16, BELLSPROUT
	dbw 15, HOOTHOOT
	dbw 16, HOOTHOOT
	dbw 15, VENONAT
	dbw 16, VENONAT
	dbw 15, PARAS
	dbw 19, RATICATE
	dbw 16, PARAS
	dbw 20, RATICATE
	end_grass_wildmons
	
	def_grass_wildmons ROUTE_49
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 2, PIDGEY
	dbw 2, CATERPIE
	dbw 3, PIDGEY
	dbw 3, CATERPIE
	dbw 2, BELLSPROUT
	dbw 3, BELLSPROUT
	dbw 2, NIDORAN_F
	dbw 3, NIDORAN_F
	dbw 2, NIDORAN_M
	dbw 2, BULBASAUR ; PIKIPEK
	dbw 3, NIDORAN_M
	dbw 3, BULBASAUR ; PIKIPEK
	; day
	dbw 2, PIDGEY
	dbw 2, CATERPIE
	dbw 3, PIDGEY
	dbw 3, CATERPIE
	dbw 2, BELLSPROUT
	dbw 3, BELLSPROUT
	dbw 2, NIDORAN_F
	dbw 3, NIDORAN_F
	dbw 2, NIDORAN_M
	dbw 2, BULBASAUR ; PIKIPEK
	dbw 3, NIDORAN_M
	dbw 3, BULBASAUR ; PIKIPEK
	; nite
	dbw 2, RATTATA
	dbw 2, ODDISH
	dbw 3, RATTATA
	dbw 3, ODDISH
	dbw 2, VENONAT
	dbw 3, NIDORAN_M
	dbw 3, VENONAT
	dbw 3, NIDORAN_F
	dbw 2, PARAS
	dbw 2, HOOTHOOT
	dbw 3, PARAS
	dbw 3, HOOTHOOT
	end_grass_wildmons
	
	def_grass_wildmons ROUTE_49_NORTH
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 2, PIDGEY
	dbw 2, CATERPIE
	dbw 3, PIDGEY
	dbw 3, CATERPIE
	dbw 2, BELLSPROUT
	dbw 3, BELLSPROUT
	dbw 2, NIDORAN_F
	dbw 3, NIDORAN_F
	dbw 2, NIDORAN_M
	dbw 2, BULBASAUR ; PIKIPEK
	dbw 3, NIDORAN_M
	dbw 3, BULBASAUR ; PIKIPEK
	; day
	dbw 2, PIDGEY
	dbw 2, CATERPIE
	dbw 3, PIDGEY
	dbw 3, CATERPIE
	dbw 2, BELLSPROUT
	dbw 3, BELLSPROUT
	dbw 2, NIDORAN_F
	dbw 3, NIDORAN_F
	dbw 2, NIDORAN_M
	dbw 2, BULBASAUR ; PIKIPEK
	dbw 3, NIDORAN_M
	dbw 3, BULBASAUR ; PIKIPEK
	; nite
	dbw 2, RATTATA
	dbw 2, ODDISH
	dbw 3, RATTATA
	dbw 3, ODDISH
	dbw 2, VENONAT
	dbw 3, NIDORAN_M
	dbw 3, VENONAT
	dbw 3, NIDORAN_F
	dbw 2, PARAS
	dbw 2, HOOTHOOT
	dbw 3, PARAS
	dbw 3, HOOTHOOT
	end_grass_wildmons
	
	def_grass_wildmons ALTERING_CAVE ; Not accessible until you get Cut, Swarms change the encounters here
	db 7 percent, 7 percent, 7 percent ; 7 is just a reference to the gen 3 encounter rate
	; morn
	; Swarm list: MAREEP, AIPOM, PINECO, TEDDIURSA, HOUNDOUR, STANTLER, SMEARGLE
	dbw 10, ZUBAT                   ; 20%
	dbw 12, ZUBAT                   ; 20%
	dbw  8, ZUBAT                   ; 10%
	dbw 14, ZUBAT                   ; 10%
	dbw 10, ZUBAT                   ; 10%
	dbw 12, ZUBAT                   ; 10%
	dbw 16, ZUBAT                   ;  5%
	dbw  6, ZUBAT                   ;  5%
	dbw  8, ZUBAT                   ;  4% You can see how gen 3 uses these probabilities to make
	dbw 14, ZUBAT                   ;  4% A 5% encounter for lvl 16, 6, 8, and 14 equally
	dbw  8, ZUBAT                   ;  1% Not including the 20% and 10% rates
	dbw 14, ZUBAT                   ;  1% But you can abuse it =)
	; day
	dbw 10, ZUBAT                   ; 20%
	dbw 12, ZUBAT                   ; 20%
	dbw  8, ZUBAT                   ; 10%
	dbw 14, ZUBAT                   ; 10%
	dbw 10, ZUBAT                   ; 10%
	dbw 12, ZUBAT                   ; 10%
	dbw 16, ZUBAT                   ;  5%
	dbw  6, ZUBAT                   ;  5%
	dbw  8, ZUBAT                   ;  4%
	dbw 14, ZUBAT                   ;  4%
	dbw  8, ZUBAT                   ;  1%
	dbw 14, ZUBAT                   ;  1%
	; nite
	dbw 10, ZUBAT                   ; 20%
	dbw 12, ZUBAT                   ; 20%
	dbw  8, ZUBAT                   ; 10%
	dbw 14, ZUBAT                   ; 10%
	dbw 10, ZUBAT                   ; 10%
	dbw 12, ZUBAT                   ; 10%
	dbw 16, ZUBAT                   ;  5%
	dbw  6, ZUBAT                   ;  5%
	dbw  8, ZUBAT                   ;  4%
	dbw 14, ZUBAT                   ;  4%
	dbw  8, ZUBAT                   ;  1%
	dbw 14, ZUBAT                   ;  1%
	end_grass_wildmons
	
	def_grass_wildmons ROUTE_50
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 3, SENTRET                 ; 20%
	dbw 3, BULBASAUR                 ; 20%
	dbw 3, RALTS                   ; 10%
	dbw 3, PIDGEY                  ; 10%
	dbw 3, HOPPIP                  ; 10%
	dbw 3, WINGULL                 ; 10%
	dbw 4, SENTRET                 ;  5%
	dbw 4, BULBASAUR                 ;  5%
	dbw 4, WINGULL                 ;  4%
	dbw 4, BULBASAUR                ;  4%
	dbw 5, WINGULL                 ;  1% Effectively 15%
	dbw 5, BULBASAUR                ;  1% Effectively 5%
	; day
	dbw 3, ZIGZAGOON               ; 20%
	dbw 3, PIDGEY                  ; 20%
	dbw 3, RALTS                   ; 10%
	dbw 3, BULBASAUR                 ; 10%
	dbw 3, HOPPIP                  ; 10%
	dbw 3, WINGULL                 ; 10%
	dbw 4, ZIGZAGOON               ;  5%
	dbw 4, PIDGEY                  ;  5%
	dbw 4, WINGULL                 ;  4%
	dbw 4, BULBASAUR                ;  4%
	dbw 5, WINGULL                 ;  1% Effectively 15%
	dbw 5, BULBASAUR                ;  1% Effectively 5%
	; nite
	dbw 3, RATTATA                 ; 20%
	dbw 3, HOOTHOOT                ; 20%
	dbw 3, RALTS                   ; 10%
	dbw 3, HOOTHOOT                ; 10%
	dbw 3, ODDISH                  ; 10%
	dbw 2, WINGULL                 ; 10%
	dbw 4, RATTATA                 ;  5%
	dbw 4, HOOTHOOT                ;  5%
	dbw 3, WINGULL                 ;  4%
	dbw 4, BULBASAUR                ;  4%
	dbw 4, WINGULL                 ;  1% Effectively 15%
	dbw 5, RATTATA          ;  1%
	end_grass_wildmons
	
	def_grass_wildmons ROUTE_51
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 3, SENTRET                 ; 20%
	dbw 3, BULBASAUR                 ; 20%
	dbw 3, RALTS                   ; 10%
	dbw 3, GEODUDE                 ; 10%
	dbw 3, MARILL                  ; 10%
	dbw 3, WINGULL                 ; 10%
	dbw 4, GEODUDE                 ;  5%
	dbw 4, BULBASAUR                 ;  5%
	dbw 4, WINGULL                 ;  4%
	dbw 4, BULBASAUR                ;  4%
	dbw 5, WINGULL                 ;  1%
	dbw 5, BULBASAUR                ;  1%
	; day
	dbw 3, ZIGZAGOON               ; 20%
	dbw 3, PIDGEY                  ; 20%
	dbw 3, RALTS                   ; 10%
	dbw 3, GEODUDE                 ; 10%
	dbw 3, MARILL                  ; 10%
	dbw 3, WINGULL                 ; 10%
	dbw 4, GEODUDE                 ;  5%
	dbw 4, PIDGEY                  ;  5%
	dbw 4, WINGULL                 ;  4%
	dbw 4, BULBASAUR                ;  4%
	dbw 5, WINGULL                 ;  1%
	dbw 5, BULBASAUR                ;  1%
	; nite
	dbw 3, RATTATA                 ; 20%
	dbw 3, HOOTHOOT                ; 20%
	dbw 3, RALTS                   ; 10%
	dbw 3, GEODUDE                 ; 10%
	dbw 3, WOOPER                  ; 10%
	dbw 3, WINGULL                 ; 10%
	dbw 4, GEODUDE                 ;  5%
	dbw 4, HOOTHOOT                ;  5%
	dbw 4, WINGULL                 ;  4%
	dbw 4, BULBASAUR                ;  4%
	dbw 5, WINGULL                 ;  1%
	dbw 5, BULBASAUR                ;  1%
	end_grass_wildmons
	
	def_grass_wildmons TANGELO_JUNGLE
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 4, CATERPIE                ; 20%
	dbw 4, WEEDLE                  ; 20%
	dbw 5, CATERPIE                ; 10%
	dbw 5, WEEDLE                  ; 10%
	dbw 5, METAPOD                 ; 10%
	dbw 5, KAKUNA                  ; 10%
	dbw 6, METAPOD                 ;  5%
	dbw 6, KAKUNA                  ;  5%
	dbw 4, LEDYBA                  ;  4%
	dbw 4, BULBASAUR                ;  4%
	dbw 3, LEDYBA                  ;  1%
	dbw 7, NINCADA                 ;  1%
	; day
	dbw 4, CATERPIE                ; 20%
	dbw 4, WEEDLE                  ; 20%
	dbw 5, CATERPIE                ; 10%
	dbw 5, WEEDLE                  ; 10%
	dbw 5, METAPOD                 ; 10%
	dbw 5, KAKUNA                  ; 10%
	dbw 6, METAPOD                 ;  5%
	dbw 6, KAKUNA                  ;  5%
	dbw 4, LEDYBA                  ;  4%
	dbw 4, BULBASAUR                ;  4%
	dbw 3, LEDYBA                  ;  1%
	dbw 7, NINCADA                 ;  1%
	; nite
	dbw 4, CATERPIE                ; 20%
	dbw 4, WEEDLE                  ; 20%
	dbw 5, CATERPIE                ; 10%
	dbw 5, WEEDLE                  ; 10%
	dbw 5, METAPOD                 ; 10%
	dbw 5, KAKUNA                  ; 10%
	dbw 6, METAPOD                 ;  5%
	dbw 6, KAKUNA                  ;  5%
	dbw 4, SPINARAK                ;  4%
	dbw 4, VENONAT                 ;  4%
	dbw 3, SPINARAK                ;  1%
	dbw 7, NINCADA                 ;  1%
	end_grass_wildmons
	
	def_grass_wildmons ROUTE_52
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 4, MANKEY                  ; 20%
	dbw 4, BULBASAUR                 ; 20%
	dbw 4, BULBASAUR                   ; 10%
	dbw 4, SUNKERN                 ; 10%
	dbw 4, BELLSPROUT              ; 10%
	dbw 4, PIDGEY                  ; 10%
	dbw 5, BULBASAUR                   ;  5%
	dbw 5, SUNKERN                 ;  5%
	dbw 5, WINGULL                 ;  4%
	dbw 5, MANKEY                  ;  4%
	dbw 6, WINGULL                 ;  1%
	dbw 6, MANKEY                  ;  1%
	; day
	dbw 4, MANKEY                  ; 20%
	dbw 4, PIDGEY                  ; 20%
	dbw 4, BULBASAUR                   ; 10%
	dbw 4, HOPPIP                  ; 10%
	dbw 4, BELLSPROUT              ; 10%
	dbw 4, BULBASAUR                 ; 10%
	dbw 5, BULBASAUR                   ;  5%
	dbw 5, HOPPIP                  ;  5%
	dbw 5, WINGULL                 ;  4%
	dbw 5, MANKEY                  ;  4%
	dbw 6, WINGULL                 ;  1%
	dbw 6, MANKEY                  ;  1%
	; nite
	dbw 4, MANKEY                  ; 20%
	dbw 4, HOOTHOOT                ; 20%
	dbw 4, BULBASAUR                   ; 10%
	dbw 4, ODDISH                  ; 10%
	dbw 4, BELLSPROUT              ; 10%
	dbw 4, ZUBAT                   ; 10%
	dbw 5, BULBASAUR                   ;  5%
	dbw 5, ODDISH                  ;  5%
	dbw 5, ZUBAT                   ;  4%
	dbw 5, MANKEY                  ;  4%
	dbw 6, ZUBAT                   ;  1%
	dbw 6, MANKEY                  ;  1%
	end_grass_wildmons
	
	def_grass_wildmons MIKAN_THICKET
	db 20 percent, 20 percent, 20 percent ; encounter rates: morn/day/nite
	; morn
	dbw 12, BULBASAUR                  ; 20%
	dbw 12, MACHOP                   ; 20%
	dbw 13, BULBASAUR                  ; 10%
	dbw 13, MACHOP                   ; 10%
	dbw 13, NUMEL                    ; 10%
	dbw 13, BULBASAUR                    ; 10%
	dbw 14, NUMEL                    ;  5%
	dbw 14, BULBASAUR                    ;  5%
	dbw 15, BULBASAUR                 ;  4%
	dbw 15, BULBASAUR                ;  4%
	dbw 16, BULBASAUR                 ;  1%
	dbw 16, BULBASAUR                ;  1%
	; day
	dbw 12, BULBASAUR                  ; 20%
	dbw 12, MACHOP                   ; 20%
	dbw 13, BULBASAUR                  ; 10%
	dbw 13, MACHOP                   ; 10%
	dbw 13, NUMEL                    ; 10%
	dbw 13, BULBASAUR                    ; 10%
	dbw 14, NUMEL                    ;  5%
	dbw 14, BULBASAUR                    ;  5%
	dbw 15, BULBASAUR                 ;  4%
	dbw 15, BULBASAUR                ;  4%
	dbw 16, BULBASAUR                 ;  1%
	dbw 16, BULBASAUR                ;  1%
	; nite
	dbw 12, BULBASAUR                  ; 20%
	dbw 12, MACHOP                   ; 20%
	dbw 13, BULBASAUR                  ; 10%
	dbw 13, MACHOP                   ; 10%
	dbw 13, NUMEL                    ; 10%
	dbw 13, BULBASAUR                    ; 10%
	dbw 14, NUMEL                    ;  5%
	dbw 14, BULBASAUR                    ;  5%
	dbw 15, BULBASAUR                 ;  4%
	dbw 15, BULBASAUR                ;  4%
	dbw 16, BULBASAUR                 ;  1%
	dbw 16, BULBASAUR                ;  1%
	end_grass_wildmons
	
	def_grass_wildmons MIKAN_RANCH
	db 20 percent, 20 percent, 20 percent ; encounter rates: morn/day/nite
	; morn
	dbw 13, MAREEP                   ; 20%
	dbw 13, PONYTA                   ; 20%
	dbw 14, MAREEP                   ; 10%
	dbw 14, PONYTA                   ; 10%
	dbw 15, PONYTA                   ; 10%
	dbw 13, POOCHYENA                ; 10%
	dbw 14, POOCHYENA                ;  5%
	dbw 15, POOCHYENA                ;  5%
	dbw 15, TAUROS                   ;  4%
	dbw 15, MILTANK                  ;  4%
	dbw 16, TAUROS                   ;  1%
	dbw 16, MILTANK                  ;  1%
	; day
	dbw 13, MAREEP                   ; 20%
	dbw 13, PONYTA                   ; 20%
	dbw 14, MAREEP                   ; 10%
	dbw 14, PONYTA                   ; 10%
	dbw 15, PONYTA                   ; 10%
	dbw 13, POOCHYENA                ; 10%
	dbw 14, POOCHYENA                ;  5%
	dbw 15, POOCHYENA                ;  5%
	dbw 15, TAUROS                   ;  4%
	dbw 15, MILTANK                  ;  4%
	dbw 16, TAUROS                   ;  1%
	dbw 16, MILTANK                  ;  1%
	; nite
	dbw 13, MAREEP                   ; 20%
	dbw 13, PONYTA                   ; 20%
	dbw 14, MAREEP                   ; 10%
	dbw 14, PONYTA                   ; 10%
	dbw 15, PONYTA                   ; 10%
	dbw 13, POOCHYENA                ; 10%
	dbw 14, POOCHYENA                ;  5%
	dbw 15, POOCHYENA                ;  5%
	dbw 15, TAUROS                   ;  4%
	dbw 15, MILTANK                  ;  4%
	dbw 16, TAUROS                   ;  1%
	dbw 16, MILTANK                  ;  1%
	end_grass_wildmons

	def_grass_wildmons ROUTE_53
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 13, SPINDA                   ; 20%
	dbw 13, SENTRET                  ; 20%
	dbw 14, SPINDA                   ; 10%
	dbw 14, SENTRET                  ; 10%
	dbw 15, SPINDA                   ; 10%
	dbw 15, SENTRET                  ; 10%
	dbw 14, POOCHYENA                ;  5%
	dbw 15, POOCHYENA                ;  5%
	dbw 15, BULBASAUR                 ;  4%
	dbw 15, BULBASAUR                   ;  4%
	dbw 16, BULBASAUR                 ;  1%
	dbw 16, BULBASAUR                   ;  1%
	; day
	dbw 13, SPINDA                   ; 20%
	dbw 13, ZIGZAGOON                ; 20%
	dbw 14, SPINDA                   ; 10%
	dbw 14, ZIGZAGOON                ; 10%
	dbw 15, SPINDA                   ; 10%
	dbw 15, ZIGZAGOON                ; 10%
	dbw 14, POOCHYENA                ;  5%
	dbw 15, POOCHYENA                ;  5%
	dbw 15, PIDGEOTTO                ;  4%
	dbw 15, BULBASAUR                   ;  4%
	dbw 16, PIDGEOTTO                ;  1%
	dbw 16, BULBASAUR                   ;  1%
	; nite
	dbw 13, SPINDA                   ; 20%
	dbw 13, RATTATA                  ; 20%
	dbw 14, SPINDA                   ; 10%
	dbw 14, RATTATA                  ; 10%
	dbw 15, SPINDA                   ; 10%
	dbw 15, RATTATA                  ; 10%
	dbw 14, POOCHYENA                ;  5%
	dbw 15, POOCHYENA                ;  5%
	dbw 15, NOCTOWL                  ;  4%
	dbw 15, BULBASAUR                   ;  4%
	dbw 16, NOCTOWL                  ;  1%
	dbw 16, RATTATA           ;  1%
	end_grass_wildmons

	def_grass_wildmons ROUTE_54
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 13, SPINDA                   ; 20%
	dbw 13, SENTRET                  ; 20%
	dbw 14, SPINDA                   ; 10%
	dbw 14, SENTRET                  ; 10%
	dbw 15, SPINDA                   ; 10%
	dbw 15, SENTRET                  ; 10%
	dbw 14, SHROOMISH                ;  5%
	dbw 15, POOCHYENA                ;  5%
	dbw 15, BULBASAUR                 ;  4%
	dbw 15, SHROOMISH                ;  4%
	dbw 16, BULBASAUR                 ;  1%
	dbw 16, SHROOMISH                ;  1%
	; day
	dbw 13, SPINDA                   ; 20%
	dbw 13, ZIGZAGOON                ; 20%
	dbw 14, SPINDA                   ; 10%
	dbw 14, ZIGZAGOON                ; 10%
	dbw 15, SPINDA                   ; 10%
	dbw 15, ZIGZAGOON                ; 10%
	dbw 14, SHROOMISH                ;  5%
	dbw 15, POOCHYENA                ;  5%
	dbw 15, PIDGEOTTO                ;  4%
	dbw 15, SHROOMISH                ;  4%
	dbw 16, PIDGEOTTO                ;  1%
	dbw 16, SHROOMISH                ;  1%
	; nite
	dbw 13, SPINDA                   ; 20%
	dbw 13, RATTATA                  ; 20%
	dbw 14, SPINDA                   ; 10%
	dbw 14, RATTATA                  ; 10%
	dbw 15, SPINDA                   ; 10%
	dbw 15, RATTATA                  ; 10%
	dbw 14, SHROOMISH                ;  5%
	dbw 15, POOCHYENA                ;  5%
	dbw 15, NOCTOWL                  ;  4%
	dbw 15, SHROOMISH                ;  4%
	dbw 16, NOCTOWL                  ;  1%
	dbw 16, RATTATA           ;  1%
	end_grass_wildmons

	def_grass_wildmons PINKAN_ISLAND
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 2, DITTO
	dbw 2, DITTO
	dbw 3, DITTO
	dbw 3, DITTO
	dbw 2, DITTO
	dbw 3, DITTO
	dbw 2, DITTO
	dbw 3, DITTO
	dbw 2, DITTO
	dbw 2, DITTO
	dbw 3, DITTO
	dbw 3, DITTO
	; day
	dbw 2, DITTO
	dbw 2, DITTO
	dbw 3, DITTO
	dbw 3, DITTO
	dbw 2, DITTO
	dbw 3, DITTO
	dbw 2, DITTO
	dbw 3, DITTO
	dbw 2, DITTO
	dbw 2, DITTO
	dbw 3, DITTO
	dbw 3, DITTO
	; nite
	dbw 2, DITTO
	dbw 2, DITTO
	dbw 3, DITTO
	dbw 3, DITTO
	dbw 2, DITTO
	dbw 3, DITTO
	dbw 2, DITTO
	dbw 3, DITTO
	dbw 2, DITTO
	dbw 2, DITTO
	dbw 3, DITTO
	dbw 3, DITTO
	end_grass_wildmons

	db -1 ; end
