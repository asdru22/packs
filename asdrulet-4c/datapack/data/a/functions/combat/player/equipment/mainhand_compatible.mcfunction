data modify storage a:data root.temp.type set from storage a:data root.equipment.mainhand.type
execute store success score $success var run data modify storage a:data root.temp.type set from storage a:data root.hit.type
execute if score $success var matches 0 run data modify storage a:data root.hit.mainand_compatible set value true
execute if score $success var matches 1 run data modify storage a:data root.hit.mainand_compatible set value false

execute store result score $temp var run data get storage a:data root.equipment.helmet.stats.damage 10
scoreboard players operation $damage var += $temp var
