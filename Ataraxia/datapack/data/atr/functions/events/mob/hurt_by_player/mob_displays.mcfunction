execute store result storage atr:storage root.temp.mob.health int 1 run scoreboard players get @s atr.stat.current_health
data modify storage atr:storage root.temp.mob.id set from entity @s ArmorItems[3].tag.atr.id
execute on passengers if entity @s[type=text_display] run function atr:display/mob_name with storage atr:storage root.temp.mob