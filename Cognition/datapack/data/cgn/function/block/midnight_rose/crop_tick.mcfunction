execute if block ~ ~ ~ melon_stem unless block ~ ~ ~ melon_stem[age=0] run return run function cgn:block/midnight_rose/grow
execute unless block ~ ~ ~ melon_stem run return run function cgn:block/midnight_rose/destroy
execute unless block ~ ~-1 ~ farmland run function cgn:block/midnight_rose/destroy