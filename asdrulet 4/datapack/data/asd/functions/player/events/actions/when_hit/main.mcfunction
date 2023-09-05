execute as @e[type=#asd:mobs] if score @s asd.mob_id = $hit asd.id run function asd:entity/mob/on_hit
execute if entity @s[advancements={asd:technical/player/when_hit={blocked_by_shield=true}}] run function asd:player/stats/defense/dmg_reduction
execute if entity @s[advancements={asd:technical/player/when_hit={blocked_by_shield=false}}] run function asd:player/events/actions/when_hit/dur
effect give @s instant_health 1 10 true