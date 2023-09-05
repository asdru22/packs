playsound minecraft:block.amethyst_cluster.break block @a[distance=..5] ~ ~ ~ 2 1.5
scoreboard players add t cotv.dummy 1
execute store result entity @s ArmorItems[3].tag.cotv.shards int 1 run scoreboard players get t cotv.dummy

item modify entity @p[gamemode=!creative,advancements={cotv:technical/player/interact_with_villager=true}] weapon.mainhand cotv:remove_1