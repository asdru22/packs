data modify storage a:data root.hit set value {type:"melee","icon":"🗡"}
execute unless predicate a:combat/player/cannot_crit run data modify storage a:data root.hit.vanilla_crit set value true
scoreboard players operation @s stat.stamina.current -= @s stat.stamina.consumed
function a:combat/stats/stamina/remove