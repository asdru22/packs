advancement revoke @s only cgn:technical/entity_hurt_player/soulmender
execute if entity @s[scores={cgn.using_item=..15,cgn.electroplasm.current=20..}] run return run function cgn:item/soulmender/activate

execute if entity @s[gamemode=creative,scores={cgn.using_item=..15}] run function cgn:item/soulmender/activate