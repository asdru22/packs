tag @s remove nihility.setup
execute store result score hp nihility.data run data get entity @s HandItems[0].tag.nihility.health.val
execute if entity @s[tag=nihility.entity.trader_AI] run data modify entity @s ArmorItems[3].tag.nihility.health set from entity @s HandItems[0].tag.nihility.health
function nihility:entity/void_spawn/health_update