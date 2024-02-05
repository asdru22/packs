$execute store result score $temp var run data get storage a:data root.data.stats.$(stat) 10.5
$data modify storage a:data root.value set value {stat:"$(stat)"}

scoreboard players operation $int var = $temp var
execute store result storage a:data root.value.int int 1 run scoreboard players operation $int var /= 10 const

execute store result storage a:data root.value.dec int 1 run scoreboard players operation $temp var %= 10 const

function a:item/modify/quality/apply_change with storage a:data root.value