;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.2.0 (16-Nov-2022)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_SplashMusic:
	channel_count 4
	channel 1, Music_SplashMusic_Ch1
	channel 2, Music_SplashMusic_Ch2
	channel 3, Music_SplashMusic_Ch3
	channel 4, Music_SplashMusic_Ch4

Music_SplashMusic_Ch1:
	volume 7, 7
	duty_cycle 2
	note_type 12, 10, 7
	tempo 156
;Bar 1
	rest 16
	rest 16
	rest 16
	rest 16
	rest 12
;Bar 5
	octave 3
	volume_envelope 12, 7
	note D#, 1
	rest 1
	note F_, 1
	rest 1
;Bar 6
Music_SplashMusic_Ch1_loop:
	note G#, 3
	note C#, 1
	rest 5
	note G#, 3
	note G_, 1
	rest 1
	note F_, 1
	rest 1
;Bar 7
	note G_, 3
	note C_, 1
	rest 5
	note C_, 3
	note D#, 1
	rest 1
	note F_, 1
	rest 1
;Bar 8
	note G_, 1
	rest 1
	note G#, 1
	note G_, 1
	rest 1
	note G#, 1
	rest 1
	note G_, 4
	note D#, 3
	octave 2
	note B_, 1
	rest 1
;Bar 9
	octave 3
	note D_, 2
	note C_, 1
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	note D_, 1
	rest 1
	note C_, 3
	note D#, 1
	rest 1
	note F_, 1
	rest 1
;Bar 10
	note G#, 3
	note C#, 1
	rest 5
	note G#, 3
	note G_, 1
	rest 1
	note F_, 1
	rest 1
;Bar 11
	note G_, 3
	note C_, 1
	rest 5
	note C_, 3
	note D#, 1
	rest 1
	note F_, 1
	rest 1
;Bar 12
	note G_, 1
	rest 1
	note G#, 1
	note G_, 1
	rest 1
	note G#, 1
	rest 1
	note G_, 5
	note D#, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
;Bar 13
	octave 3
	note D_, 2
	note C_, 1
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	note D_, 1
	rest 1
	note D#, 3
	note C_, 1
	rest 1
	octave 2
	note G_, 1
	rest 1
;Bar 14
	note B_, 3
	octave 3
	note D_, 3
	note C_, 2
	rest 1
	note D#, 3
	note C_, 1
	rest 1
	octave 2
	note G_, 1
	rest 1
;Bar 15
	note B_, 3
	octave 3
	note D_, 3
	note C_, 1
	rest 3
	note C_, 4
	octave 2
	note G_, 2
;Bar 16
	note G#, 1
	rest 1
	note A#, 1
	octave 3
	note C_, 1
	rest 1
	note D_, 1
	note D#, 1
	rest 1
	note F_, 1
	rest 3
	note D#, 1
	rest 2
	note F_, 1
;Bar 17
	note G_, 3
	rest 1
	note G_, 3
	note G_, 2
	rest 3
	note F_, 1
	rest 2
	note G_, 1
;Bar 18
	note G#, 3
	note C#, 1
	rest 5
	note G#, 3
	note G_, 1
	rest 1
	note F_, 1
	rest 1
;Bar 19
	note G_, 3
	note C_, 1
	rest 9
	note C_, 3
;Bar 20
	note C#, 3
	note D#, 3
	note F_, 2
	note G#, 3
	note G_, 3
	note F_, 2
;Bar 21
	note G_, 3
	note C_, 2
	rest 5
	note G_, 3
	note F_, 3
;Bar 22
	note G#, 3
	note C#, 1
	rest 5
	note G#, 3
	note G_, 1
	rest 1
	note F_, 1
	rest 1
;Bar 23
	note G_, 6
	note F_, 7
	rest 3
;Bar 24
	note G#, 3
	note G_, 3
	note G#, 2
	note G_, 3
	note F_, 3
	note G_, 3
;Bar 25
	rest 2
	note D#, 3
	note F_, 2
	note G_, 1
	rest 1
	note D#, 2
	note F_, 1
	rest 1
	note G_, 1
	rest 1
;Bar 26
	note G#, 6
	note F_, 14
;Bar 27
	rest 6
	note C_, 2
	octave 2
	note B_, 2
	note G#, 2
;Bar 28
	note G_, 6
	octave 3
	note D_, 10
