//cornerClip(x,y,ids, +/- degfreedom x, +/- degfreedom y)


with(argument0)
{
    for (var i = 1; i <= abs(argument2 + argument1); i++)
    {
        if(!place_meeting(x-1, y-i, wall))
        {
            return i;
        }
    }
}
