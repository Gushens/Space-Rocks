lives-=1
audio_play_sound(snd_hurt,1,false)
with(obj_game)
{
	alarm[1]= 60
}

repeat(10){
	instance_create_layer(x,y,"Instances",obj_debris);
}