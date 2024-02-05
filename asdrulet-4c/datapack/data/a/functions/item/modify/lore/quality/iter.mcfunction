scoreboard players add $temp var 1

execute if score $temp var <= $quality var run data modify storage a:data root.temp.lore.quality insert -1 value "★"
execute if score $temp var > $quality var if score $temp var <= $max_quality var run data modify storage a:data root.temp.lore.quality insert -1 value "☆"
execute if score $temp var > $max_quality var run data modify storage a:data root.temp.lore.quality insert -1 value ""

execute if score $temp var matches ..5 run function a:item/modify/lore/quality/iter 