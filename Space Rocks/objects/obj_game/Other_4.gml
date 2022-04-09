//SPAWNAR ASTEORIDES
if (room == rm_game)
{
	spawn_off_camera(obj_asteroid,40)
	spawn_off_camera(obj_raider,10)
	spawn_off_camera(obj_hunter,8)
	spawn_off_camera(obj_brute,2)
	
	if audio_is_playing(msc_song)
	{
		audio_stop_sound(msc_song)
	}
	audio_play_sound(msc_song,2,true)
	
	alarm[0] = 60;
}