;Bar 29
	rest 8
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note C#, 2
;Bar 30
	note D_, 5
	rest 1
	note D_, 10
;Bar 31
	rest 12
	note D#, 1
	rest 1
	note F_, 2
	sound_loop 0, Music_SplashMusic_Ch1_loop

; ============================================================================================================

Music_SplashMusic_Ch2:
	duty_cycle 1
	note_type 12, 10, 7
;Bar 1
	volume_envelope 12, 7
	rest 8
	octave 2
	volume_envelope 9, 7
	note G#, 2
	note A_, 2
	note A#, 2
	note B_, 2
;Bar 2
	octave 3
	note C_, 3
	note C_, 1
	rest 2
	note A#, 1
	rest 1
	octave 2
	note C_, 2
	octave 4
	note D_, 2
	octave 2
	note C_, 1
	octave 4
	note C#, 2
	octave 2
	note F#, 1
;Bar 3
	octave 4
	note C_, 3
	note C_, 1
	rest 2
	note C_, 1
	octave 3
	note C#, 1
	octave 1
	note A#, 2
	octave 4
	note C_, 2
	rest 4
;Bar 4
	note D_, 3
	note D_, 1
	octave 2
	note C_, 2
	octave 4
	note D_, 3
	rest 1
	note D_, 2
	octave 2
	note G_, 1
	octave 4
	note C#, 2
	octave 2
	note F#, 1
;Bar 5
	octave 4
	note C_, 2
	rest 1
	note C#, 3
	note D_, 1
	rest 9
;Bar 6
Music_SplashMusic_Ch2_loop:
	note C#, 3
	note C#, 1
	rest 1
	octave 1
	note E_, 1
	octave 4
	note C#, 1
	octave 3
	note C#, 1
	rest 1
	octave 4
	note C#, 1
	rest 2
	note C#, 2
	octave 1
	note G_, 1
	rest 1
;Bar 7
	octave 4
	note C_, 3
	note C_, 1
	rest 2
	note C_, 1
	octave 3
	note C_, 1
	octave 1
	note G#, 1
	octave 4
	note C_, 1
	octave 2
	note D#, 1
	rest 1
	octave 4
	note C_, 2
	octave 2
	note D#, 2
;Bar 8
	octave 4
	note C_, 3
	note C_, 1
	octave 2
	note D_, 2
	octave 4
	note C_, 1
	octave 3
	note D_, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	octave 2
	note D_, 1
	octave 4
	note C#, 4
;Bar 9
	note D_, 3
	note D_, 1
	rest 2
	note D_, 1
	octave 3
	note D#, 1
	octave 2
	note C_, 1
	octave 4
	note D_, 1
	octave 2
	note C_, 1
	note C_, 1
	octave 4
	note D_, 2
	note C#, 1
	octave 2
	note F_, 1
;Bar 10
	octave 4
	note C_, 3
	note C_, 1
	rest 2
	note C_, 1
	octave 3
	note C#, 1
	octave 2
	note D#, 1
	octave 4
	note C_, 1
	octave 2
	note D#, 1
	note D#, 1
	octave 4
	note C_, 2
	octave 2
	note D#, 1
	note D#, 1
;Bar 11
	octave 3
	note A#, 3
	note A#, 1
	octave 1
	note G#, 2
	octave 3
	note A#, 1
	note D#, 1
	octave 1
	note G#, 1
	octave 3
	note A#, 1
	octave 2
	note F_, 2
	octave 3
	note A#, 1
	rest 1
	note A_, 1
	octave 2
	note D#, 1
;Bar 12
	octave 4
	note C_, 3
	note C_, 1
	octave 2
	note D_, 2
	octave 4
	note C_, 1
	octave 3
	note D_, 1
	rest 1
	octave 4
	note C#, 1
	rest 2
	note C#, 2
	octave 2
	note D_, 1
	note G_, 1
;Bar 13
	octave 4
	note D_, 3
	note D_, 1
	rest 2
	note D_, 1
	octave 3
	note G_, 1
	octave 2
	note C_, 1
	octave 4
	note D_, 1
	rest 2
	note D_, 1
	rest 1
	octave 3
	note B_, 1
	rest 1
;Bar 14
	octave 4
	note C_, 2
	rest 1
	octave 3
	note B_, 1
	rest 2
	octave 4
	note C#, 1
	rest 9
