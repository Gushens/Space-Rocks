//If player is inside range
if (!instance_exists(obj_ship)) exit;

if (point_distance(x,y,obj_ship.x,obj_ship.y) <250)
{
	var new_angle = point_direction(x,y,obj_ship.x,obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle,new_angle);
	image_angle = lerp(image_angle,new_angle,0.1);
	direction = image_angle;
	
	if (point_distance(x,y,obj_ship.x,obj_ship.y) <150)
	{
		speed-=0.05;
	}
	else
	{
		speed+=0.01;
	}
	
	//Fire Bullet
	bulletcounter+=1;
	if 	bulletcounter>=60
	{
		create_bullet(image_angle,4,faction,id);
		bulletcounter=0;
	}
	
}
else
{
	direction = image_angle - angle_difference(image_angle,direction);
	speed = lerp(speed,2,0.1);
}