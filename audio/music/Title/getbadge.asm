Music_GetBadge:
	channel_count 4
	channel 1, Music_GetBadge_Ch1
	channel 2, Music_GetBadge_Ch2
	channel 3, Music_GetBadge_Ch3
	channel 4, Music_GetBadge_Ch4

Music_GetBadge_Ch1:
	tempo 120
	volume 7, 7
	duty_cycle 2
	vibrato 8, 2, 4
	note_type 6, 9, 2
	octave 4
	note F_, 3
	sound_call .sub1
	note A#, 3
	transpose 0, 2
	sound_call .sub1
	transpose 0, 0
	volume_envelope 10, 7
	note A_, 16
	rest 6
	sound_ret

.sub1:
	rest 5
	octave 3
	note F_, 2
	note G#, 2
	octave 4
	note C#, 2
	note F_, 2
	note C#, 2
	octave 3
	note F_, 2
	note G#, 2
	octave 4
	note C#, 2
	octave 3
	note F_, 2
	note G#, 2
	octave 4
	note C#, 2
	note F_, 2
	sound_ret

Music_GetBadge_Ch2:
	duty_cycle 3
	vibrato 8, 2, 4
	note_type 6, 11, 5
	octave 5
	note C#, 3
	rest 3
	octave 4
	note G#, 1
	rest 1
	note G#, 8
	octave 3
	note C#, 2
	rest 2
	octave 2
	note G#, 2
	rest 1
	volume_envelope 9, 5
	octave 5
	note C_, 1
	volume_envelope 11, 5
	note C#, 2
	rest 2
	note D_, 2
	rest 2
	note D#, 3
	rest 3
	octave 4
	note A#, 1
	rest 1
	note A#, 8
	octave 3
	note D#, 2
	rest 2
	octave 2
	note A#, 2
	rest 1
	volume_envelope 9, 5
	octave 5
	note D_, 1
	volume_envelope 11, 5
	note D#, 8
	note F_, 16
	rest 6
	sound_ret

Music_GetBadge_Ch3:
	note_type 6, 2, 5
	octave 2
	note G#, 3
	rest 3
	octave 3
	note C#, 1
	rest 1
	note C#, 8
	note G#, 2
	rest 2
	note F_, 2
	rest 2
	note C#, 2
	note C_, 2
	octave 2
	note A#, 2
	note G#, 2
	note G_, 3
	rest 3
	octave 3
	note D#, 1
	rest 1
	note D#, 8
	note A#, 2
	rest 2
	note G_, 2
	rest 2
	note G_, 2
	note F_, 2
	note G_, 2
	note D#, 2
	note F_, 16
	rest 6
	sound_ret

Music_GetBadge_Ch4:
	toggle_noise 3
	drum_speed 6
.loop1:
	drum_note B_, 12
	drum_note D_, 1
	drum_note D_, 1
	drum_note D_, 2
	drum_note D_, 4
	drum_note D_, 4
	drum_note D_, 1
	drum_note C#, 1
	drum_note C#, 1
	drum_note C#, 1
	drum_note C#, 1
	drum_note C#, 1
	drum_note C#, 1
	drum_note C#, 1
	sound_loop 2, .loop1
	drum_note B_, 16
	rest 6
	sound_ret