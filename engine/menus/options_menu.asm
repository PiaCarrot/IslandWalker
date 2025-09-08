; GetOptionPointer.Pointers indexes
	const_def
        const OPT_TEXT_SPEED    ; 0
        const OPT_BATTLE_SCENE  ; 1
        const OPT_BATTLE_STYLE  ; 2
        const OPT_SOUND         ; 3
        const OPT_FRAME         ; 4
        const OPT_CHALLENGES    ; 5
        const OPT_CANCEL        ; 6
DEF NUM_OPTIONS EQU const_value ; 7

_Option:
	call ClearJoypad
	ld hl, hInMenu
	ld a, [hl]
	push af
	ld [hl], TRUE
	call ClearBGPalettes
	hlcoord 0, 0
	lb bc, SCREEN_HEIGHT - 2, SCREEN_WIDTH - 2
	call Textbox
	hlcoord 2, 2
	ld de, StringOptions
	rst PlaceString
	xor a
	ld [wJumptableIndex], a

; display the settings of each option when the menu is opened
        ld c, NUM_OPTIONS - 2 ; omit frame type and cancel
.print_text_loop
	push bc
	xor a
	ldh [hJoyLast], a
	call GetOptionPointer
	pop bc
	ld hl, wJumptableIndex
	inc [hl]
	dec c
	jr nz, .print_text_loop
	call UpdateFrame ; display the frame type

	xor a
	ld [wJumptableIndex], a
	inc a
	ldh [hBGMapMode], a
	call WaitBGMap
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call SetDefaultBGPAndOBP

.joypad_loop
	call JoyTextDelay
	ldh a, [hJoyPressed]
	and PAD_START | PAD_B
	jr nz, .ExitOptions
	call OptionsControl
	jr c, .dpad
	call GetOptionPointer
	jr c, .ExitOptions

.dpad
	call Options_UpdateCursorPosition
	ld c, 3
	call DelayFrames
	jr .joypad_loop

.ExitOptions:
	ld de, SFX_TRANSACTION
	call PlaySFX
	call WaitSFX
	pop af
	ldh [hInMenu], a
	ret

StringOptions:
	db "TEXT SPEED<LF>"
	db "        :<LF>"
	db "BATTLE SCENE<LF>"
	db "        :<LF>"
	db "BATTLE STYLE<LF>"
	db "        :<LF>"
        db "SOUND<LF>"
        db "        :<LF>"
        db "FRAME<LF>"
        db "        :TYPE<LF>"
        db "CHALLENGES<LF>"
        db "        <LF>"
        db "CANCEL@"

GetOptionPointer:
	jumptable .Pointers, wJumptableIndex

.Pointers:
; entries correspond to OPT_* constants
        dw Options_TextSpeed
        dw Options_BattleScene
        dw Options_BattleStyle
        dw Options_Sound
        dw Options_Frame
        dw Options_Challenges
        dw Options_Cancel

	const_def
	const OPT_TEXT_SPEED_FAST ; 0
	const OPT_TEXT_SPEED_MED  ; 1
	const OPT_TEXT_SPEED_SLOW ; 2

Options_TextSpeed:
	call GetTextSpeed
	ldh a, [hJoyPressed]
	bit B_PAD_LEFT, a
	jr nz, .LeftPressed
	bit B_PAD_RIGHT, a
	jr z, .NonePressed
	ld a, c ; right pressed
	cp OPT_TEXT_SPEED_SLOW
	jr c, .Increase
	ld c, OPT_TEXT_SPEED_FAST - 1

.Increase:
	inc c
	ld a, e
	jr .Save

.LeftPressed:
	ld a, c
	and a
	jr nz, .Decrease
	ld c, OPT_TEXT_SPEED_SLOW + 1

.Decrease:
	dec c
	ld a, d

.Save:
	ld b, a
	ld a, [wOptions]
	and $f0
	or b
	ld [wOptions], a

.NonePressed:
	ld b, 0
	ld hl, .Strings
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	hlcoord 11, 3
	rst PlaceString
	and a
	ret

