scoreboard players operation $id var = @s id

execute if entity @s[advancements={a:technical/combat/player_hurt_entity={melee_hit=true}}] run function a:combat/player/hurt_entity/melee
execute if entity @s[advancements={a:technical/combat/player_hurt_entity={ranged_hit=true}}] run data modify storage a:data root.hit set value {type:"ranged",icon:"🏹"}
execute if entity @s[advancements={a:technical/combat/player_hurt_entity={magic_hit=true}}] run data modify storage a:data root.hit set value {type:"magic",icon:"⚗"}
execute in overworld positioned 0 -64 0 run function a:combat/player/equipment/get

function a:combat/player/equipment/mainhand_compatible

function a:combat/stats/get/active
# half damage if low stamina
execute if score @s stat.stamina.current matches ..1 run scoreboard players operation $damage var /= 10 const
# set hit element
data modify storage a:data root.hit.element set from storage a:data root.equipment.mainhand.element
execute store result storage a:data root.hit.elemental_damage int 10000 run data get storage a:data root.equipment.mainhand.elemental_damage

# damage score to storage
execute store result storage a:data root.hit.damage int 1 run scoreboard players get $damage var

execute as @e[type=#a:mobs,nbt={HurtTime:10s}] at @s run function a:combat/entity/hurt/check_player

advancement revoke @s only a:technical/combat/player_hurt_entity