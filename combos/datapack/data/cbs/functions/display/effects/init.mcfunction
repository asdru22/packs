data remove storage cbs:storage root.temp.prefix
execute store result storage cbs:storage root.temp.prefix.id int 1 run scoreboard players get @s cbs.id
item modify entity @s enderchest.0 cbs:active_effects
data modify storage cbs:storage root.temp.prefix.text set from entity @s EnderItems[0].tag.display.Name 
execute if data storage cbs:storage root.temp.effects[] run function cbs:display/effects/modify with storage cbs:storage root.temp.prefix
execute unless data storage cbs:storage root.temp.effects[] run function cbs:display/effects/no_effects with storage cbs:storage root.temp.prefix