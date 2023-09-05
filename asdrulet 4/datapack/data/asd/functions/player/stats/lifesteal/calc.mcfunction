scoreboard players operation lifesteal.val asd.d = s.damage asd.d
scoreboard players operation lifesteal.val asd.d *= s.lifesteal asd.d
scoreboard players operation lifesteal.val asd.d /= const.100 asd.d
scoreboard players operation @s asd.stat.health.current += lifesteal.val asd.d
scoreboard players operation heal.val asd.d = lifesteal.val asd.d
execute if score heal.val asd.d matches 1.. run function asd:player/displays/indicators/recive_health
execute if score @s asd.stat.health.current > @s asd.stat.health.max run scoreboard players operation @s asd.stat.health.current = @s asd.stat.health.max