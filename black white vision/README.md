# what is this pack>
This pack allows you use a b/w concrete as lighted surface. You can place and remove simple light sources, or imit light byself.

# how it works:
Tags ```Init```,```Source```,```Update```,```Remove``` for armor stands (dummies);
Tags ```initSource```,```removeSource``` for eggs;
Tag ```EntitySource``` for player.

Use ```initSource``` egg (rabbit) will spawn dummy, which tagged ```Init```;
all ```Init``` **call** ```Update``` for his neighbors, and **update blocks**.
```Update``` just **Update blocks**.
```Source``` is a **common tag** for all dummies.

Use ```removeSource``` egg (ocelot) will tag a dummies to ```Remove```;
dummy which tagged ```Remove``` will cause **update block**, then ```Update``` neighbors.
after, then die.

Players, which **have** tag ```EntitySource```, can cause **block updates** and ```Update``` dummies.

# some functions:
## src:

***src:load*** - introduce a user;
***src:tick*** - all updates is here;
***src:spawn_source, src:remove_source*** - eggs behaviour.

## tools:
***tools:add_tags*** - give a player ```EntitySource``` tag, but easir to just type ```/tag``` command;
***tools:debug_mode*** - it not implemented correctly, all what he do now is tellraw a clickable button for ```tools:get_tools```;
***tools:get_tools*** - give you an eggs.

by D.

> [Github](https://github.com/Rapid-Dee)