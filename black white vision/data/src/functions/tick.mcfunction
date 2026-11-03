# PLAYER
effect give @a[tag=EntitySource] minecraft:night_vision 30 1 true
effect give @a[tag=EntitySource] minecraft:invisibility 30 1 true

# blocks replacement
execute at @e[tag=EntitySource] run fill ~-5 ~-4 ~-5 ~5 ~5 ~5 minecraft:black_concrete replace minecraft:white_concrete
execute at @e[tag=EntitySource] run fill ~-4 ~-3 ~-4 ~4 ~4 ~4 minecraft:white_concrete replace minecraft:black_concrete
# update lightsources
execute at @e[tag=EntitySource] run tag @e[tag=Source,distance=..9] add Update

# UPDATE LIGHT
execute at @e[tag=Update] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:white_concrete replace black_concrete
tag @e[tag=Update] remove Update

# make all dummies invisible
data merge entity @e[tag=Source,limit=1,sort=random] {Invisible:0b}