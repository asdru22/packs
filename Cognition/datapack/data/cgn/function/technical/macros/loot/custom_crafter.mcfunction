# Replaces a slot on self with a specific id of item with a specific tag

$loot replace block ~ ~ ~ container.16 loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(id)","functions":[{"function":"minecraft:set_components","components":$(components)},{"function":"minecraft:set_count","count":$(count)}]}]}]}