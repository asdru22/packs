effect give @s[type=#asd:undead] instant_health 1 30 true
effect give @s[type=!#asd:undead] instant_damage 1 30 true
scoreboard players set .hit asd.d 0
scoreboard players set magic.triggered asd.d 1
execute as @a[scores={asd.use_coas=1..}] run function asd:item/magic/as_player
function asd:entity/mob/when_hit
scoreboard players reset magic.triggered asd.d
## SPECIAL HIT EFFECTS
function asd:item/magic/hit_effects