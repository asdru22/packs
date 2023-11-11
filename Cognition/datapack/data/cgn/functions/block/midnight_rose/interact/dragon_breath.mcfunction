particle minecraft:happy_villager ~ ~0.3 ~ 0.2 0.2 0.2 0 5

execute if predicate srn:chance/1_3 if block ~ ~ ~ melon_stem[age=0] run setblock ~ ~ ~ melon_stem[age=1]

execute as @p[advancements={srn:player_interacted_with_entity/interaction={interact=true}},gamemode=!creative] run function cgn:block/midnight_rose/interact/consume_dragon_breath