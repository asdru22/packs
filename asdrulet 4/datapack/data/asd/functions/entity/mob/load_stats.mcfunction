execute store result score @s asd.stat.health.max run data get entity @s ArmorItems[3].tag.base.health 1
execute store result score @s asd.xp.current run data get entity @s ArmorItems[3].tag.base.xp 1
scoreboard players operation @s asd.stat.health.current = @s asd.stat.health.max 
function asd:entity/mob/update_hp_display