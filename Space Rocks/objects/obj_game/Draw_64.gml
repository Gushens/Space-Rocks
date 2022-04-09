switch(room)
{
	case rm_game:
draw_text(20,20, "SCORE:"+string(score));
draw_text(20,40, "LIVES:"+string(lives));
break;

case rm_start:
draw_set_halign(fa_center);
var c=c_yellow;
draw_text_ext_transformed_color(room_width/2, 100,"SPACE ROOCKS",7,200,3,3,0,c,c,c,c,1)
draw_text(room_width/2,200,
@"Score 1,000 points to win!
         
up:move
left/right: chenge directions
space: shoot

>>prees ENTER to begin<<

"
)
draw_set_halign(fa_left)


break;

case rm_win:
draw_set_halign(fa_center);
var c=c_lime;
draw_text_ext_transformed_color(room_width/2, 200,"YOU WON!",7,200,3,3,0,c,c,c,c,1)
draw_text(room_width/2,300,
"PREES ENTER TO RESTART"
)
draw_set_halign(fa_left)

break;

case rm_gameover:
draw_set_halign(fa_center);
var c=c_red;
draw_text_ext_transformed_color(room_width/2, 150,"GAME OVER",7,200,3,3,0,c,c,c,c,1)
draw_text(room_width/2,250,"Final Score: "+string(score))
draw_text(room_width/2,300,"PREES ENTER TO RESTART"
)
draw_set_halign(fa_left)
break;
}