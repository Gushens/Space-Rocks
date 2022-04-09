//If player is inside range
if (!instance_exists(obj_ship)) exit;

if (point_distance(x,y,obj_ship.x,obj_ship.y) <250)
{
	var new_angle = point_direction(x,y,obj_ship.x,obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle,new_angle);
	image_angle = lerp(image_angle,new_angle,0.1);
	
	//Fire Bullet
	bulletcounter+=1;
	if 	bulletcounter>=60
	{
		create_bullet(image_angle,2,faction,id);
		bulletcounter=0;
	}
	
}
else
{
	direction = image_angle - angle_difference(image_angle,direction);
	image_angle = lerp(image_angle,direction,0.1);
}