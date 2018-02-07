//Gravity
/*
if !place_meeting(x, y + 1, tiset_grassTileset)
{
   gravity = 0.01;
}
else
{
   gravity = 0;
}
*/

//Right
if	(keyboard_check(ord("D"))) 
{                 
	x = x + movementSpeed;
}
if	(keyboard_check(ord("A")))
{
	x = x - movementSpeed;
}	
//Jump
if (keyboard_check(vk_space) and jumpPossible == true)
{	
	y = y - 3;
}