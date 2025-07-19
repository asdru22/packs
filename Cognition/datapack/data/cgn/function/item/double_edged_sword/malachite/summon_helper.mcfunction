data modify entity @s Rotation set from storage cgn:storage root.temp.rotation
scoreboard players set $count cgn.dummy 5
execute rotated as @s rotated ~10 ~ run function cgn:item/double_edged_sword/malachite/summon_fragment
scoreboard players set $count cgn.dummy 5
execute rotated as @s rotated ~-10 ~ run function cgn:item/double_edged_sword/malachite/summon_fragment_cw

kill @s