execute if entity @s[tag=nihility.entity.trader_AI] run data modify entity @s HandItems[0].tag.nihility.health set from entity @s ArmorItems[3].tag.nihility.health

effect give @s minecraft:instant_damage 1 30 true
effect give @s minecraft:instant_health 1 30 true
execute store result score hp nihility.data run data get entity @s HandItems[0].tag.nihility.health.val

item modify entity @s weapon.mainhand nihility:damage_display
data modify storage nihility:storage root.temp.dmg set from entity @s HandItems[0].tag.display.Name
summon item ~ ~1.8 ~ {Item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:6906000}},Tags:["nihility.hp_display","nihility.setup"],Motion:[0.0d,0.05d,0.0d],CustomNameVisible:1b,NoGravity:1b,Age:5980,PickupDelay:211}
execute as @e[type=item,tag=nihility.hp_display,tag=nihility.setup,limit=1] run function nihility:entity/void_spawn/damage_display
execute store result entity @s HandItems[0].tag.nihility.health.val int 1 run scoreboard players operation hp nihility.data -= damage nihility.data
execute if entity @s run function nihility:entity/void_spawn/health_update