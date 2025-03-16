Music_SomeRouteOrangeNight:
	channel_count 3
	channel 1, Music_SomeRouteOrangeNight_Ch1
	channel 2, Music_SomeRouteOrangeNight_Ch2
	channel 3, Music_SomeRouteOrangeNight_Ch3

Music_SomeRouteOrangeNight_Ch1:
	tempo 166
	volume $77
	stereopanning $f
	dutycycle 2
	octave 2
	notetype $C, $00
	note E_, 1
	intensity $2E
	note E_, 3
	sound_loop 0, Music_SomeRouteOrange_Ch1_loop

Music_SomeRouteOrangeNight_Ch2:
	stereopanning $f0
	dutycycle 2
	tone $0001
	octave 3
	notetype $F, $2D
	note C_, 4
	notetype $C, $2D
	note __, 1
	sound_loop 0, Music_SomeRouteOrange_Ch2_loop

Music_SomeRouteOrangeNight_Ch3:
	octave 3
	notetype $C, $00
	note C_, 4
	sound_loop 0, Music_SomeRouteOrange_Ch3_loop
