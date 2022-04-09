///@description
///@arg direction
///@arg speed
///@arg faction

function create_bullet(_dir,_spd,_fac,_creator){
audio_play_sound(snd_zap,1,false);

//MAKE BULLET LEAVE FROM THE TIP OF THE SHIP

var x_adj = cos(degtorad(image_angle)) * sprite_width/2;
var y_adj = -sin(degtorad(image_angle)) * sprite_width/2;
var inst= instance_create_layer(x + x_adj, y + y_adj, "Instances", obj_bullet);
with (inst)
{
	direction=_dir;
	speed=_spd;
	faction=_fac;
	creator=_creator;

if (faction == factions.ally) image_blend = c_aqua;
else if (faction == factions.enemy) image_blend = c_red;
}

}