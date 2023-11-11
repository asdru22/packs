data modify storage atr:storage root.temp.death set from entity @s ArmorItems[3].tag.atr

execute as @p[advancements={atr:player_hurt_entity=true}] run function atr:technical/string_uuid/init
data modify storage atr:storage root.temp.death.player set from storage atr:storage root.temp.name
execute if data storage atr:storage root.temp.death.xp run function atr:display/pop_up/xp_dropped with storage atr:storage root.temp.death