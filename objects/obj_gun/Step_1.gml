 x = obj_player.x + 5;
 y = obj_player.y - 12;

image_angle = point_direction(x, y, mouse_x, mouse_y);

firingDelay = firingDelay - 1;

if (mouse_check_button(mb_left)) && (firingDelay < 0)
{
	firingDelay = 10;
	with (instance_create_layer(x, y, "Bullets", obj_bullet))
	{
		speed = 25;
		direction = other.image_angle;
		image_angle = direction;
	}
}