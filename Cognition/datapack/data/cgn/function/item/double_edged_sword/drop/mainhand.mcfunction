$execute if items entity @s hotbar.$(Slot) * run return fail
$loot replace entity @s hotbar.$(Slot) loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(id)","functions":[{"function":"minecraft:set_components","components":$(components)},{"function":"minecraft:set_count","count":$(count)}]}]}]}
scoreboard players set $temp cgn.dummy 1