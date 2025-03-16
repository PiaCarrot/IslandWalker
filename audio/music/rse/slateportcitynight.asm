Music_SlateportCityNight:
	channel_count 4
	channel 1, Music_SlateportCityNight_Ch1
	channel 2, Music_SlateportCityNight_Ch2
	channel 3, Music_SlateportCityNight_Ch3
	channel 4, Music_SlateportCityNight_Ch4

Music_SlateportCityNight_Ch1:
	tempo 168
	volume $77
	vibrato 16, 2, 5
	notetype $c, $72
	note __, 8
	sound_loop 0, Music_SlateportCity_Ch1_loop

Music_SlateportCityNight_Ch2:
	notetype $c, $b3
	vibrato 32, 3, 6
	note __, 8
	sound_loop 0, Music_SlateportCity_Ch2_loop

Music_SlateportCityNight_Ch3:
	notetype $6, $26
	note __, 16
	sound_loop 0, Music_SlateportCity_Ch3_loop

Music_SlateportCityNight_Ch4:
	toggle_noise 3
	notetype $6
	note D#, 4
	note D_, 4
	note D#, 2
	note D#, 2
	note D_, 4
	sound_loop 0, Music_SlateportCity_Ch4_loop_main