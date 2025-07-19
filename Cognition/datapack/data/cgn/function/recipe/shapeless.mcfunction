execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2 if data storage smithed.crafter:input {recipe:[{id:"minecraft:quartz",count:4},{count:4,components:{"minecraft:item_name": "{\"translate\":\"item.cgn.gloomstone_shard\"}"}}]} run loot replace block ~ ~ ~ container.16 loot cgn:items/gloomstone

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 3 if data storage smithed.crafter:input {recipe:[{count:1,components:{"minecraft:custom_data":{cgn:{ebonite_upgradeable:1b}}}},{count:1,components:{"minecraft:item_name": "{\"translate\":\"item.cgn.ebonite_upgrade_smithing_template\"}"}},{count:1,components:{"minecraft:item_name": "{\"translate\":\"item.cgn.ebonite_ingot\"}"}}]} run function cgn:recipe/ebonite_upgrade/main

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 3 if data storage smithed.crafter:input {recipe:[{id:"minecraft:raw_gold",count:1},{id:"minecraft:magma_cream",count:1},{count:1,components:{"minecraft:item_name": "{\"translate\":\"item.cgn.midnight_rose\"}"}}]} run loot replace block ~ ~ ~ container.16 loot cgn:items/ebognite

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 4 if data storage smithed.crafter:input {recipe:[{id:"minecraft:raw_copper",count:1},{id:"minecraft:magma_cream",count:1},{id:"minecraft:soul_sand",count:1},{count:1,components:{"minecraft:item_name": "{\"translate\":\"item.cgn.wispthorn\"}"}}]} run loot replace block ~ ~ ~ container.16 loot cgn:items/electroplasm

data modify storage smithed.crafter:input flags set value ["consume_tools"]
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2 if data storage smithed.crafter:input {recipe:[{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_data":{cgn:{no_blades:true}}}},{count:2,components:{"minecraft:item_name": "{\"translate\":\"item.cgn.malachite_knife\"}"}}]} run function cgn:recipe/repair_malachite_sword/main

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 3 if data storage smithed.crafter:input {recipe:[\
{count:1,components:{"minecraft:item_name": "{\"translate\":\"item.cgn.emberlash\"}","minecraft:custom_data":{cgn:{charged:false}}}},\
{count:1,components:{"minecraft:item_name": "{\"translate\":\"item.cgn.gloomstone_blade\"}"}},\
{count:1,components:{"minecraft:item_name": "{\"translate\":\"item.cgn.pyroplasm\"}"}}]} \
run function cgn:recipe/repair_emberlash/main