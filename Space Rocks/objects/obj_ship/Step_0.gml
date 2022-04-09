//MOVIMENTO
if keyboard_check(vk_left)
{
	image_angle+=5;
}

if keyboard_check(vk_right)
{
	image_angle-=5;
}

if keyboard_check(vk_up)
{
	motion_add(image_angle,0.05);
	if speed>5 speed=5;

}


// CRIAÇÃO DE TIRO
if keyboard_check_pressed(vk_space)
{
	create_bullet(image_angle,Bulletspd,faction,id)
}

move_wrap(true,true,sprite_width/2);