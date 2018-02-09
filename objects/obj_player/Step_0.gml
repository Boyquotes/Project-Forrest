key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);

var move = key_right - key_left;

hsp = move * walkSpeed;

x =x + hsp;