.Strings:
; entries correspond to OPT_TEXT_SPEED_* constants
	dw .Fast
	dw .Mid
	dw .Slow

.Fast: db "FAST@"
.Mid:  db "MID @"
.Slow: db "SLOW@"

GetTextSpeed:
; converts TEXT_DELAY_* value in a to OPT_TEXT_SPEED_* value in c,
; with previous/next TEXT_DELAY_* values in d/e
	ld a, [wOptions]
	and TEXT_DELAY_MASK
	cp TEXT_DELAY_SLOW
	jr z, .slow
	cp TEXT_DELAY_FAST
	jr z, .fast
	; none of the above
	ld c, OPT_TEXT_SPEED_MED
	lb de, TEXT_DELAY_FAST, TEXT_DELAY_SLOW
	ret

.slow
	ld c, OPT_TEXT_SPEED_SLOW
	lb de, TEXT_DELAY_MED, TEXT_DELAY_FAST
	ret

.fast
	ld c, OPT_TEXT_SPEED_FAST
	lb de, TEXT_DELAY_SLOW, TEXT_DELAY_MED
	ret

Options_BattleScene:
	ld hl, wOptions
	ldh a, [hJoyPressed]
	bit B_PAD_LEFT, a
	jr nz, .LeftPressed
	bit B_PAD_RIGHT, a
	jr z, .NonePressed
	bit BATTLE_SCENE, [hl]
	jr nz, .ToggleOn
	jr .ToggleOff

.LeftPressed:
	bit BATTLE_SCENE, [hl]
	jr z, .ToggleOff
	jr .ToggleOn

.NonePressed:
	bit BATTLE_SCENE, [hl]
	jr nz, .ToggleOff
; fallthrough
.ToggleOn:
	res BATTLE_SCENE, [hl]
	ld de, .On
	jr .Display

.ToggleOff:
	set BATTLE_SCENE, [hl]
	ld de, .Off

.Display:
	hlcoord 11, 5
	rst PlaceString
	and a
	ret

.On:  db "ON @"
.Off: db "OFF@"

Options_BattleStyle:
	ld hl, wOptions
	ldh a, [hJoyPressed]
	bit B_PAD_LEFT, a
	jr nz, .LeftPressed
	bit B_PAD_RIGHT, a
	jr z, .NonePressed
	bit BATTLE_SHIFT, [hl]
	jr nz, .ToggleShift
	jr .ToggleSet

.LeftPressed:
	bit BATTLE_SHIFT, [hl]
	jr z, .ToggleSet
	jr .ToggleShift

.NonePressed:
	bit BATTLE_SHIFT, [hl]
	jr nz, .ToggleSet

.ToggleShift:
	res BATTLE_SHIFT, [hl]
	ld de, .Shift
	jr .Display

.ToggleSet:
	set BATTLE_SHIFT, [hl]
	ld de, .Set

.Display:
	hlcoord 11, 7
	rst PlaceString
	and a
	ret

.Shift: db "SHIFT@"
.Set:   db "SET  @"

Options_Sound:
	ld hl, wOptions
	ldh a, [hJoyPressed]
	bit B_PAD_LEFT, a
	jr nz, .LeftPressed
	bit B_PAD_RIGHT, a
	jr z, .NonePressed
	bit STEREO, [hl]
	jr nz, .SetMono
	jr .SetStereo

.LeftPressed:
	bit STEREO, [hl]
	jr z, .SetStereo
	jr .SetMono

.NonePressed:
	bit STEREO, [hl]
	jr nz, .ToggleStereo
	jr .ToggleMono

.SetMono:
	res STEREO, [hl]
	call RestartMapMusic

.ToggleMono:
	ld de, .Mono
	jr .Display

.SetStereo:
	set STEREO, [hl]
	call RestartMapMusic

.ToggleStereo:
	ld de, .Stereo

.Display:
	hlcoord 11, 9
	rst PlaceString
	and a
	ret

.Mono:   db "MONO  @"
.Stereo: db "STEREO@"