;Bar 15
	note C_, 3
	note D_, 1
	rest 2
	note C_, 1
	rest 9
;Bar 16
	note D_, 7
	rest 1
	note D_, 6
	rest 2
;Bar 17
	note D#, 3
	rest 1
	note D_, 2
	rest 2
	note C#, 2
	rest 6
;Bar 18
	note C#, 2
	octave 2
	note F_, 1
	octave 4
	note C#, 1
	rest 2
	note C#, 1
	note C#, 1
	octave 2
	note D#, 1
	octave 4
	note C#, 1
	octave 2
	note D#, 1
	note D#, 1
	octave 4
	note C#, 2
	octave 2
	note D#, 1
	note D#, 1
;Bar 19
	octave 4
	note C_, 3
	note C_, 1
	octave 1
	note G#, 2
	octave 4
	note C_, 1
	octave 3
	note C_, 1
	octave 1
	note G#, 1
	octave 4
	note C_, 1
	octave 2
	note D#, 1
	octave 1
	note G#, 1
	octave 4
	note C_, 2
	octave 1
	note G#, 1
	octave 2
	note D#, 1
;Bar 20
	octave 4
	note C#, 2
	octave 2
	note F_, 1
	octave 4
	note C#, 1
	rest 2
	note C#, 1
	note C#, 1
	octave 2
	note D#, 1
	octave 4
	note C#, 1
	octave 2
	note D#, 1
	note D#, 1
	octave 4
	note C#, 2
	octave 2
	note D#, 1
	note D#, 1
;Bar 21
	octave 4
	note C_, 3
	note C_, 1
	rest 2
	note C_, 2
	octave 2
	note D#, 1
	rest 1
	octave 4
	note C_, 2
	octave 3
	note G#, 1
	octave 4
	note C_, 2
	rest 1
;Bar 22
	octave 3
	note G#, 2
	octave 2
	note F_, 1
	octave 4
	note C#, 1
	rest 2
	note C#, 1
	octave 3
	note F_, 1
	octave 2
	note D#, 1
	octave 4
	note C#, 1
	rest 2
	note C#, 1
	rest 1
	octave 2
	note D#, 1
	rest 1
;Bar 23
	octave 4
	note D#, 5
	rest 1
	note C_, 8
	octave 1
	note B_, 1
	rest 1
;Bar 24
	octave 4
	note C#, 2
	octave 2
	note F_, 1
	octave 4
	note C#, 1
	rest 2
	note C#, 1
	octave 3
	note C#, 1
	octave 2
	note D#, 1
	octave 4
	note C#, 1
	octave 2
	note D#, 2
	octave 4
	note C#, 2
	octave 2
	note D#, 1
	note F#, 1
;Bar 25
	octave 3
	note A#, 3
	note A#, 1
	rest 2
	note A#, 1
	note C_, 1
	octave 2
	note F_, 1
	octave 3
	note A_, 1
	octave 2
	note F_, 1
	rest 1
	octave 3
	note A_, 2
	octave 2
	note F_, 1
	note C#, 1
;Bar 26
	note A#, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	note C#, 1
	rest 1
	note D_, 1
	rest 1
	note D#, 1
	rest 1
	note E_, 1
	rest 1
	note F_, 1
	rest 1
	note F#, 1
	rest 1
;Bar 27
	octave 4
	note E_, 1
	rest 4
	octave 3
	note B_, 5
	rest 6
;Bar 28
	octave 4
	note D_, 3
	note D_, 1
	rest 2
	note D_, 1
	octave 3
	note D#, 1
	rest 2
	octave 4
	note D_, 1
	rest 1
	octave 2
	note G_, 1
	octave 4
	note C#, 2
	rest 1
;Bar 29
	note C_, 3
	note C_, 1
	rest 2
	note C_, 1
	octave 3
	note C#, 1
	rest 2
	octave 4
	note C_, 2
	octave 2
	note F_, 1
	octave 4
	note C#, 3
;Bar 30
	note D_, 3
	note D_, 1
	octave 2
	note G_, 2
	octave 4
	note D_, 1
	octave 3
	note D#, 1
	rest 2
	octave 4
	note D_, 2
	octave 2
	note G_, 1
	octave 4
	note C#, 2
	rest 1
