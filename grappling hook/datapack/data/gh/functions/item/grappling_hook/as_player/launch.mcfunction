scoreboard players operation $strength delta.api.launch = @s gh.link
scoreboard players operation $strength delta.api.launch *= $INTENSITY gh.data
execute if score $cut gh.data matches 1 run scoreboard players operation $strength delta.api.launch /= $2 gh.data
execute if score $strength delta.api.launch matches 8000.. run scoreboard players set $strength delta.api.launch 8000
function delta:api/launch_looking
effect give @s levitation 1 255 true