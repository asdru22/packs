# Functions to run off of every haywire entity every tick

execute if entity @s[type=minecraft:item_display,tag=haywire.block] positioned ~ ~-1 ~ run function haywire:block/tick