    //TestDet(x, y, range, dir, grid);    
    if(instance_position(argument0, argument1, solids) == noone)
    {
        mp_grid_add_cell(argument4, argument0/32, argument1/32);
        if(argument2-- > 1)
        {
            switch(argument3)
            {
                case 0:
                    TestDet(argument0+32, argument1, argument2, argument3, argument4);
                    break;
                case 90:
                    TestDet(argument0, argument1-32, argument2, argument3, argument4);
                    break;
                case 180:
                    TestDet(argument0-32, argument1, argument2, argument3, argument4);
                    break;
                case 270:
                    TestDet(argument0, argument1+32, argument2, argument3, argument4);
                    break;
            }
        }
    
    }