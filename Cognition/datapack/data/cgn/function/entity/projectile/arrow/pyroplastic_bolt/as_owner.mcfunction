data modify storage cgn:macro root.owner set from entity @s UUID

scoreboard players operation $temp cgn.dummy = @s cgn.using_item

scoreboard players add $temp cgn.dummy 10

execute if entity @s[scores={cgn.used_crossbow=1..}] run scoreboard players set $temp cgn.dummy 40

scoreboard players operation $temp cgn.dummy < #50 cgn.dummy

execute store result storage cgn:macro root.dist float 0.5 run scoreboard players get $temp cgn.dummy
execute store result storage cgn:macro root.offset float 0.25 run scoreboard players get $temp cgn.dummy

function cgn:entity/projectile/arrow/pyroplastic_bolt/item_display with storage cgn:macro root