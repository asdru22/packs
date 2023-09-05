#FX
particle crit ~ ~ ~ 0.1 0.3 0.1 0.1 5
particle enchanted_hit ~ ~ ~ 0.1 0.3 0.1 0.05 3
playsound minecraft:entity.player.attack.sweep player @a[distance=..10]
#Damage
execute if data entity @s HandItems[-1].tag.advm.Armor.Melee run function adv:entity/mob/defense/melee/blunt
execute store result score @s smithed.damage run scoreboard players operation $damage adv.data /= 10 adv.data
function #smithed.damage:entity/apply/armor

scoreboard players set $has_hit adv.data 1