Options_Challenges:
        ldh a, [hJoyPressed]
        and PAD_A
        ret z
        call ChallengesMenu
        ld a, OPT_CHALLENGES
        ld [wJumptableIndex], a
        call Options_UpdateCursorPosition
        and a
        ret

Options_OakChallenge:
        ld hl, wOptions2
        ldh a, [hJoyPressed]
        bit B_PAD_LEFT, a
        jr nz, .LeftPressed
        bit B_PAD_RIGHT, a
        jr z, .NonePressed
        bit OAK_CHALLENGE, [hl]
        jr nz, .ToggleOff
        jr .ToggleOn

.LeftPressed:
        bit OAK_CHALLENGE, [hl]
        jr z, .ToggleOn
        jr .ToggleOff

.NonePressed:
        bit OAK_CHALLENGE, [hl]
        jr nz, .ToggleOn

.ToggleOff:
        res OAK_CHALLENGE, [hl]
        ld de, .Off
        jr .Display

.ToggleOn:
        set OAK_CHALLENGE, [hl]
        ld de, .On

.Display:
        hlcoord 11, 3
        rst PlaceString
        and a
        ret

.Off: db "OFF@"
.On:  db "ON @"

Options_ChallengeMode:
        ld hl, wOptions2
        ldh a, [hJoyPressed]
        bit B_PAD_LEFT, a
        jr nz, .LeftPressed
        bit B_PAD_RIGHT, a
        jr z, .NonePressed
        bit CHALLENGE_MODE, [hl]
        jr nz, .ToggleOff
        jr .ToggleOn

.LeftPressed:
        bit CHALLENGE_MODE, [hl]
        jr z, .ToggleOn
        jr .ToggleOff

.NonePressed:
        bit CHALLENGE_MODE, [hl]
        jr nz, .ToggleOn

.ToggleOff:
        res CHALLENGE_MODE, [hl]
        ld de, .Off
        jr .Display

.ToggleOn:
        set CHALLENGE_MODE, [hl]
        ld de, .On

.Display:
        hlcoord 11, 5
        rst PlaceString
        and a
        ret

.Off: db "OFF@"
.On:  db "ON @"

Options_LevelLimits:
        ld hl, wOptions2
        ldh a, [hJoyPressed]
        bit B_PAD_LEFT, a
        jr nz, .LeftPressed
        bit B_PAD_RIGHT, a
        jr z, .NonePressed
        bit LEVEL_LIMITS, [hl]
        jr nz, .ToggleOff
        jr .ToggleOn

.LeftPressed:
        bit LEVEL_LIMITS, [hl]
        jr z, .ToggleOn
        jr .ToggleOff

.NonePressed:
        bit LEVEL_LIMITS, [hl]
        jr nz, .ToggleOn

.ToggleOff:
        res LEVEL_LIMITS, [hl]
        ld de, .Off
        jr .Display

.ToggleOn:
        set LEVEL_LIMITS, [hl]
        ld de, .On

.Display:
        hlcoord 11, 7
        rst PlaceString
        farcall UpdateLevelCap
        and a
        ret

.Off: db "OFF@"
.On:  db "ON @"

Options_InverseMode:
        ld hl, wOptions2
        ldh a, [hJoyPressed]
        bit B_PAD_LEFT, a
        jr nz, .LeftPressed
        bit B_PAD_RIGHT, a
        jr z, .NonePressed
        bit INVERSE_MODE, [hl]
        jr nz, .ToggleOff
        jr .ToggleOn

.LeftPressed:
        bit INVERSE_MODE, [hl]
        jr z, .ToggleOn
        jr .ToggleOff

.NonePressed:
        bit INVERSE_MODE, [hl]
        jr nz, .ToggleOn

.ToggleOff:
        res INVERSE_MODE, [hl]
        ld de, .Off
        jr .Display

.ToggleOn:
        set INVERSE_MODE, [hl]
        ld de, .On

.Display:
        hlcoord 11, 9
        rst PlaceString
        and a
        ret

