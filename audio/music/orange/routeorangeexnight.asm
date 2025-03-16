Music_EarlyOrangeRouteNight:
	channel_count 3
	channel 1, Music_EarlyOrangeRouteNight_Ch1
	channel 2, Music_EarlyOrangeRouteNight_Ch2
	channel 3, Music_EarlyOrangeRouteNight_Ch3

Music_EarlyOrangeRouteNight_Ch1:
	tempo 225
	volume $77
	stereopanning $f
	notetype $C, $00
	note __, 4
	dutycycle 2
	sound_loop 0, Music_EarlyOrangeRoute_Ch1_loop

Music_EarlyOrangeRouteNight_Ch2:
	stereopanning $f0
	notetype $C, $00
	note __, 2
	dutycycle 2
	tone $0002
	octave 3
	notetype $6, $B2
	note D#, 1
	note F_, 1
	note G_, 1
	note A#, 1
	sound_loop 0, Music_EarlyOrangeRoute_Ch2_loop

Music_EarlyOrangeRouteNight_Ch3:
	notetype $C, $00
	note __, 4
	sound_loop 0, Music_EarlyOrangeRoute_Ch3_loop
