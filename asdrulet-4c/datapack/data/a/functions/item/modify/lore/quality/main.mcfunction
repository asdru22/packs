data modify storage a:data root.temp.lore.array insert -1 value '""'
execute store result score $quality var run data get storage a:data root.item.tag.a.quality
execute store result score $max_quality var run data get storage a:data root.item.tag.a.max_quality
data modify storage a:data root.temp.lore.quality set value []

scoreboard players set $temp var 0
function a:item/modify/lore/quality/iter 

item modify block ~ ~ ~ container.0 a:get_quality
data modify storage a:data root.temp.lore.array insert -1 from block ~ ~ ~ Items[0].tag.display.Name