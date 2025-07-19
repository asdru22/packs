scoreboard players set $strength player_motion.api.launch 230
$scoreboard players operation $strength player_motion.api.launch -= @n[type=item_display,tag=cgn.double_edged_sword,nbt={UUID:$(uuid)}] cgn.animation_timer 

scoreboard players operation $strength player_motion.api.launch < #64 cgn.dummy

scoreboard players operation $strength player_motion.api.launch *= #256 cgn.dummy

execute rotated as @s anchored eyes facing ^ ^ ^-1 run function player_motion:api/launch_looking

execute if entity @s[gamemode=!creative] run function cgn:item/double_edged_sword/recoil/damage_shield

playsound minecraft:item.shield.block player @a[distance=..16]

scoreboard players set $recoil cgn.dummy 1 