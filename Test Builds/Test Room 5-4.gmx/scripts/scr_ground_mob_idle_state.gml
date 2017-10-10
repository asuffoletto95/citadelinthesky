///scr_ground_mob_idle_state
scr_check_for_player();
hsp = 0;
vsp = (min(7,vsp+0.05));
if (distance_to_object(obj_Test_Player1) < 96) state = scr_ground_mob_agro_state;
