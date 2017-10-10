///scr_dash_state

 if(!place_meeting(x+((move*10)),y,obj_Test_Floor)){
x+= hsp*4;

}

// Creating the dash effect
var dash = instance_create(x, y, obj_dash_effect);

dash.sprite_index = sprite_index;
dash.image_index = image_index;
dash.image_xscale = image_xscale;
obj_Test_Player1.candash = 0;
alarm[1] = room_speed/2;
