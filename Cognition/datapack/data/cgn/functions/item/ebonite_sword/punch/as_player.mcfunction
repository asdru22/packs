data modify storage cgn:storage root.temp.hit_item set from entity @s SelectedItem 
data modify storage cgn:storage root.temp.rotation set from entity @s Rotation
scoreboard players reset #charged cgn.dummy
execute if entity @s[tag=cgn.charged_armor_jump] run scoreboard players set #charged cgn.dummy 1
tag @s[tag=cgn.charged_armor_jump] remove cgn.charged_armor_jump_attack