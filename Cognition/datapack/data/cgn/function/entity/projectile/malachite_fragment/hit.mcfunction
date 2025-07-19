$execute if entity @s[nbt=!{UUID:$(owner)}] run return run damage @s 5 player_attack by @p[nbt={UUID:$(owner)}]

scoreboard players add @s cgn.malachite_fragments_collected 1
execute if entity @s[scores={cgn.malachite_fragments_collected=10..}] run function cgn:entity/projectile/malachite_fragment/reform
playsound cgn:item.double_edged_sword.shard_hit player @a[distance=..16]
$kill @n[type=marker,tag=cgn.malachite_fragment,nbt={UUID:$(uuid)}]
# stop raycast
scoreboard players set $temp cgn.dummy -1