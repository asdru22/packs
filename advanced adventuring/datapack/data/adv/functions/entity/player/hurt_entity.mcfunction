data remove storage adv:storage root.temp.attack
execute if entity @s[advancements={adv:technical/player_hurt_entity={typeless=true}}] run data modify storage adv:storage root.temp.attack.type set value "melee"
execute if entity @s[advancements={adv:technical/player_hurt_entity={typeless=true}},scores={adv.full_swing_check=0}] run data modify storage adv:storage root.temp.attack.charged set value 1b
scoreboard players set @s adv.full_swing_check 200
execute store result score $atk_spd adv.data run attribute @s generic.attack_speed get 11
scoreboard players operation @s adv.full_swing_check /= $atk_spd adv.data
# Adv mob case
scoreboard players operation $damage adv.data = @s adv.damage_dealt_resisted
#
execute if data storage adv:storage root.temp.attack{type:"melee"} run function adv:entity/player/stats/damage/melee/abilities
#
execute as @e[type=!#adv:not_mob,nbt={HurtTime:10s}] run function adv:entity/mob/when_hit
scoreboard players reset @s adv.damage_dealt_resisted
#
advancement revoke @s only adv:technical/player_hurt_entity