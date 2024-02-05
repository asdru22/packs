############################################################
# Commands to run tickly for open pottery tables
############################################################

# Check if the contents of the barrel have changed at all
data modify entity @s item.tag.stored_barrel_data[0] set from entity @s item.tag.stored_barrel_data[1]
execute store success score @s dsl.dummy run data modify entity @s item.tag.stored_barrel_data[1] set from block ~ ~ ~ Items
scoreboard players set @s[tag=!dsl.the_hex.open] dsl.dummy 1
execute if entity @s[scores={dsl.dummy=1..}] if data block ~ ~ ~ Items run function dsl:block/the_hex/crafting/barrel_updated

# Fix hopper minecarts being evil little garbage machines
execute positioned ~ ~-2 ~ as @e[type=minecraft:hopper_minecart,dy=2,tag=!smithed.entity] at @s run function dsl:block/the_hex/tick/hopper_minecart 

# Add tag
tag @s add dsl.the_hex.open