;Bar 31
	note C_, 2
	rest 1
	note C#, 3
	note D_, 10
	sound_loop 0, Music_SplashMusic_Ch2_loop

; ============================================================================================================

Music_SplashMusic_Ch3:
	note_type 12, 1, 0
;Bar 1
	volume_envelope 2, 0
	rest 8
	octave 2
	volume_envelope 1, 0
	note G#, 2
	note A_, 2
	note A#, 2
	note B_, 2
;Bar 2
	octave 3
	note C_, 2
	rest 1
	octave 2
	note G_, 2
	rest 1
	note C_, 3
	rest 1
	octave 3
	note C_, 3
	octave 2
	note B_, 2
	rest 1
;Bar 3
	note A#, 3
	note F_, 2
	rest 1
	octave 1
	note A#, 2
	rest 2
	octave 2
	note A#, 4
	note B_, 2
;Bar 4
	octave 3
	note C_, 2
	rest 1
	octave 2
	note G_, 2
	rest 1
	note C_, 3
	rest 1
	octave 3
	note C_, 3
	octave 2
	note B_, 2
	rest 1
;Bar 5
	note A#, 3
	note B_, 2
	rest 1
	octave 3
	note C_, 1
	rest 9
;Bar 6
Music_SplashMusic_Ch3_loop:
	octave 1
	note A#, 2
	rest 1
	note A#, 2
	octave 2
	note E_, 1
	note F_, 1
	rest 1
	note D#, 2
	rest 1
	note D#, 2
	rest 1
	note G_, 1
	rest 1
;Bar 7
	note G#, 2
	rest 1
	note G#, 1
	rest 1
	note G#, 1
	note D#, 1
	rest 3
	note G#, 1
	rest 2
	note G#, 1
	note D#, 2
;Bar 8
	note D_, 3
	note D_, 1
	rest 1
	note G#, 1
	note G#, 1
	rest 1
	note G_, 2
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	octave 1
	note B_, 1
	rest 1
;Bar 9
	octave 2
	note C_, 2
	rest 1
	note C_, 1
	rest 2
	note G_, 1
	rest 1
	octave 3
	note C_, 2
	rest 1
	octave 2
	note G_, 1
	rest 1
	note C_, 1
	octave 1
	note B_, 1
	rest 1
;Bar 10
	note A#, 2
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	octave 2
	note F_, 1
	rest 1
	note D#, 2
	rest 1
	note D#, 2
	rest 1
	note G_, 1
	rest 1
;Bar 11
	note G#, 2
	rest 1
	note G#, 1
	rest 1
	note G#, 1
	note D#, 1
	rest 1
	octave 1
	note G#, 2
	octave 2
	note D#, 1
	note G#, 2
	rest 1
	note D#, 1
	rest 1
;Bar 12
	note D_, 3
	note D_, 1
	rest 1
	note D_, 1
	note G#, 1
	rest 1
	note G_, 2
	rest 1
	note G_, 2
	rest 1
	octave 1
	note B_, 1
	rest 1
;Bar 13
	octave 2
	note C_, 2
	rest 1
	note C_, 1
	rest 1
	note C_, 1
	note G_, 1
	rest 1
	octave 3
	note C_, 1
	rest 1
	octave 2
	note G_, 1
	rest 1
	note C_, 1
	rest 1
	note G_, 1
	rest 1
;Bar 14
	note D_, 3
	note G_, 2
	rest 1
	note C_, 1
	rest 9
;Bar 15
	note D_, 3
	note G_, 2
	rest 1
	note C_, 1
	rest 9
;Bar 16
	note F_, 7
	rest 1
	note G_, 7
	rest 1
;Bar 17
	octave 3
	note C_, 4
	octave 2
	note B_, 3
	rest 1
	note A#, 2
	rest 6
;Bar 18
	octave 1
	note A#, 3
	note A#, 1
	rest 1
	note A#, 1
	octave 2
	note C#, 1
	rest 1
	note D#, 2
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	note G_, 2
;Bar 19
	note G#, 2
	rest 1
	note G#, 1
	rest 1
	note G#, 1
	note D#, 1
	rest 1
	octave 1
	note G#, 2
	octave 2
	note D#, 1
	note G#, 1
	rest 1
	note G#, 1
	note D#, 2
