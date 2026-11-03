tellraw @a {"text":"datapack enabled","color":"green"}
tellraw @a {"text":"to get light sources type: /function tools:get_tools OR tools:debug_mode"}

# how it works:
# tags `Init`,Source,Update,Remove for armor stands
# tags initSource,removeSource for eggs
# tag EntitySource for player.

# use initSource egg (rabbit) -> spawn Init dummy
# all Init call Update for his neighbors, and update blocks.
# Update just Update blocks.
# Source is a common tag for all dummies.
# use removeSource (ocelot) -> tag to Remove dummies.
# dummy which tagged to remove update block, then update neighbors.
# after, then die.