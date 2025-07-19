# Functions to run off of every vrm entity every tick

execute if entity @s[type=minecraft:item_display,tag=vrm.block] positioned ~ ~-1 ~ run function vrm:block/tick