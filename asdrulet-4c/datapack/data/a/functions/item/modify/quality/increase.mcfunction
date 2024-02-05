data modify storage a:data root.data set from entity @s SelectedItem.tag.a
execute store result score $quality var run data get storage a:data root.data.quality
execute store result storage a:data root.data.quality int 1 run scoreboard players add $quality var 1
function a:item/modify/quality/modify_stats

item modify entity @s weapon.mainhand a:copy_stats

function a:item/modify/lore/mainhand