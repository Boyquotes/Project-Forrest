 //Get Player Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);

//Calculate Movement
var move = key_right - key_left;

hsp = move * walkSpeed;

vsp = vsp + grv;

//Jump
if (place_meeting(x, y + 1, obj_physicalTile)) && (key_jump)
{
	vsp = -3.25;
}

//Horiz Collisions
if (place_meeting(x + hsp, y, obj_physicalTile))
{
	while (!place_meeting(x + sign(hsp), y, obj_physicalTile))
	{
	 	x = x + sign(hsp);
	}
	hsp = 0;
}
x  = x + hsp;

//Vert Collision
if (place_meeting(x, y + vsp, obj_physicalTile))
{
	while (!place_meeting(x, y + vsp, obj_physicalTile))
	{
		y = y + sign(hsp);
	}
	vsp = 0;
}
y = y + vsp;
