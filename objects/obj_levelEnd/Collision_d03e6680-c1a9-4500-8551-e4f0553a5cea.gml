with (obj_player)
{
	if (hascontrol)
	{
		hascontrol = false;
		slideTransition(TRANS_MODE.GOTO, other.target);
	}
}