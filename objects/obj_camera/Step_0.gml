//Update Destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update Object Pos
x += (xTo - x) / 25;
y += (yTo - y) / 25;

//Update Camera Pos
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);