;Bar 20
	octave 1
	note A#, 2
	rest 1
	note A#, 2
	octave 2
	note C#, 1
	note D_, 1
	rest 1
	note D#, 2
	rest 1
	note D#, 1
	rest 1
	note G_, 2
	rest 1
;Bar 21
	note G#, 3
	rest 1
	note G#, 1
	rest 1
	octave 1
	note G#, 1
	rest 3
	octave 2
	note C_, 3
	note F_, 2
	rest 1
;Bar 22
	octave 1
	note A#, 2
	rest 1
	note A#, 1
	rest 1
	note A#, 1
	octave 2
	note C#, 1
	rest 1
	note D#, 2
	rest 1
	note D#, 1
	rest 1
	note D#, 1
	note G#, 1
	rest 1
;Bar 23
	note C_, 3
	rest 1
	note G_, 1
	rest 1
	note F_, 7
	rest 3
;Bar 24
	octave 1
	note A#, 2
	rest 2
	note A#, 1
	note A#, 1
	octave 2
	note C#, 1
	rest 1
	note D#, 2
	rest 1
	note D#, 2
	rest 1
	note C#, 1
	rest 1
;Bar 25
	note C_, 2
	rest 1
	note C_, 2
	rest 1
	note G_, 1
	rest 1
	note F_, 2
	rest 1
	note F_, 2
	rest 1
	note A_, 2
;Bar 26
	octave 1
	note A#, 1
	rest 1
	octave 2
	note C_, 1
	rest 1
	note C#, 1
	rest 1
	note D_, 1
	rest 1
	note D#, 1
	rest 1
	note E_, 1
	rest 1
	note F_, 1
	rest 1
	note F#, 1
	rest 1
;Bar 27
	note G_, 11
	rest 5
;Bar 28
	octave 3
	note C_, 3
	octave 2
	note G_, 2
	rest 1
	note C_, 2
	rest 1
	note G_, 1
	octave 3
	note C_, 3
	rest 1
	octave 2
	note B_, 2
;Bar 29
	note A#, 2
	rest 1
	note F_, 2
	rest 1
	octave 1
	note A#, 2
	rest 1
	octave 2
	note F_, 1
	note A#, 3
	note B_, 2
	rest 1
;Bar 30
	octave 3
	note C_, 3
	octave 2
	note G_, 2
	rest 1
	octave 1
	note A#, 1
	rest 2
	octave 2
	note G_, 1
	octave 3
	note C_, 3
	octave 2
	note B_, 2
	rest 1
;Bar 31
	note A#, 3
	note B_, 2
	rest 1
	octave 3
	note C_, 10
	sound_loop 0, Music_SplashMusic_Ch3_loop

; ============================================================================================================

Music_SplashMusic_Ch4:
	toggle_noise 3
	drum_speed 12
;Bar 1
	drum_note 10, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 1, 1
	drum_note 7, 1
	drum_note 1, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
;Bar 2
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 3
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 4
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 5
	drum_note 2, 3
	drum_note 2, 1
	drum_note 5, 2
	drum_note 2, 4
	drum_note 3, 2
	drum_note 5, 4
;Bar 6
Music_SplashMusic_Ch4_loop:
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 7
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 8
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 9
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 10
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 11
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 12
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 13
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 14
	drum_note 11, 3
	drum_note 11, 3
	drum_note 2, 4
	drum_note 10, 2
	drum_note 6, 4
;Bar 15
	drum_note 11, 3
	drum_note 11, 3
	drum_note 2, 4
	drum_note 10, 2
	drum_note 6, 4
;Bar 16
	drum_note 2, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 2, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
;Bar 17
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 6
	drum_note 5, 2
;Bar 18
	drum_note 2, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
;Bar 19
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 20
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 21
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 2, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
;Bar 22
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
;Bar 23
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 2, 6
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
;Bar 24
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 25
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 26
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
	drum_note 11, 2
;Bar 27
	drum_note 2, 4
	drum_note 1, 4
	drum_note 1, 8
;Bar 28
	drum_note 2, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
;Bar 29
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 30
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
;Bar 31
	drum_note 2, 3
	drum_note 2, 1
	drum_note 5, 2
	drum_note 2, 6
	drum_note 5, 4
	sound_loop 0, Music_SplashMusic_Ch4_loop

; ============================================================================================================

