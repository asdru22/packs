############################################################
# Destroys the output so dupe bugs don't occur
############################################################

data modify storage dsl:storage root.temp.output_item_temp set from storage dsl:storage root.temp.output_item
execute store success score @s dsl.dummy run data modify storage dsl:storage root.temp.output_item_temp set from entity @s Item
execute if entity @s[scores={dsl.dummy=0}] run scoreboard players set #temp_0 dsl.dummy 1
execute if score #temp_0 dsl.dummy matches 0 run kill @s[scores={dsl.dummy=0}]
