DefaultOptions:
; wOptions: med text speed
	db TEXT_DELAY_MED
; wSaveFileExists: no
	db FALSE
; wTextboxFrame: frame 1
	db FRAME_1
; wTextboxFlags: use text speed
	db 1 << FAST_TEXT_DELAY_F
; wGBPrinterBrightness: normal
        db GBPRINTER_NORMAL
; wOptions2: oak challenge off, challenge mode off, level limits off, inverse mode off, walk through walls off, instant hatching off, exp share off
        db 0

        db MAX_LEVEL ; wLevelCap
        db $00
.End
	assert DefaultOptions.End - DefaultOptions == wOptionsEnd - wOptions
