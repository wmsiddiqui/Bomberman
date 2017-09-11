    //ExpandBomb(x,y,range, direction)
    
    var inst = instance_position(argument0, argument1, solids);

    if(object_get_name(inst.object_index) == "bomb")            //detonate other bombs
    {
        inst.alarm[0] = 1;
    }
    else if (object_get_name(inst.object_index) == "block")     //destroy walls
    {
        inst.image_speed = .23;
    }
    else if (object_get_parent(inst.object_index) == powerUp)   //destroy power ups
    {
        with(inst)
        {
            instance_change(powerUpDestroy, true);
        }
    }
    else if(inst == noone)
    {
        if(argument2 == 0)
        {
            var current = instance_create(argument0, argument1, flameEnd);
        }
        else
        {
            var current = instance_create(argument0, argument1, flameMiddle);
        }
        
        with (current)
        {
            if(argument3 != 0)
            {
                image_angle = argument3;
                if (argument3 == 90)
                {
                    y = y+32;
                }
                else if (argument3 == 180)
                {
                    y = y + 32;
                    x = x + 32
                }
                else
                {
                    x = x + 32;
                }
            }
        }
        
     
        if(argument2 > 0)
        {
            if(argument3 == 0)
            {
                ExpandBomb(argument0+32, argument1, argument2-1, argument3);
            }
            else if(argument3 == 180)
            {
                ExpandBomb(argument0-32, argument1, argument2-1, argument3);
            }
            else if(argument3 == 90)
            {
                ExpandBomb(argument0, argument1-32, argument2-1, argument3);
            }
            else if(argument3 == 270)
            {
                ExpandBomb(argument0, argument1+32, argument2-1, argument3);
            }
        }
    } 