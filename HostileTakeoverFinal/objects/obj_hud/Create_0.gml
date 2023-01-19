audio_stop_all()
if room=rm_main    audio_play_sound(snd_main, 1, true)
if room=rm_level1  audio_play_sound(snd_level1, 1, true)
if room=rm_level2  audio_play_sound(snd_level2, 1, true)
if room=rm_boss    audio_play_sound(snd_boss, 1, true)
if room=rm_win	   audio_play_sound(snd_win, 1, true)
if room=rm_lose	   audio_play_sound(snd_lose, 1, false)
// Exception for score display, uncomment if starting game in a gameplay room.
//global.total_score = 0