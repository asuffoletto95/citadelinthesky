///scr_get_input
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_up);
key_up = keyboard_check(vk_up);
key_jump_held = keyboard_check(vk_up); // this is for the precision jumping
key_down = keyboard_check(vk_down);
key_attack = keyboard_check_pressed(ord('Z'));
key_pause = keyboard_check_pressed(ord('P'));
key_weaponswap = keyboard_check_pressed(ord('X'));
key_wavedash = keyboard_check_pressed(ord('C'));
key_mask_ability = keyboard_check(ord('A'));


movespeed = 2;
move = key_left + key_right;
hsp = move * movespeed; 
