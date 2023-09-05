## copy UUID
## copy id
scoreboard players operation d.2 asd.d = @s asd.id
## check uuids
execute if score d.1 asd.d = d.0 asd.d as @e[type=#asd:projectiles,tag=asd.entity.temp.me,tag=!asd.entity.projectile.arrow.found_owner] run function asd:player/events/on_used_item/ranged_weapon/found_owner