.Off: db "OFF@"
.On:  db "ON @"

Options_Frame:
	ld hl, wTextboxFrame
	ldh a, [hJoyPressed]
	bit B_PAD_LEFT, a
	jr nz, .LeftPressed
	bit B_PAD_RIGHT, a
	jr nz, .RightPressed
	and a
	ret

.RightPressed:
	ld a, [hl]
	inc a
	jr .Save

.LeftPressed:
	ld a, [hl]
	dec a

.Save:
	maskbits NUM_FRAMES
	ld [hl], a
UpdateFrame:
	ld a, [wTextboxFrame]
	hlcoord 16, 11 ; where on the screen the number is drawn
	add "1"
	ld [hl], a
	call LoadFontsExtra
	and a
	ret

Options_Cancel:
	ldh a, [hJoyPressed]
	and PAD_A
	jr nz, .Exit
	and a
	ret

.Exit:
	scf
	ret

OptionsControl:
        ld hl, wJumptableIndex
        ldh a, [hJoyLast]
        cp PAD_DOWN
        jr z, .DownPressed
        cp PAD_UP
        jr z, .UpPressed
        and a
        ret

.DownPressed:
        ld a, [hl]
        cp OPT_CANCEL ; maximum option index
        jr nz, .Increase
        ld [hl], OPT_TEXT_SPEED ; first option
        scf
        ret

.Increase:
        inc [hl]
        scf
        ret

.UpPressed:
        ld a, [hl]
        and a ; OPT_TEXT_SPEED, minimum option index
        jr nz, .Decrease
        ld [hl], NUM_OPTIONS ; decrements to OPT_CANCEL, maximum option index

.Decrease:
        dec [hl]
        scf
        ret

Options_UpdateCursorPosition:
        hlcoord 1, 1
        ld de, SCREEN_WIDTH
        ld c, SCREEN_HEIGHT - 2
.loop
	ld [hl], " "
	add hl, de
	dec c
	jr nz, .loop
	hlcoord 1, 2
	ld bc, 2 * SCREEN_WIDTH
        ld a, [wJumptableIndex]
        rst AddNTimes
        ld [hl], "▶"
        ret

Options_Reload:
        call ClearJoypad
        call ClearBGPalettes
        hlcoord 0, 0
        lb bc, SCREEN_HEIGHT - 2, SCREEN_WIDTH - 2
        call Textbox
        hlcoord 2, 2
        ld de, StringOptions
        rst PlaceString
        xor a
        ld [wJumptableIndex], a

        ld c, NUM_OPTIONS - 2 ; omit frame and cancel
.print_loop
        push bc
        xor a
        ldh [hJoyLast], a
        call GetOptionPointer
        pop bc
        ld hl, wJumptableIndex
        inc [hl]
        dec c
        jr nz, .print_loop
        call UpdateFrame

        xor a
        ld [wJumptableIndex], a
        inc a
        ldh [hBGMapMode], a
        call WaitBGMap
        ld b, SCGB_DIPLOMA
        call GetSGBLayout
        call SetDefaultBGPAndOBP
        ret

ChallengesMenu:
        call ClearJoypad
        ld hl, hInMenu
        ld a, [hl]
        push af
        ld [hl], TRUE
        call ClearBGPalettes
        hlcoord 0, 0
        lb bc, SCREEN_HEIGHT - 2, SCREEN_WIDTH - 2
        call Textbox
        hlcoord 2, 2
        ld de, StringChallengeOptions
        rst PlaceString
        xor a
        ld [wJumptableIndex], a

        ld c, NUM_CHALLENGE_OPTIONS - 1 ; omit Back option
.cprint_loop
        push bc
        xor a
        ldh [hJoyLast], a
        call GetChallengeOptionPointer
        pop bc
        ld hl, wJumptableIndex
        inc [hl]
        dec c
        jr nz, .cprint_loop

        xor a
        ld [wJumptableIndex], a
        call PrintChallengeDescription
        ld a, 1
        ldh [hBGMapMode], a
        call WaitBGMap
        ld b, SCGB_DIPLOMA
        call GetSGBLayout
        call SetDefaultBGPAndOBP

