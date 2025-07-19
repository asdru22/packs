advancement revoke @s only cgn:technical/player_hurt_entity/emberlash
data remove storage cgn:macro root
# charge
execute store result score $charge cgn.dummy run data get entity @s SelectedItem.components."minecraft:custom_data".cgn.charge
execute store result storage cgn:macro root.charge int 1 run scoreboard players remove $charge cgn.dummy 1
# amount
execute store result score $amount cgn.dummy run data get entity @s SelectedItem.components."minecraft:attribute_modifiers".modifiers[{id:"minecraft:base_attack_damage"}].amount 100
execute store result storage cgn:macro root.amount double 0.01 run scoreboard players remove $amount cgn.dummy 20 
function cgn:item/emberlash/decrease_charge with storage cgn:macro root