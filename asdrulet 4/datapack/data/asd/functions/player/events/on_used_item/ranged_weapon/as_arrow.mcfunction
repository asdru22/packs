execute store result score projectile.uuid asd.d run data get entity @s Owner[0]
execute if score player.uuid asd.d = projectile.uuid asd.d run function asd:player/events/on_used_item/ranged_weapon/found_owner
execute if score t.lvl asd.d < lvl.mainhand asd.d run function asd:player/events/on_used_item/ranged_weapon/no_lvl_req
data merge entity @s {pickup:0b}