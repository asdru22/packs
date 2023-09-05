scoreboard players operation $id adv.data = @s adv.id
execute as @a[gamemode=!spectator,distance=..55,nbt=!{Health:0.0f}] run function adv:gameplay/item/melee/flail/id_check
execute facing entity @p[distance=..55,gamemode=!spectator,nbt=!{Health:0.0f},scores={adv.data=0}] eyes run function adv:gameplay/item/melee/flail/tp_to_player
scoreboard players set $kill adv.data 0
data modify storage adv:storage root.temp.item set from entity @s item
execute as @a[dx=0,gamemode=!spectator] if score $id adv.data = @s adv.id run function adv:gameplay/item/melee/flail/to_owner
execute if score $kill adv.data matches 1 run kill @s