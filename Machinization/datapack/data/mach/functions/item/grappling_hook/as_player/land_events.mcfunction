function mach:item/grappling_hook/find_distance/init
execute if score $strength delta.api.launch matches 30000.. run scoreboard players set $strength delta.api.launch 30000
function delta:api/launch_looking

stopsound @s player mach:item.grapple.use
playsound mach:item.grapple.return player @s ~ ~ ~ 100 1.6

function mach:item/grappling_hook/as_item/uncast_model

tag @s remove me 