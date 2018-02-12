  //Get Player Input
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
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

//Animation
if (!place_meeting(x, y + 1, obj_physicalTile))
{
	sprite_index = spr_playerAirborne;
	image_speed = 0;
	if (sign(vsp) > 0)
	{
		image_index = 1;
	} 
	else
	{
		image_index = 0;
	}
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_player;
	}
	else
	{
		sprite_index = spr_playerRun;
	}
}

if (hsp != 0)
{
	image_xscale = sign(hsp);
}