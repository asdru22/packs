scoreboard players add @s asd.timer 1
scoreboard players operation .id asd.d = @s asd.id
scoreboard players operation s.damage asd.d = @s asd.damage.base
execute as @a if score @s asd.id = .id asd.d run tag @s add asd.player.owner

execute as @e[type=#asd:mobs,tag=asd.entity.mob,dx=0,limit=1,sort=nearest,nbt={HurtTime:0s}] positioned ~-0.89 ~-0.89 ~-0.89 if entity @s[dx=0] at @s run function asd:entity/technical/projectile/hit

execute as @a[tag=asd.player.owner,dx=0,limit=1,sort=nearest] positioned ~-0.89 ~-0.89 ~-0.89 if entity @s[dx=0] at @s run function asd:entity/technical/projectile/reach_player

execute if entity @s[tag=asd.entity.ice_shard] run function asd:entity/technical/projectile/projectiles/ice_shard/tick


tag @a[tag=asd.player.owner] remove asd.player.owner