; Orange Islands Pokémon in grass

; Reference Block With Probabilities
;	dbw 2, AERODACTYL                   ; 20%
;	dbw 2, AERODACTYL                   ; 20%
;	dbw 2, AERODACTYL                   ; 10%
;	dbw 2, AERODACTYL                   ; 10%
;	dbw 2, AERODACTYL                   ; 10%
;	dbw 2, AERODACTYL                   ; 10%
;	dbw 2, AERODACTYL                   ;  5%
;	dbw 2, AERODACTYL                   ;  5%
;	dbw 2, AERODACTYL                   ;  4%
;	dbw 2, AERODACTYL                   ;  4%
;	dbw 2, AERODACTYL                   ;  1%
;	dbw 2, AERODACTYL                   ;  1%

; For encounter rates, 15 percent is pretty standard for routes, which is 6%
; Dungeons range from 2-6 percent. 10 percent is 4%, Red's Safari Zone uses 30 which is 12%.
; This means 0 = 0%, 255 = 100%, make it too high and people are forced to buy repels.
; You can differ the rate by time of day but there's little point in doing so, unless you want more ghosts
; to appear at night in Pokemon Tower or something.

JohtoGrassWildMons:

	def_grass_wildmons VALENCIA_ISLAND ; Not accessible until after getting Cut from Mandarin North
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 12, BELLSPROUT_VALENCIA     ; 20%
	dbw 12, NIDORAN_F               ; 20%
	dbw 12, NIDORAN_M               ; 10%
	dbw 12, PIKIPEK                 ; 10%
	dbw 12, SENTRET                 ; 10%
	dbw 12, NIDORAN_M               ; 10% Effectively 20%
	dbw 16, TRUMBEAK                ;  5%
	dbw 16, NIDORINO                ;  5%
	dbw 16, NIDORINA                ;  4%
	dbw 16, WEEPINBELL_VALENCIA     ;  4%
	dbw 16, NIDORINA                ;  1% Effectively 5%
	dbw 16, WEEPINBELL_VALENCIA     ;  1% Effectively 5%
	; day
	dbw 12, BELLSPROUT_VALENCIA     ; 20%
	dbw 12, NIDORAN_F               ; 20%
	dbw 12, NIDORAN_M               ; 10%
	dbw 12, PIDGEY                  ; 10%
	dbw 12, ZIGZAGOON               ; 10%
	dbw 12, NIDORAN_M               ; 10% Effectively 20%
	dbw 16, PIDGEOTTO               ;  5%
	dbw 16, NIDORINO                ;  5%
	dbw 16, NIDORINA                ;  4%
	dbw 16, WEEPINBELL_VALENCIA     ;  4%
	dbw 16, NIDORINA                ;  1% Effectively 5%
	dbw 16, WEEPINBELL_VALENCIA     ;  1% Effectively 5%
	; nite
	dbw 12, ODDISH_VALENCIA         ; 20%
	dbw 12, NIDORAN_F               ; 20%
	dbw 12, NIDORAN_M               ; 10%
	dbw 12, HOOTHOOT                ; 10%
	dbw 12, RATTATA                 ; 10%
	dbw 12, RATICATE                ; 10% Effectively 20%
	dbw 16, NIDORINA                ;  5%
	dbw 16, NIDORINO                ;  5%
	dbw 16, PARAS_VALENCIA          ;  4%
	dbw 16, GLOOM_VALENCIA          ;  4%
	dbw 16, PARAS_VALENCIA          ;  1% Effectively 5%
	dbw 17, RATTATA_ALOLA          ;  1%
	end_grass_wildmons
	
	def_grass_wildmons ROUTE_49
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 2, BELLSPROUT_VALENCIA     ; 20%
	dbw 2, NIDORAN_F               ; 20%
	dbw 2, NIDORAN_M               ; 10%
	dbw 2, PIKIPEK                 ; 10%
	dbw 2, SENTRET                 ; 10%
	dbw 2, NIDORAN_M               ; 10% Effectively 20%
	dbw 3, SENTRET                 ;  5%
	dbw 3, BELLSPROUT_VALENCIA     ;  5%
	dbw 4, PIKIPEK                 ;  4%
	dbw 4, CATERPIE_VALENCIA       ;  4%
	dbw 4, CATERPIE_VALENCIA       ;  1% Effectively 5%
	dbw 4, BELLSPROUT_VALENCIA     ;  1%
	; day
	dbw 2, BELLSPROUT_VALENCIA     ; 20%
	dbw 2, NIDORAN_F               ; 20%
	dbw 2, NIDORAN_M               ; 10%
	dbw 2, PIDGEY                  ; 10%
	dbw 2, ZIGZAGOON               ; 10%
	dbw 2, NIDORAN_M               ; 10% Effectively 20%
	dbw 3, ZIGZAGOON               ;  5%
	dbw 3, BELLSPROUT_VALENCIA     ;  5%
	dbw 4, PIKIPEK                 ;  4%
	dbw 4, CATERPIE_VALENCIA       ;  4%
	dbw 4, CATERPIE_VALENCIA       ;  1% Effectively 5%
	dbw 4, BELLSPROUT_VALENCIA     ;  1%
	; nite
	dbw 2, ODDISH_VALENCIA         ; 20%
	dbw 2, NIDORAN_F               ; 20%
	dbw 2, NIDORAN_M               ; 10%
	dbw 2, HOOTHOOT                ; 10%
	dbw 2, RATTATA                 ; 10%
	dbw 2, NIDORAN_M               ; 10% Effectively 20%
	dbw 3, RATTATA                 ;  5%
	dbw 3, ODDISH_VALENCIA         ;  5%
	dbw 4, HOOTHOOT                ;  4%
	dbw 4, PARAS_VALENCIA          ;  4%
	dbw 4, PARAS_VALENCIA          ;  1% Effectively 5%
	dbw 5, RATTATA_ALOLA          ;  1%
	end_grass_wildmons
	
	def_grass_wildmons ROUTE_49_NORTH
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 2, BELLSPROUT_VALENCIA     ; 20%
	dbw 2, NIDORAN_F               ; 20%
	dbw 2, NIDORAN_M               ; 10%
	dbw 2, PIKIPEK                 ; 10%
	dbw 2, SENTRET                 ; 10%
	dbw 2, NIDORAN_M               ; 10% Effectively 20%
	dbw 3, SENTRET                 ;  5%
	dbw 3, BELLSPROUT_VALENCIA     ;  5%
	dbw 4, PIKIPEK                 ;  4%
	dbw 4, CATERPIE_VALENCIA       ;  4%
	dbw 4, CATERPIE_VALENCIA       ;  1% Effectively 5%
	dbw 4, BELLSPROUT_VALENCIA     ;  1%
	; day
	dbw 2, BELLSPROUT_VALENCIA     ; 20%
	dbw 2, NIDORAN_F               ; 20%
	dbw 2, NIDORAN_M               ; 10%
	dbw 2, PIDGEY                  ; 10%
	dbw 2, ZIGZAGOON               ; 10%
	dbw 2, NIDORAN_M               ; 10% Effectively 20%
	dbw 3, ZIGZAGOON               ;  5%
	dbw 3, BELLSPROUT_VALENCIA     ;  5%
	dbw 4, PIKIPEK                 ;  4%
	dbw 4, CATERPIE_VALENCIA       ;  4%
	dbw 4, CATERPIE_VALENCIA       ;  1% Effectively 5%
	dbw 4, BELLSPROUT_VALENCIA     ;  1%
	; nite
	dbw 2, ODDISH_VALENCIA         ; 20%
	dbw 2, NIDORAN_F               ; 20%
	dbw 2, NIDORAN_M               ; 10%
	dbw 2, HOOTHOOT                ; 10%
	dbw 2, RATTATA                 ; 10%
	dbw 2, NIDORAN_M               ; 10% Effectively 20%
	dbw 3, RATTATA                 ;  5%
	dbw 3, ODDISH_VALENCIA         ;  5%
	dbw 4, HOOTHOOT                ;  4%
	dbw 4, PARAS_VALENCIA          ;  4%
	dbw 4, PARAS_VALENCIA          ;  1% Effectively 5%
	dbw 5, RATTATA_ALOLA          ;  1%
	end_grass_wildmons
	
	def_grass_wildmons ALTERING_CAVE ; Not accessible until you get Cut, Swarms change the encounters here
	db 7 percent, 7 percent, 7 percent ; 7 is just a reference to the gen 3 encounter rate
	; morn
	; Swarm list: MAREEP, AIPOM, PINECO, SHUCKLE, TEDDIURSA, HOUNDOUR, STANTLER, SMEARGLE
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
	dbw 3, PIKIPEK                 ; 20%
	dbw 3, RALTS                   ; 10%
	dbw 3, PIDGEY                  ; 10%
	dbw 3, HOPPIP                  ; 10%
	dbw 3, WINGULL                 ; 10%
	dbw 4, SENTRET                 ;  5%
	dbw 4, PIKIPEK                 ;  5%
	dbw 4, WINGULL                 ;  4%
	dbw 4, ROCKRUFF                ;  4%
	dbw 5, WINGULL                 ;  1% Effectively 15%
	dbw 5, ROCKRUFF_OWN_TEMPO      ;  1%
	; day
	dbw 3, ZIGZAGOON               ; 20%
	dbw 3, PIDGEY                  ; 20%
	dbw 3, RALTS                   ; 10%
	dbw 3, PIKIPEK                 ; 10%
	dbw 3, HOPPIP                  ; 10%
	dbw 3, WINGULL                 ; 10%
	dbw 4, ZIGZAGOON               ;  5%
	dbw 4, PIDGEY                  ;  5%
	dbw 4, WINGULL                 ;  4%
	dbw 4, ROCKRUFF                ;  4%
	dbw 5, WINGULL                 ;  1% Effectively 15%
	dbw 5, ROCKRUFF_OWN_TEMPO      ;  1%
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
	dbw 4, ROCKRUFF                ;  4%
	dbw 5, ROCKRUFF_OWN_TEMPO      ;  1%
	dbw 5, RATTATA_ALOLA          ;  1%
	end_grass_wildmons
	
	def_grass_wildmons ROUTE_51
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 3, SENTRET                 ; 20%
	dbw 3, PIKIPEK                 ; 20%
	dbw 3, RALTS                   ; 10%
	dbw 3, GEODUDE                 ; 10%
	dbw 3, MARILL                  ; 10%
	dbw 3, WINGULL                 ; 10%
	dbw 4, GEODUDE                 ;  5%
	dbw 4, PIKIPEK                 ;  5%
	dbw 4, WINGULL                 ;  4%
	dbw 4, ROCKRUFF                ;  4%
	dbw 5, WINGULL                 ;  1%
	dbw 5, ROCKRUFF_OWN_TEMPO      ;  1%
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
	dbw 4, ROCKRUFF                ;  4%
	dbw 5, WINGULL                 ;  1%
	dbw 5, ROCKRUFF_OWN_TEMPO      ;  1%
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
	dbw 4, ROCKRUFF                ;  4%
	dbw 5, WINGULL                 ;  1%
	dbw 5, ROCKRUFF_OWN_TEMPO      ;  1%
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
	dbw 4, CUTIEFLY                ;  4%
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
	dbw 4, CUTIEFLY                ;  4%
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
	dbw 4, PIKIPEK                 ; 20%
	dbw 4, SHINX                   ; 10%
	dbw 4, SUNKERN                 ; 10%
	dbw 4, BELLSPROUT              ; 10%
	dbw 4, PIDGEY                  ; 10%
	dbw 5, SHINX                   ;  5%
	dbw 5, SUNKERN                 ;  5%
	dbw 5, WINGULL                 ;  4%
	dbw 5, MANKEY                  ;  4%
	dbw 6, WINGULL                 ;  1%
	dbw 6, MANKEY                  ;  1%
	; day
	dbw 4, MANKEY                  ; 20%
	dbw 4, PIDGEY                  ; 20%
	dbw 4, SHINX                   ; 10%
	dbw 4, HOPPIP                  ; 10%
	dbw 4, BELLSPROUT              ; 10%
	dbw 4, PIKIPEK                 ; 10%
	dbw 5, SHINX                   ;  5%
	dbw 5, HOPPIP                  ;  5%
	dbw 5, WINGULL                 ;  4%
	dbw 5, MANKEY                  ;  4%
	dbw 6, WINGULL                 ;  1%
	dbw 6, MANKEY                  ;  1%
	; nite
	dbw 4, MANKEY                  ; 20%
	dbw 4, HOOTHOOT                ; 20%
	dbw 4, SHINX                   ; 10%
	dbw 4, ODDISH                  ; 10%
	dbw 4, BELLSPROUT              ; 10%
	dbw 4, ZUBAT                   ; 10%
	dbw 5, SHINX                   ;  5%
	dbw 5, ODDISH                  ;  5%
	dbw 5, ZUBAT                   ;  4%
	dbw 5, MANKEY                  ;  4%
	dbw 6, ZUBAT                   ;  1%
	dbw 6, MANKEY                  ;  1%
	end_grass_wildmons
	
	def_grass_wildmons MIKAN_THICKET
	db 20 percent, 20 percent, 20 percent ; encounter rates: morn/day/nite
	; morn
	dbw 12, PANCHAM                  ; 20%
	dbw 12, MACHOP                   ; 20%
	dbw 13, PANCHAM                  ; 10%
	dbw 13, MACHOP                   ; 10%
	dbw 13, NUMEL                    ; 10%
	dbw 13, SHINX                    ; 10%
	dbw 14, NUMEL                    ;  5%
	dbw 14, SHINX                    ;  5%
	dbw 15, PAWNIARD                 ;  4%
	dbw 15, CHARCADET                ;  4%
	dbw 16, PAWNIARD                 ;  1%
	dbw 16, CHARCADET                ;  1%
	; day
	dbw 12, PANCHAM                  ; 20%
	dbw 12, MACHOP                   ; 20%
	dbw 13, PANCHAM                  ; 10%
	dbw 13, MACHOP                   ; 10%
	dbw 13, NUMEL                    ; 10%
	dbw 13, SHINX                    ; 10%
	dbw 14, NUMEL                    ;  5%
	dbw 14, SHINX                    ;  5%
	dbw 15, PAWNIARD                 ;  4%
	dbw 15, CHARCADET                ;  4%
	dbw 16, PAWNIARD                 ;  1%
	dbw 16, CHARCADET                ;  1%
	; nite
	dbw 12, PANCHAM                  ; 20%
	dbw 12, MACHOP                   ; 20%
	dbw 13, PANCHAM                  ; 10%
	dbw 13, MACHOP                   ; 10%
	dbw 13, NUMEL                    ; 10%
	dbw 13, SHINX                    ; 10%
	dbw 14, NUMEL                    ;  5%
	dbw 14, SHINX                    ;  5%
	dbw 15, PAWNIARD                 ;  4%
	dbw 15, CHARCADET                ;  4%
	dbw 16, PAWNIARD                 ;  1%
	dbw 16, CHARCADET                ;  1%
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
	dbw 13, ZUBAT                   ; 20%
	dbw 13, ZUBAT                  ; 20%
	dbw 14, ZUBAT                   ; 10%
	dbw 14, ZUBAT                  ; 10%
	dbw 15, ZUBAT                   ; 10%
	dbw 15, ZUBAT                  ; 10%
	dbw 14, ZUBAT                ;  5%
	dbw 15, ZUBAT                ;  5%
	dbw 15, ZUBAT                 ;  4%
	dbw 15, ZUBAT                   ;  4%
	dbw 16, ZUBAT                 ;  1%
	dbw 16, ZUBAT                   ;  1%
	; day
	dbw 13, ZUBAT                   ; 20%
	dbw 13, ZUBAT                  ; 20%
	dbw 14, ZUBAT                   ; 10%
	dbw 14, ZUBAT                  ; 10%
	dbw 15, ZUBAT                   ; 10%
	dbw 15, ZUBAT                  ; 10%
	dbw 14, ZUBAT                ;  5%
	dbw 15, ZUBAT                ;  5%
	dbw 15, ZUBAT                 ;  4%
	dbw 15, ZUBAT                   ;  4%
	dbw 16, ZUBAT                 ;  1%
	dbw 16, ZUBAT                   ;  1%
	; nite
	dbw 13, ZUBAT                   ; 20%
	dbw 13, ZUBAT                  ; 20%
	dbw 14, ZUBAT                   ; 10%
	dbw 14, ZUBAT                  ; 10%
	dbw 15, ZUBAT                   ; 10%
	dbw 15, ZUBAT                  ; 10%
	dbw 14, ZUBAT                ;  5%
	dbw 15, ZUBAT                ;  5%
	dbw 15, ZUBAT                 ;  4%
	dbw 15, ZUBAT                   ;  4%
	dbw 16, ZUBAT                 ;  1%
	dbw 16, ZUBAT                   ;  1%
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
	dbw 15, TRUMBEAK                 ;  4%
	dbw 15, SHROOMISH                ;  4%
	dbw 16, TRUMBEAK                 ;  1%
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
	dbw 16, RATTATA_ALOLA           ;  1%
	end_grass_wildmons

	def_grass_wildmons CRYSTAL_CAVE_1F
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 14, CHINGLING                ; 20%
	dbw 14, KRABBY                   ; 20%
	dbw 15, ZUBAT                    ; 10%
	dbw 15, CHINGLING                ; 10%
	dbw 16, ZUBAT                    ; 10%
	dbw 16, SPHEAL                   ; 10%
	dbw 15, SPHEAL                   ;  5%
	dbw 16, CHINGLING                ;  5%
	dbw 16, MAGBY                    ;  4%
	dbw 16, NOIBAT                   ;  4%
	dbw 17, MAGBY                    ;  1%
	dbw 17, NOIBAT                   ;  1%
	; day
	dbw 14, CHINGLING                ; 20%
	dbw 14, KRABBY                   ; 20%
	dbw 15, ZUBAT                    ; 10%
	dbw 15, CHINGLING                ; 10%
	dbw 16, ZUBAT                    ; 10%
	dbw 16, SPHEAL                   ; 10%
	dbw 15, SPHEAL                   ;  5%
	dbw 16, CHINGLING                ;  5%
	dbw 16, MAGBY                    ;  4%
	dbw 16, NOIBAT                   ;  4%
	dbw 17, MAGBY                    ;  1%
	dbw 17, NOIBAT                   ;  1%
	; nite
	dbw 14, CHINGLING                ; 20%
	dbw 14, KRABBY                   ; 20%
	dbw 15, ZUBAT                    ; 10%
	dbw 15, CHINGLING                ; 10%
	dbw 16, ZUBAT                    ; 10%
	dbw 16, SPHEAL                   ; 10%
	dbw 15, SPHEAL                   ;  5%
	dbw 16, CHINGLING                ;  5%
	dbw 16, MAGBY                    ;  4%
	dbw 16, NOIBAT                   ;  4%
	dbw 17, MAGBY                    ;  1%
	dbw 17, NOIBAT                   ;  1%
	end_grass_wildmons

	def_grass_wildmons CRYSTAL_CAVE_B1F
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 14, PSYDUCK                  ; 20%
	dbw 14, KRABBY                   ; 20%
	dbw 15, SPHEAL                   ; 10%
	dbw 15, PSYDUCK                  ; 10%
	dbw 16, KRABBY                   ; 10%
	dbw 16, SPHEAL                   ; 10%
	dbw 15, SPHEAL                   ;  5%
	dbw 16, PSYDUCK                  ;  5%
	dbw 16, BINACLE                  ;  4%
	dbw 16, SEEL                     ;  4%
	dbw 17, BINACLE                  ;  1%
	dbw 17, SEEL                     ;  1%
	; day
	dbw 14, PSYDUCK                  ; 20%
	dbw 14, KRABBY                   ; 20%
	dbw 15, SPHEAL                   ; 10%
	dbw 15, PSYDUCK                  ; 10%
	dbw 16, KRABBY                   ; 10%
	dbw 16, SPHEAL                   ; 10%
	dbw 15, SPHEAL                   ;  5%
	dbw 16, PSYDUCK                  ;  5%
	dbw 16, BINACLE                  ;  4%
	dbw 16, SEEL                     ;  4%
	dbw 17, BINACLE                  ;  1%
	dbw 17, SEEL                     ;  1%
	; nite
	dbw 14, PSYDUCK                  ; 20%
	dbw 14, KRABBY                   ; 20%
	dbw 15, SPHEAL                   ; 10%
	dbw 15, PSYDUCK                  ; 10%
	dbw 16, KRABBY                   ; 10%
	dbw 16, SPHEAL                   ; 10%
	dbw 15, SPHEAL                   ;  5%
	dbw 16, PSYDUCK                  ;  5%
	dbw 16, BINACLE                  ;  4%
	dbw 16, SEEL                     ;  4%
	dbw 17, BINACLE                  ;  1%
	dbw 17, SEEL                     ;  1%
	end_grass_wildmons
	

	def_grass_wildmons ROUTE_55
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 15, MAREEP                   ; 20%
	dbw 15, DODUO                    ; 20%
	dbw 16, LEDYBA                   ; 10%
	dbw 16, HOPPIP                   ; 10%
	dbw 17, LEDYBA                   ; 10%
	dbw 17, HOPPIP                   ; 10%
	dbw 16, DODUO                    ;  5%
	dbw 17, MAREEP                   ;  5%
	dbw 17, TRUMBEAK                 ;  4%
	dbw 17, TANGELA                  ;  4%
	dbw 18, TRUMBEAK                 ;  1%
	dbw 18, TANGELA                  ;  1%
	; day
	dbw 15, MAREEP                   ; 20%
	dbw 15, DODUO                    ; 20%
	dbw 16, LEDYBA                   ; 10%
	dbw 16, HOPPIP                   ; 10%
	dbw 17, LEDYBA                   ; 10%
	dbw 17, HOPPIP                   ; 10%
	dbw 16, DODUO                    ;  5%
	dbw 17, MAREEP                   ;  5%
	dbw 17, TRUMBEAK                 ;  4%
	dbw 17, TANGELA                  ;  4%
	dbw 18, TRUMBEAK                 ;  1%
	dbw 18, TANGELA                  ;  1%
	; nite
	dbw 15, MAREEP                   ; 20%
	dbw 15, MEOWTH                   ; 20%
	dbw 16, LEDYBA                   ; 10%
	dbw 16, HOPPIP                   ; 10%
	dbw 17, LEDYBA                   ; 10%
	dbw 17, HOPPIP                   ; 10%
	dbw 16, MEOWTH                   ;  5%
	dbw 17, MAREEP                   ;  5%
	dbw 17, HOOTHOOT                 ;  4%
	dbw 17, TANGELA                  ;  4%
	dbw 18, HOOTHOOT                 ;  1%
	dbw 18, TANGELA                  ;  1%
	end_grass_wildmons

	def_grass_wildmons PINKAN_ISLAND
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	dbw 15, WEEDLE                   ; 20%
	dbw 15, CATERPIE                 ; 20%
	dbw 16, MANKEY                   ; 10%
	dbw 16, PIDGEY                   ; 10%
	dbw 17, NIDORAN_F                ; 10%
	dbw 17, NIDORAN_M                ; 10%
	dbw 16, BELLSPROUT               ;  5%
	dbw 16, ODDISH                   ;  5%
	dbw 17, PARAS                    ;  4%
	dbw 17, EXEGGCUTE                ;  4%
	dbw 18, DIGLETT                  ;  1%
	dbw 20, RHYHORN                  ;  1%
	; day
	dbw 15, WEEDLE                   ; 20%
	dbw 15, CATERPIE                 ; 20%
	dbw 16, MANKEY                   ; 10%
	dbw 16, PIDGEY                   ; 10%
	dbw 17, NIDORAN_F                ; 10%
	dbw 17, NIDORAN_M                ; 10%
	dbw 16, BELLSPROUT               ;  5%
	dbw 16, ODDISH                   ;  5%
	dbw 17, PARAS                    ;  4%
	dbw 17, EXEGGCUTE                ;  4%
	dbw 18, DIGLETT                  ;  1%
	dbw 20, RHYHORN                  ;  1%
	; nite
	dbw 15, WEEDLE                   ; 20%
	dbw 15, CATERPIE                 ; 20%
	dbw 16, MANKEY                   ; 10%
	dbw 16, RATTATA                  ; 10%
	dbw 17, NIDORAN_F                ; 10%
	dbw 17, NIDORAN_M                ; 10%
	dbw 16, BELLSPROUT               ;  5%
	dbw 16, ODDISH                   ;  5%
	dbw 17, PARAS                    ;  4%
	dbw 17, EXEGGCUTE                ;  4%
	dbw 18, DIGLETT                  ;  1%
	dbw 20, RHYHORN                  ;  1%
	end_grass_wildmons
