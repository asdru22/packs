execute if data storage acbag:storage root.temp.cauldron.Items[{id:"minecraft:repeating_command_block",tag:{ctc:{id:"lightning_in_a_bottle",from:"asdru:accessory_bag"}}}] run function acbag:block/soul_cauldron/use/lightning_in_a_bottle/present
execute unless data storage acbag:storage root.temp.cauldron.Items[{id:"minecraft:repeating_command_block",tag:{ctc:{id:"lightning_in_a_bottle",from:"asdru:accessory_bag"}}}] run data modify storage acbag:storage root.temp.cauldron.Items insert -1 from storage acbag:storage root.temp.cauldron.tempItem



scoreboard players set .found acbag.dummy 1
item modify entity @s weapon.mainhand acbag:remove_1_count
execute at @s run loot spawn ~ ~ ~ loot acbag:items/jar