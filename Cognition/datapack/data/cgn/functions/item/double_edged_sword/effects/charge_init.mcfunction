scoreboard players set #targets cgn.dummy 10
execute as @e[type=!#srn:inaniamte,distance=..10,nbt={HurtTime:0s}] facing entity @s eyes run function cgn:item/double_edged_sword/effects/charge_targets_check

tag @s remove cgn.double_edged_sword.charged