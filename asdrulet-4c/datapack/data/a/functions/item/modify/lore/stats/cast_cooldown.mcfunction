execute if data storage a:data root.temp.lore.categories{active:false} run data modify storage a:data root.temp.lore.array insert -1 value '""'
data modify storage a:data root.temp.lore.categories.active set value true

$data modify storage a:data root.temp.lore.cast_cooldown set value $(amount)
execute store result score $temp var run data get storage a:data root.temp.lore.cast_cooldown 0.5
data modify storage a:data root.temp.lore.cast_cooldown set value {}

scoreboard players operation $amount_int var = $temp var
execute store result storage a:data root.temp.lore.cast_cooldown.int int 1 run scoreboard players operation $amount_int var /= 10 const
execute store result storage a:data root.temp.lore.cast_cooldown.dec int 1 run scoreboard players operation $temp var %= 10 const
function a:item/modify/lore/stats/cast_cooldown_lore with storage a:data root.temp.lore.cast_cooldown