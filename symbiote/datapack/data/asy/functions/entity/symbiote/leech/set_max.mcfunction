scoreboard players operation @s asy.symbiote_id = .id asy.data

execute if score .id asy.data matches 1 run scoreboard players set @s asy.max_symbiote 3
execute if score .id asy.data matches 2..4 run scoreboard players set @s asy.max_symbiote 1