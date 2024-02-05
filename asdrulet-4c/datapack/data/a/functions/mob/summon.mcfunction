data merge entity @s {CanPickUpLoot:0b,Health:1000f,Tags:["tick"],Attributes:[{Name:"generic.max_health",Base:1000}],PersistenceRequired:1b}
$scoreboard players set @s stat.health.max $(health)
$scoreboard players set @s stat.health.current $(health)
$scoreboard players set @s stat.defense $(defense)
$scoreboard players set @s stat.damage $(damage)

$tag @s add element.$(element)
execute summon text_display run function a:mob/text_display
tag @s add setup

function a:mob/display/update 