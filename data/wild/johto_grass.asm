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
