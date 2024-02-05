execute if entity @s[tag=combat.player.item.schedule] run function a:combat/player/equipment/inventory_change

execute store result score @s current_slot run data get entity @s SelectedItemSlot
execute unless score @s current_slot = @s previous_slot run function a:combat/player/equipment/hotbar

execute if entity @s[scores={using_item.current=1..}] run function a:item/_vanilla/usable/tick

execute if entity @s[predicate=a:item/use] run function a:item/_vanilla/usable/use

scoreboard players remove @s[scores={stat.cast_cooldown=1..}] stat.cast_cooldown 1

execute if entity @s[predicate=a:combat/player/sprinting,scores={stat.stamina.current=1..}] run function a:combat/stats/stamina/sprinting

execute unless entity @s[scores={using_item.current=1..}] unless score @s[predicate=!a:combat/player/sprinting] stat.stamina.current = @s stat.stamina.max run function a:combat/stats/stamina/regenerate

function a:combat/player/actionbar/tick