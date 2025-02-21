execute as @e[distance=..32,type=#fhats:wears_helmet,tag=!smithed.strict] if items entity @s armor.head #fhats:hat_base[minecraft:custom_data~{fhats:{hat:true}}] run function fhats:item/_generic_hat/new_id

advancement revoke @s only fhats:technical/entity_equip_hat