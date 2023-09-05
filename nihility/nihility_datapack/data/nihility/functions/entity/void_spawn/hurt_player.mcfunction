execute if entity @s[advancements={nihility:technical/player/voidspawn_hurt_player={void_zombie=true}}] run scoreboard players set @s smithed.damage 6


advancement revoke @s only nihility:technical/player/voidspawn_hurt_player
tag @s add nihility.voidspawn_death
function #smithed.damage:entity/apply
tag @s remove nihility.voidspawn_death