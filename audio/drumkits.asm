Drumkits:
	dw Drumkit0
	dw Drumkit1
	dw Drumkit2
	dw Drumkit3
	dw Drumkit4
	dw Drumkit5
    dw Drumkit0S
	dw Drumkit1S 
	dw Drumkit_Empty
	dw Drumkit3S
	dw Drumkit4S
	dw Drumkit5S
	
Drumkit0S:
	dw Drum00   
	dw Snare2
	dw Snare3   
	dw Snare4 
	dw Snare4_Soft 
	dw Drum05  
	dw Triangle1_Soft
	dw Triangle2_Soft
	dw HiHat1_Soft
	dw Snare5_Soft
	dw Snare6_Soft
	dw Snare7_Soft
	dw HiHat1
Drumkit1S:
	dw Drum00
	dw HiHat1_Soft
	dw Snare5_Soft
	dw Snare6_Soft
	dw Snare7_Soft
	dw HiHat2_Soft
	dw HiHat3_Soft
	dw Snare8_Soft
	dw Triangle3_Soft
	dw Triangle4_Soft
	dw Snare9_Soft
	dw Snare10_Soft
	dw Snare11_Soft
Drumkit_Empty:
Drumkit3S:
	dw Drum21
	dw Snare12_Soft
	dw Snare13_Soft
	dw Snare14_Soft
	dw Kick1_Soft
	dw Triangle5_Soft
	dw Drum20
	dw Drum27_Soft
	dw Drum28_Soft
	dw Drum29_Soft
	dw Drum21
	dw Kick2_Soft
	dw Crash2_Soft
Drumkit4S:
	dw Drum00
	dw Drum20
	dw Snare13_Soft
	dw Snare14_Soft
	dw Kick1_Soft
	dw Drum33_Soft
	dw Triangle5_Soft
	dw Drum35_Soft
	dw Drum31_Soft
	dw Drum32_Soft
	dw Drum36_Soft
	dw Kick2_Soft
	dw Crash1
Drumkit5S:
	dw Drum00
	dw Snare9_Soft
	dw Snare10_Soft
	dw Snare11_Soft
	dw Drum27_Soft
	dw Drum28_Soft 
	dw Drum29_Soft  
	dw Drum05      
	dw Triangle1_Soft 
	dw Crash1
	dw Snare14_Soft 
	dw Snare13_Soft
	dw Kick2_Soft 

Drumkit0:
	dw Drum00
	dw Snare1
	dw Snare2
	dw Snare3
	dw Snare4
	dw Drum05
	dw Triangle1
	dw Triangle2
	dw HiHat1
	dw Snare5
	dw Snare6
	dw Snare7
	dw HiHat2
Drumkit1:
	dw Drum00
	dw HiHat1
	dw Snare5
	dw Snare6
	dw Snare7
	dw HiHat2
	dw HiHat3
	dw Snare8
	dw Triangle3
	dw Triangle4
	dw Snare9
	dw Snare10
	dw Snare11
Drumkit2:
	dw Drum00
	dw Snare1
	dw Snare9
	dw Snare10
	dw Snare11
	dw Drum05
	dw Triangle1
	dw Triangle2
	dw HiHat1
	dw Snare5
	dw Snare6
	dw Snare7
	dw HiHat2
Drumkit3:
	dw Drum21
	dw Snare12
	dw Snare13
	dw Snare14
	dw Kick1
	dw Triangle5
	dw Drum20
	dw Drum27
	dw Drum28
	dw Drum29
	dw Drum21
	dw Kick2
	dw Crash2
Drumkit4:
	dw Drum21
	dw Drum20
	dw Snare13
	dw Snare14
	dw Kick1
	dw Drum33
	dw Triangle5
	dw Drum35
	dw Drum31
	dw Drum32
	dw Drum36
	dw Kick2
	dw Crash1
Drumkit5:
	dw Drum00
	dw Snare9
	dw Snare10
	dw Snare11
	dw Drum27
	dw Drum28
	dw Drum29
	dw Drum05
	dw Triangle1
	dw Crash1
	dw Snare14
	dw Snare13
	dw Kick2

Drum00:
	noise_note 32, 1, 1, 0
	sound_ret

Snare1:
	noise_note 32, 12, 1, 51
	sound_ret

Snare2:
	noise_note 32, 11, 1, 51
	sound_ret

Snare3:
	noise_note 32, 10, 1, 51
	sound_ret

Snare4:
	noise_note 32, 8, 1, 51
	sound_ret

Drum05:
	noise_note 39, 8, 4, 55
	noise_note 38, 8, 4, 54
	noise_note 37, 8, 3, 53
	noise_note 36, 8, 3, 52
	noise_note 35, 8, 2, 51
	noise_note 34, 8, 1, 50
	sound_ret

Triangle1:
	noise_note 32, 5, 1, 42
	sound_ret

Triangle2:
	noise_note 33, 4, 1, 43
	noise_note 32, 6, 1, 42
	sound_ret

HiHat1:
	noise_note 32, 8, 1, 16
	sound_ret

Snare5:
	noise_note 32, 8, 2, 35
	sound_ret

Snare6:
	noise_note 32, 8, 2, 37
	sound_ret

Snare7:
	noise_note 32, 8, 2, 38
	sound_ret

HiHat2:
	noise_note 32, 10, 1, 16
	sound_ret

