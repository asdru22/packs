advancement revoke @s from a:technical/inventory_changed/main
tag @s remove combat.player.item.schedule

execute in overworld positioned 0 -64 0 run function a:combat/player/equipment/get

function a:combat/stats/get/attributes