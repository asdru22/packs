#FX
particle flame ~ ~ ~ 0.1 0.3 0.1 0.1 5
particle smoke ~ ~ ~ 0.1 0.3 0.1 0.05 3
playsound minecraft:block.fire.extinguish player @a[distance=..10] ~ ~ ~ 0.8 2

#Damage
execute if data entity @s HandItems[-1].tag.advm.Armor.Magic run function adv:entity/mob/defense/magic/blunt
execute store result score @s smithed.damage run scoreboard players operation $damage adv.data /= 10 adv.data
function #smithed.damage:entity/apply
data merge entity @s {Fire:60s}

scoreboard players set $kill adv.data 1