HiHat3:
	noise_note 32, 10, 2, 17
	sound_ret

Snare8:
	noise_note 32, 10, 2, 80
	sound_ret

Triangle3:
	noise_note 32, 10, 1, 24
	noise_note 32, 3, 1, 51
	sound_ret

Triangle4:
	noise_note 34, 9, 1, 40
	noise_note 32, 7, 1, 24
	sound_ret

Snare9:
	noise_note 32, 9, 1, 34
	sound_ret

Snare10:
	noise_note 32, 7, 1, 34
	sound_ret

Snare11:
	noise_note 32, 6, 1, 34
	sound_ret

Drum20:
	noise_note 32, 1, 1, 17
	sound_ret

Drum21:
	sound_ret

Snare12:
	noise_note 32, 9, 1, 51
	sound_ret

Snare13:
	noise_note 32, 5, 1, 50
	sound_ret

Snare14:
	noise_note 32, 8, 1, 49
	sound_ret

Kick1:
	noise_note 32, 8, 8, 107
	noise_note 32, 7, 1, 0
	sound_ret

Triangle5:
	noise_note 48, 9, 1, 24
	sound_ret

Drum27:
	noise_note 39, 9, 2, 16
	sound_ret

Drum28:
	noise_note 51, 9, 1, 0
	noise_note 51, 1, 1, 0
	sound_ret

Drum29:
	noise_note 51, 9, 1, 17
	noise_note 51, 1, 1, 0
	sound_ret

Crash1:
	noise_note 51, 8, 8, 21
	noise_note 32, 6, 5, 18
	sound_ret

Drum31:
	noise_note 51, 5, 1, 33
	noise_note 51, 1, 1, 17
	sound_ret

Drum32:
	noise_note 51, 5, 1, 80
	noise_note 51, 1, 1, 17
	sound_ret

Drum33:
	noise_note 32, 10, 1, 49
	sound_ret

Crash2:
	noise_note 32, 8, 4, 18
	sound_ret

Drum35:
	noise_note 51, 8, 1, 0
	noise_note 51, 1, 1, 0
	sound_ret

Drum36:
	noise_note 51, 8, 1, 33
	noise_note 51, 1, 1, 17
	sound_ret

Kick2:
	noise_note 32, 10, 8, 107
	noise_note 32, 7, 1, 0
	sound_ret
	
; Softer Noise Notes
Snare12_Soft:
	noise_note 32, 8, 1, 51
	sound_ret

Snare13_Soft:
	noise_note 32, 4, 1, 50
	sound_ret

Snare14_Soft:
	noise_note 32, 7, 1, 49
	sound_ret

Kick1_Soft:
	noise_note 32, 7, 8, 107
	noise_note 32, 6, 1, 0
	sound_ret

Triangle5_Soft:
	noise_note 48, 8, 1, 24
	sound_ret

Drum27_Soft:
	noise_note 39, 8, 2, 16
	sound_ret

Drum28_Soft:
	noise_note 51, 8, 1, 0
	noise_note 51, 1, 1, 0
	sound_ret

Drum29_Soft:
	noise_note 51, 8, 1, 17
	noise_note 51, 1, 1, 0
	sound_ret

Drum31_Soft:
	noise_note 51, 4, 1, 33
	noise_note 51, 1, 1, 17
	sound_ret

Drum32_Soft:
	noise_note 51, 4, 1, 80
	noise_note 51, 1, 1, 17
	sound_ret

Drum33_Soft:
	noise_note 32, 9, 1, 49
	sound_ret

Drum35_Soft:
	noise_note 51, 7, 1, 0
	noise_note 51, 1, 1, 0
	sound_ret

Drum36_Soft:
	noise_note 51, 7, 1, 33
	noise_note 51, 1, 1, 17
	sound_ret

Snare4_Soft:
	noise_note 32, 7, 1, 51
	sound_ret

Snare5_Soft:
	noise_note 32, 7, 2, 35
	sound_ret

Snare6_Soft:
	noise_note 32, 7, 2, 37
	sound_ret

Snare7_Soft:
	noise_note 32, 7, 2, 38
	sound_ret

Snare8_Soft:
	noise_note 32, 9, 2, 80
	sound_ret

Snare9_Soft:
	noise_note 32, 8, 1, 34
	sound_ret

Snare10_Soft:
	noise_note 32, 6, 1, 34
	sound_ret

Snare11_Soft:
	noise_note 32, 5, 1, 34
	sound_ret

Kick2_Soft:
	noise_note 32, 9, 8, 107
	noise_note 32, 6, 1, 0
	sound_ret

Crash2_Soft:
	noise_note 32, 7, 4, 18
	sound_ret

Triangle1_Soft:
	noise_note 32, 6, 1, 42
	sound_ret

Triangle2_Soft:
	noise_note 33, 3, 1, 43
	noise_note 32, 5, 1, 42
	sound_ret

Triangle3_Soft:
	noise_note 32, 9, 1, 24
	noise_note 32, 2, 1, 51
	sound_ret

Triangle4_Soft:
	noise_note 34, 8, 1, 40
	noise_note 32, 6, 1, 24
	sound_ret

HiHat1_Soft:
	noise_note 32, 7, 1, 16
	sound_ret

HiHat2_Soft:
	noise_note 32, 9, 1, 16
	sound_ret

HiHat3_Soft:
	noise_note 32, 9, 2, 17
	sound_ret
