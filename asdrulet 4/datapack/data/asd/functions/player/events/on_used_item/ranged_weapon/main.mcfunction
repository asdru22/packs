execute if entity @s[scores={asd.use_trident=1..}] run function asd:player/events/on_used_item/ranged_weapon/trident
tag @s add asd.me
execute if data storage asd:data root.temp.equipment.mainhand.tag.base.Durability run function asd:item/custom/durability/init
function asd:player/stats/get/get_items
function asd:player/stats/arrow_speed/get
scoreboard players operation t.lvl asd.d = @s asd.xp.level
execute store result score player.uuid asd.d run data get entity @s UUID[0]
execute as @e[type=#asd:projectiles,tag=!asd.arrow.has_owner] run function asd:player/events/on_used_item/ranged_weapon/as_arrow

## custom crossbow items
execute if entity @s[scores={asd.use_crossbow=1..},predicate=asd:item/crossbow_melee] run function asd:item/crossbow/replace
## reset scores
scoreboard players reset @s asd.use_bow
scoreboard players reset @s asd.use_crossbow
scoreboard players reset @s asd.use_trident
tag @s remove asd.me