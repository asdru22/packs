execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2 if data storage smithed:crafter root.temp{shapeless_crafting_input:[{item_tag:["#epl:enchantable"]},{tag:{epl:{id:"mystic_book"}}}]} if data storage smithed:crafter root.temp.shapeless_crafting_input[{tag:{epl:{id:"mystic_book"}}}].tag.epl.StoredEnchantments unless data storage smithed:crafter root.temp.shapeless_crafting_input[{item_tag:["#epl:enchantable"]}].tag.epl.Enchantments run function epl:recipes/enchant/main

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2 if data storage smithed:crafter root.temp{shapeless_crafting_input:[{Count:1b,id:"minecraft:chain_command_block",tag:{epl:{id:"mystic_book"}}},{Count:1b,id:"minecraft:chain_command_block",tag:{epl:{id:"mystic_book"}}}]} unless data storage smithed:crafter root.temp.shapeless_crafting_input[{item_tag:["#epl:enchantable"]}].tag.epl.Enchantments unless data storage smithed:crafter root.temp.shapeless_crafting_input[{tag:{epl:{flags:["not_mergeable"]}}}] run function epl:recipes/merge/main

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 3 if data storage smithed:crafter root.temp{shapeless_crafting_input:[{Count:1b,id:"minecraft:chain_command_block",tag:{epl:{id:"alluring_powder"}}},{Count:1b,id:"minecraft:dragon_breath"},{Count:1b,id:"minecraft:soul_lantern"}]} run loot replace block ~ ~ ~ container.16 loot epl:blocks/enchanted_lantern

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 3 if data storage smithed:crafter root.temp{shapeless_crafting_input:[{Count:1b,id:"minecraft:chain_command_block",tag:{epl:{id:"alluring_powder"}}},{Count:1b,id:"minecraft:rotten_flesh"},{Count:1b,id:"minecraft:charcoal"}]} run loot replace block ~ ~ ~ container.16 loot epl:items/desecrated_char

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2.. if data storage smithed:crafter root.temp{shapeless_crafting_input:[{Count:1b,id:"minecraft:chain_command_block",tag:{epl:{id:"mystic_book"}}},{id:"minecraft:chain_command_block",tag:{epl:{id:"desecrated_char"}}}]} run function epl:recipes/remove_one_ench/main

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 3 if data storage smithed:crafter root.temp{shapeless_crafting_input:[{Count:1b,id:"minecraft:chain_command_block",tag:{epl:{id:"witherling_shell"}}},{Count:1b,id:"minecraft:chain_command_block",tag:{epl:{id:"alluring_powder"}}},{Count:1b,id:"minecraft:quartz"}]} run item replace block ~ ~ ~ container.16 with shulker_shell

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 3 if data storage smithed:crafter root.temp{shapeless_crafting_input:[{Count:4b,tag:{epl:{id:"desecrated_char"}}},{Count:4b,id:"minecraft:honey_bottle"},{Count:1b,id:"minecraft:magma_cream"}]} run loot replace block ~ ~ ~ container.16 loot epl:items/desecrating_cream

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 4 if data storage smithed:crafter root.temp{shapeless_crafting_input:[{Count:1b,id:"minecraft:netherite_scrap"},{Count:1b,id:"minecraft:iron_ingot"},{Count:1b,id:"minecraft:lava_bucket"},{Count:1b,tag:{epl:{id:"experience_vial"},CustomModelData:6901001}}]} run loot replace block ~ ~ ~ container.16 loot epl:items/xenolith_ingot

execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 4 if data storage smithed:crafter root.temp{shapeless_crafting_input:[{Count:1b,id:"minecraft:blaze_powder"},{Count:1b,id:"minecraft:feather"},{Count:1b,tag:{epl:{id:"xenolith_ingot"}}},{Count:1b,tag:{epl:{id:"desecrated_char"}}}]} run loot replace block ~ ~ ~ container.16 loot epl:items/rekindling_feather