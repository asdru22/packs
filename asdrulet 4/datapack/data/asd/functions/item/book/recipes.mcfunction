execute if score @s asd.recipe matches 1 run function asd:recipes/pointy_dripstone_check
execute if score @s asd.recipe matches 2 run function asd:recipes/silver_sword_check
execute if score @s asd.recipe matches 3 run function asd:recipes/wooden_shortbow_check
scoreboard players reset @s asd.recipe
scoreboard players enable @s asd.recipe