############################################################
# Commands to kill items from a pottery table
############################################################

execute store result score #count dsl.dummy run data get entity @s Item.Count
loot spawn ~ ~ ~ loot dsl:items/imaginexus
loot spawn ~ ~ ~ loot minecraft:blocks/crafting_table
kill @s