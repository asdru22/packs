loot spawn ~ ~ ~ mine ~ ~ ~ diamond_pickaxe
execute as @e[type=item,predicate=nihility:entity/item/red_sandstone_wall,distance=..6] run function nihility:block/battery/spawn_loot

execute if entity @s[tag=nihility.battery.charged] positioned ~ ~-1 ~ as @e[type=creeper,sort=nearest,limit=1,tag=nihility.battery.display] run function nihility:block/battery/remove_charge

execute positioned ~ ~1 ~ if entity @e[type=armor_stand,tag=nihility.battery.charged,distance=..0.1] positioned ~ ~-1 ~ as @e[type=creeper,sort=nearest,limit=1,tag=nihility.battery.display,distance=..1] run function nihility:block/battery/remove_charge

kill @s