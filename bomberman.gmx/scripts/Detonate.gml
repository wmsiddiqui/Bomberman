//Detonate(x,y,range, id_bomb)

with(argument3)
{
    instance_destroy();
}

instance_create(argument0,argument1,flameStart);


ExpandBomb(argument0+32, argument1, argument2 - 1, 0);
ExpandBomb(argument0-32, argument1, argument2 - 1, 180);
ExpandBomb(argument0, argument1-32, argument2 - 1, 90);
ExpandBomb(argument0, argument1+32, argument2 - 1, 270);