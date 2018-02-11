vsp = vsp + grv;
 
//Horiz Collisions
if (place_meeting(x + hsp, y, obj_physicalTile))
{
	while (!place_meeting(x + sign(hsp), y, obj_physicalTile))
	{
	 	x = x + sign(hsp);
	}
	hsp = -hsp;
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
	sprite_index = spr_enemyAirborne;
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
		sprite_index = spr_enemy;
	}
	else
	{
		sprite_index = spr_enemyRun;
	}
}

if (hsp != 0)
{
	image_xscale = sign(hsp);
}