.cjoypad_loop
        call JoyTextDelay
        ldh a, [hJoyPressed]
        and PAD_START | PAD_B
        jr nz, .Exit
        call ChallengeOptionsControl
        jr c, .cdpad
        call GetChallengeOptionPointer
        jr c, .Exit

.cdpad
        call Options_UpdateCursorPosition
        call PrintChallengeDescription
        ld c, 3
        call DelayFrames
        jr .cjoypad_loop

.Exit
        ld de, SFX_TRANSACTION
        call PlaySFX
        call WaitSFX
        pop af
        ldh [hInMenu], a
        call Options_Reload
        ret

StringChallengeOptions:
        db "OAK'S AMBITION<LF>"
        db "        :<LF>"
        db "CHALLENGE MODE<LF>"
        db "        :<LF>"
        db "LEVEL LIMITS<LF>"
        db "        :<LF>"
        db "INVERSE MODE<LF>"
        db "        :<LF>"
        db "BACK@"

GetChallengeOptionPointer:
        jumptable .Pointers, wJumptableIndex
.Pointers:
        dw Options_OakChallenge
        dw Options_ChallengeMode
        dw Options_LevelLimits
        dw Options_InverseMode
        dw Options_BackToOptions

        const_def
        const CHAL_OPT_OAK     ; 0
        const CHAL_OPT_MODE    ; 1
        const CHAL_OPT_LIMIT   ; 2
        const CHAL_OPT_INVERSE ; 3
        const CHAL_OPT_BACK    ; 4
DEF NUM_CHALLENGE_OPTIONS EQU const_value ; 5

Options_BackToOptions:
        ldh a, [hJoyPressed]
        and PAD_A
        jr nz, .ExitBack
        and a
        ret
.ExitBack:
        scf
        ret

ChallengeOptionsControl:
        ld hl, wJumptableIndex
        ldh a, [hJoyLast]
        cp PAD_DOWN
        jr z, .Down
        cp PAD_UP
        jr z, .Up
        and a
        ret
.Down:
        ld a, [hl]
        cp CHAL_OPT_BACK
        jr nz, .Inc
        ld [hl], CHAL_OPT_OAK
        scf
        ret
.Inc:
        inc [hl]
        scf
        ret
.Up:
        ld a, [hl]
        and a
        jr nz, .Dec
        ld [hl], NUM_CHALLENGE_OPTIONS
.Dec:
        dec [hl]
        scf
        ret

PrintChallengeDescription:
        hlcoord 0, 12
        lb bc, 4, SCREEN_WIDTH - 2
        call Textbox
        ld a, [wJumptableIndex]
        add a, a
        ld e, a
        ld d, 0
        ld hl, ChallengeDescriptionPointers
        add hl, de
        ld e, [hl]
        inc hl
        ld d, [hl]
        hlcoord 1, 13
        rst PlaceString
        ret

ChallengeDescriptionPointers:
        dw ChallengeDesc_Oak
        dw ChallengeDesc_Mode
        dw ChallengeDesc_Limit
        dw ChallengeDesc_Inverse
        dw ChallengeDesc_Back

ChallengeDesc_Oak:
        db "<LF>"
        db "Gotta Catch 'em<LF>"
        db "<LF>"
        db "all before GYMs!@"
ChallengeDesc_Mode:
        db "<LF>"
        db "Makes bosses all<LF>"
        db "<LF>"
        db "much harder!@"
ChallengeDesc_Limit:
        db "<LF>"
        db "Caps your max LVL<LF>"
        db "<LF>"
        db "based on BADGEs!@"
ChallengeDesc_Inverse:
        db "<LF>"
        db "Reverses all TYPE<LF>"
        db "<LF>"
        db "Matchups like XY.@"
ChallengeDesc_Back:
        db "<LF>"
        db "Return to the<LF>"
        db "<LF>"
        db "base OPTIONS.@"
