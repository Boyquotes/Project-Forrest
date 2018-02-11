if (done == 0)
{
	vsp = vsp + grv;
 
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
		if (vsp > 0)
		{
			done = 1;
			image_index = 1;
		}
		
		while (!place_meeting(x, y + vsp, obj_physicalTile))
		{
			y = y + sign(hsp);
		}
		vsp = 0;
	}
	y = y + vsp;
}