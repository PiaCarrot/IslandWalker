Music_CityOrangeNight:
	channel_count 3
	channel 1, Music_CityOrangeNight_Ch1
	channel 2, Music_CityOrangeNight_Ch2
	channel 3, Music_CityOrangeNight_Ch3

Music_CityOrangeNight_Ch1:
	tempo 168
	volume 7, 7
	stereo_panning TRUE, TRUE
	tone $0002
	duty_cycle 2
	pitch_offset 2
	sound_loop 0, Music_CityOrange_Ch1_loop

Music_CityOrangeNight_Ch2:
	stereopanning $f0
	tone $0000
	dutycycle 2
	octave 3
	notetype $C, $A2
	note E_, 2
	dutycycle 0
	intensity $00
	octave 5
	note A_, 1
	note __, 1
	pitch_offset 1
	sound_loop 0, Music_CityOrange_Ch2_loop

Music_CityOrangeNight_Ch3:
	duty_cycle 2
	sound_loop 0, Music_CityOrange_Ch3_loop
