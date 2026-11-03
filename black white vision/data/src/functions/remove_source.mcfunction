# REMOVE LIGHT
execute at @e[type=minecraft:ocelot, tag=removeSource] run tag @e[tag=Source,distance=..1.5] add Remove
kill @e[type=minecraft:ocelot, tag=removeSource]
execute at @e[tag=Remove] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:black_concrete replace minecraft:white_concrete
execute at @e[tag=Remove] run tag @e[tag=Source,distance=0.5..5] add Update
kill @e[tag=Remove]