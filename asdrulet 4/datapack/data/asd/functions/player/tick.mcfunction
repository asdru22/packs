execute store result score @s asd.temp_health run data get entity @s Health 10

execute if entity @s[tag=!asd.ignore_actionbar] run function asd:player/displays/actionbar/tick

execute if entity @s[scores={asd.use_crossbow=1..}] run function asd:player/events/on_used_item/ranged_weapon/main
execute if entity @s[scores={asd.use_bow=1..}] run function asd:player/events/on_used_item/ranged_weapon/main
execute if entity @s[predicate=asd:player/holding_trident/main] run function asd:item/trident/tick
execute if entity @s[scores={asd.use_trident=1..}] run function asd:player/events/on_used_item/ranged_weapon/main
execute if entity @s[scores={asd.use_coas=1..}] run function asd:player/events/on_used_item/carrot_on_a_stick/main
execute if entity @s[scores={asd.use_wfoas=1..}] run function asd:player/events/on_used_item/warped_fungus_on_a_stick/main
execute if entity @s[scores={asd.using_item=1..}] run function asd:item/usable/tick

#execute store result score @s asd.gui if data entity @s EnderItems[{tag:{asd:{gui:1b}}}]
#execute unless score @s asd.gui = @s asd.prev_gui run function asd:player/gui/update

execute store result score @s asd.using_slot run data get entity @s SelectedItemSlot
execute unless score @s asd.using_slot = @s asd.previous_using_slot run function asd:player/events/key_inputs/scroll/main

execute if score @s asd.open_chest matches 1.. run function reg:blocks/chests/main