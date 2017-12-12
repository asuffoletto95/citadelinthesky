///scr_mob_choose_state
if(alarm[0] <= 0 ){
    state = choose(scr_ground_mob_idle_state, scr_mob_wander_state);
    alarm[0] = room_speed*2;
    targetx = random(room_width);
    targety = random(room_height);
}
