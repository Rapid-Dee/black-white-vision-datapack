# INIT LIGHT
execute at @e[type=minecraft:rabbit, tag=initSource] run summon minecraft:armor_stand ~ ~ ~ {Tags:["Init"],NoGravity:1b}
kill @e[type=minecraft:rabbit, tag=initSource]

execute at @e[tag=Init] run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:white_concrete replace minecraft:black_concrete
tag @e[tag=Init] add Source
tag @e[tag=Init] remove Init