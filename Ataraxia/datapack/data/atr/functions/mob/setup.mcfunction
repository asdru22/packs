data modify storage atr:storage root.temp.mob set from entity @s ArmorItems[3].tag.atr
execute store result score @s atr.stat.current_health run data get storage atr:storage root.temp.mob.health
execute store result score @s atr.stat.max run data get storage atr:storage root.temp.mob.health
execute summon text_display run function atr:mob/text_display_setup

tag @s remove atr.setup