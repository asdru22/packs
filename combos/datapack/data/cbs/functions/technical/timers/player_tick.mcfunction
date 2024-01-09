execute if score @s cbs.clicks matches 1.. run function cbs:player/clicks/timer/tick

execute if entity @s[tag=!cbs.combo_effect] unless score @s cbs.stat.max_stamina = @s cbs.stamina unless score @s cbs.clicks matches 1.. run function cbs:player/stamina/timer

execute if entity @s[tag=cbs.combo_effect] run function cbs:items/tick

execute store result score @s cbs.slot.current run data get entity @s SelectedItemSlot
execute unless score @s cbs.slot.current = @s cbs.slot.old run function cbs:display/bossbar/tick

execute if score @s cbs.damage_recieved matches 1.. run function cbs:player/apply_damage/display

execute if score @s cbs.death matches 1.. run function cbs:player/death/init