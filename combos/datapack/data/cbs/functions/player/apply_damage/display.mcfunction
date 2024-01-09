data remove storage cbs:storage root.temp.damage
execute store result storage cbs:storage root.temp.damage.amount float 0.1 run scoreboard players get @s cbs.damage_recieved
execute store result storage cbs:storage root.temp.damage.x double 0.1 run random value -5..5
execute store result storage cbs:storage root.temp.damage.y double 0.1 run random value 15..20
execute store result storage cbs:storage root.temp.damage.z double 0.1 run random value -5..5

function cbs:player/apply_damage/item with storage cbs:storage root.temp.damage

scoreboard players reset @s cbs.damage_recieved