; nature constants
; NatureNames indexes (see data/natures.asm)
; NatureIndicators indexes (see data/natures.asm)
	const_def
	const HARDY   ; 00
	const LONELY  ; 01
	const BRAVE   ; 02
	const ADAMANT ; 03
	const NAUGHTY ; 04
	const BOLD    ; 05
	const DOCILE  ; 06
	const RELAXED ; 07
	const IMPISH  ; 08
	const LAX     ; 09
	const TIMID   ; 0A
	const HASTY   ; 0B
	const SERIOUS ; 0C
	const JOLLY   ; 0D
	const NAIVE   ; 0E
	const MODEST  ; 0F
	const MILD    ; 10
	const QUIET   ; 11
	const BASHFUL ; 12
	const RASH    ; 13
	const CALM    ; 14
	const GENTLE  ; 15
	const SASSY   ; 16
	const CAREFUL ; 17
	const QUIRKY  ; 18
DEF NUM_NATURES EQU const_value
DEF NO_NATURE   EQU const_value

DEF NAT_ATK_UP_DEF_DOWN   EQU LONELY
DEF NAT_ATK_UP_SPE_DOWN   EQU BRAVE
DEF NAT_ATK_UP_SATK_DOWN  EQU ADAMANT
DEF NAT_ATK_UP_SDEF_DOWN  EQU NAUGHTY
DEF NAT_DEF_UP_ATK_DOWN   EQU BOLD
DEF NAT_DEF_UP_SPE_DOWN   EQU RELAXED
DEF NAT_DEF_UP_SATK_DOWN  EQU IMPISH
DEF NAT_DEF_UP_SDEF_DOWN  EQU LAX
DEF NAT_SPE_UP_ATK_DOWN   EQU TIMID
DEF NAT_SPE_UP_DEF_DOWN   EQU HASTY
DEF NAT_SPE_UP_SATK_DOWN  EQU JOLLY
DEF NAT_SPE_UP_SDEF_DOWN  EQU NAIVE
DEF NAT_SATK_UP_ATK_DOWN  EQU MODEST
DEF NAT_SATK_UP_DEF_DOWN  EQU MILD
DEF NAT_SATK_UP_SPE_DOWN  EQU QUIET
DEF NAT_SATK_UP_SDEF_DOWN EQU RASH
DEF NAT_SDEF_UP_ATK_DOWN  EQU CALM
DEF NAT_SDEF_UP_DEF_DOWN  EQU GENTLE
DEF NAT_SDEF_UP_SPE_DOWN  EQU SASSY
DEF NAT_SDEF_UP_SATK_DOWN EQU CAREFUL
DEF NAT_NEUTRAL           EQU HARDY ; 0
