execute store result score @s atr.equipment.new run attribute @s generic.luck get 1000000000000000
execute unless score @s atr.equipment.new = @s atr.equipment.old run function atr:events/player/change_equipment/init

function atr:display/actionbar/default

execute if score @s atr.leave_game matches 1.. run function atr:player/transfer_scores/init

kill @e[type=experience_orb,distance=..7]