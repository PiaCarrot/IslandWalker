DEF __trainer_class__ = 0

MACRO trainerclass
	DEF \1 EQU __trainer_class__
	DEF __trainer_class__ += 1
	const_def 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassIVs (see data/trainers/ivs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are Trainers indexes, for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
DEF CHRIS EQU __trainer_class__
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_BUENA
DEF NUM_NONTRAINER_PHONECONTACTS EQU const_value - 1

	trainerclass CISSY ; 1
	const CISSY1

	trainerclass WHITNEY ; 2
	const WHITNEY1

	trainerclass BUGSY ; 3
	const BUGSY1

	trainerclass MORTY ; 4
	const MORTY1

	trainerclass PRYCE ; 5
	const PRYCE1

	trainerclass JASMINE ; 6
	const JASMINE1

	trainerclass CHUCK ; 7
	const CHUCK1

	trainerclass CLAIR ; 8
	const CLAIR1

	trainerclass RIVAL1 ; 9

	trainerclass POKEMON_PROF ; a

	trainerclass WILL ; b
	const WILL1

	trainerclass CAL ; c
	const CAL1 ; unused
	const CAL2
	const CAL3

	trainerclass BRUNO ; d
	const BRUNO1

	trainerclass KAREN ; e
	const KAREN1

	trainerclass KOGA ; f
	const KOGA1

	trainerclass CHAMPION ; 10
	const LANCE

	trainerclass BROCK ; 11
	const BROCK1

	trainerclass MISTY ; 12
	const MISTY1

	trainerclass LT_SURGE ; 13
	const LT_SURGE1

	trainerclass SCIENTIST ; 14

	trainerclass ERIKA ; 15
	const ERIKA1

	trainerclass YOUNGSTER ; 16
	const DONNY
	const JAVI
	const ALEX
	const JEBADIAH

	trainerclass SCHOOLBOY ; 17

	trainerclass BIRD_KEEPER ; 18

	trainerclass LASS ; 19
	const MARIBELLE
	const MILLIE
	const SANDY

	trainerclass JANINE ; 1a
	const JANINE1

	trainerclass COOLTRAINERM ; 1b

	trainerclass COOLTRAINERF ; 1c

	trainerclass BEAUTY ; 1d
	const ROSE
	const YEVON

	trainerclass POKEMANIAC ; 1e

	trainerclass GRUNTM ; 1f
	const GRUNTM_1
	const GRUNTM_2
	const GRUNTM_3
	const GRUNTM_4
	const GRUNTM_5
	const GRUNTM_6
	const GRUNTM_7
	const GRUNTM_8
	const GRUNTM_9
	const GRUNTM_10
	const GRUNTM_11
	const GRUNTM_12 ; unused
	const GRUNTM_13
	const GRUNTM_14
	const GRUNTM_15
	const GRUNTM_16
	const GRUNTM_17
	const GRUNTM_18
	const GRUNTM_19
	const GRUNTM_20
	const GRUNTM_21
	const GRUNTM_22 ; unused
	const GRUNTM_23 ; unused
	const GRUNTM_24
	const GRUNTM_25
	const GRUNTM_26 ; unused
	const GRUNTM_27 ; unused
	const GRUNTM_28
	const GRUNTM_29
	const GRUNTM_30 ; unused
	const GRUNTM_31

	trainerclass GENTLEMAN ; 20

	trainerclass SKIER ; 21

	trainerclass TEACHER ; 22
	trainerclass SABRINA ; 23
	const SABRINA1

	trainerclass BUG_CATCHER ; 24
	const ASHTON
	const OWEN
	const ERIC
	const RYAN

	trainerclass FISHER ; 25
	const PIKE
	const BOBBY

	trainerclass SWIMMERM ; 26
	const CHAD
	const LUKE
	const BRAD
	const LOGAN

	trainerclass SWIMMERF ; 27
	const DAHLIA
	const MAYA
	const ZOEY
	const ALLIE
	const MORGAN

	trainerclass SAILOR ; 28

	trainerclass SUPER_NERD ; 29

	trainerclass RIVAL2 ; 2a

	trainerclass GUITARIST ; 2b

	trainerclass HIKER ; 2c

	trainerclass BIKER ; 2d

	trainerclass BLAINE ; 2e
	const BLAINE1

	trainerclass BURGLAR ; 2f

	trainerclass FIREBREATHER ; 30

	trainerclass JUGGLER ; 31

	trainerclass BLACKBELT_T ; 32

	trainerclass EXECUTIVEM ; 33
	const EXECUTIVEM_1
	const EXECUTIVEM_2
	const EXECUTIVEM_3
	const EXECUTIVEM_4

	trainerclass PSYCHIC_T ; 34

	trainerclass PICNICKER ; 35

	trainerclass CAMPER ; 36

	trainerclass EXECUTIVEF ; 37
	const EXECUTIVEF_1
	const EXECUTIVEF_2

	trainerclass SAGE ; 38

	trainerclass MEDIUM ; 39

	trainerclass BOARDER ; 3a

	trainerclass POKEFANM ; 3b

	trainerclass KIMONO_GIRL ; 3c

	trainerclass TWINS ; 3d

	trainerclass POKEFANF ; 3e

	trainerclass RED ; 3f
	const RED1

	trainerclass BLUE ; 40
	const BLUE1

	trainerclass OFFICER ; 41

	trainerclass GRUNTF ; 42
	const GRUNTF_1
	const GRUNTF_2
	const GRUNTF_3
	const GRUNTF_4
	const GRUNTF_5
	
	trainerclass LORELEI1 ; 44
	const LORELEI_1

	trainerclass LORELEI2 ; 45
	const LORELEI_2

	trainerclass LORELEI3 ; 46
	const LORELEI_3

	trainerclass TRACEY1 ; 47
	const TRACEY_1

	trainerclass CROSS1 ; 48
	const CROSS_1

	trainerclass BUG_CATCHER_F ; 49
	const MICA
	const HANNAH
	
	trainerclass ATHLETE ; 50
	const TOMMY

	trainerclass MYSTICALMAN ; 
	const EUSINE

	trainerclass LINK_KRIS ; 
	const LINK_KRIS1

DEF KRIS EQU __trainer_class__
DEF NUM_TRAINER_CLASSES EQU __trainer_class__ - 1
