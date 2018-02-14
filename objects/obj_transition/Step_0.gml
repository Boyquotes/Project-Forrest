if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0, percent + 0.5);
	}
	else
	{
		percent = min(1, percent + 0.05);
	}
}
