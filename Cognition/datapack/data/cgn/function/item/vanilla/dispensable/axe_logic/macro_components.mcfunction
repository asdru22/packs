$execute store success score $temp cgn.dummy run loot insert ~ ~ ~ loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(id)","functions":[{"function":"minecraft:set_components","components":$(components)},{"function":"minecraft:set_count","count":$(count)}]}]}]}

execute if score $temp cgn.dummy matches 1 run kill