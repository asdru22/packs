tag @s add cgn.tick
tag @s add cgn.projectile.no_timer
tag @s add cgn.projectile
tag @s add cgn.projectile.setup

execute if items entity @s contents arrow[minecraft:custom_data~{cgn:{projectile:1b}}] run function cgn:entity/projectile/arrow/custom