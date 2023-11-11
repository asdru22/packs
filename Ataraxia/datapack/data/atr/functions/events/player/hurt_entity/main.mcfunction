tellraw @p[tag=atr.debug] ["",{"text":"[DEBUG] ","bold":true,"color":"dark_aqua"},{"text":"Start","color":"white"}]

data modify storage atr:storage root.temp.attack set value {crit:false,color:"#BB0000"}
execute if entity @s[advancements={atr:player_hurt_entity={melee_hit=true}}] run data merge storage atr:storage {root:{temp:{attack:{type:"melee",icon:"🗡"}}}}
execute if entity @s[advancements={atr:player_hurt_entity={ranged_hit=true}}] run data merge storage atr:storage {root:{temp:{attack:{type:"ranged",icon:"🏹"}}}}
execute if entity @s[advancements={atr:player_hurt_entity={magic_hit=true}}] run data merge storage atr:storage {root:{temp:{attack:{type:"magic",icon:"₪"}}}}

function atr:player/get_equipment/init
function atr:player/get_equipment/active_stats

execute as @e[type=#atr:affected,tag=atr.affected,nbt={HurtTime:10s}] at @s run function atr:events/mob/hurt_by_player/init

execute if data storage atr:storage root.temp.attack{killing_blow:true} run function atr:events/player/kill_mob/get_xp