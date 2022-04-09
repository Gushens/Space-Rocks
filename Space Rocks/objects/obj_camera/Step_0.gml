//FOLLOW PLAYER
if instance_exists(target)
{
global.camx =target.x - (global.camWidth/2);
global.camy =target.y - (global.camHeight/2);
global.camx = clamp(global.camx, 0,room_width-global.camWidth);
global.camy = clamp(global.camy, 0,room_height-global.camHeight);
}

camera_set_view_pos(view_camera[0],global.camx,global.camy);

//MOVE BACKGROUND

layer_x("Parallax_0",global.camx*.98)
layer_y("Parallax_0",global.camy*.98)

layer_x("Parallax_1",global.camx*.92)
layer_y("Parallax_1",global.camy*.92)

layer_x("Parallax_2",global.camx*.9)
layer_y("Parallax_2",global.camy*.9)

layer_x("Parallax_3",global.camx*.88)
layer_y("Parallax_3",global.camy*.88)