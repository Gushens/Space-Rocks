///@description spawn_off_camera
///@arg obj
///@arg num

function spawn_off_camera(obj,num){
obj = argument0;
num = argument1;
var xx,yy;
var pad = 64;

repeat(num)
{
xx= random_range(0,room_width);
yy= random_range(0,room_height);

while(point_in_rectangle(xx,yy, global.camx - pad,global.camy - pad,global.camx+global.camWidth+ pad,global.camy+global.camHeight + pad))
{
	xx= random_range(0,room_width);
    yy= random_range(0,room_height);
}

instance_create_layer(xx,yy,"Instances",obj)
}
}

