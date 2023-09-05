data modify entity @s HandItems[0].tag.CustomModelData set value 6901020
playsound nihility:entity.dechanter.attack neutral @a
execute positioned ^ ^ ^.45 as @a[gamemode=!creative,gamemode=!spectator,nbt={OnGround:1b}] run function nihility:entity/dechanter/hit_player