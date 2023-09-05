scoreboard players operation @s asd.id = d.2 asd.d
tag @s add asd.arrow.has_owner
tag @s add asd.entity
tag @s add asd.1second
##example of use
execute unless score s.arrow_speed asd.d matches 10 run function asd:player/events/on_used_item/ranged_weapon/arrow_speed