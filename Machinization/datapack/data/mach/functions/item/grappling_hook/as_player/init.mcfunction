execute if entity @s[gamemode=!creative] run function mach:item/grappling_hook/as_item/durability

## sounds
playsound minecraft:item.crossbow.shoot player @s
playsound mach:item.grapple.use player @s ~ ~ ~ 200 2
## data transfer
data modify storage mach:storage root.temp.item.rotation set from entity @s Rotation
data modify storage mach:storage root.temp.item.uuid set from entity @s UUID
data modify storage mach:storage root.temp.item.pmotion set from entity @s Motion

## kill pre existing snowballs with same owner and spawn a new one
scoreboard players operation $temp_id mach.data = @s mach.data
execute as @e[type=#mach:grappling_hook_components,tag=mach.grapple.hook] if score @s mach.data = $temp_id mach.data run kill @s

execute anchored eyes positioned ^ ^ ^ run summon snowball ^ ^ ^0.85 {Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:880001}},Tags:["mach.grapple.hook","mach.tick","mach.setup"],Passengers:[{id:"minecraft:marker",Tags:["mach.grapple.hook","mach.tick","mach.setup"]}]}

## get motion vector
execute positioned 0.0 0 0.0 positioned ^ ^ ^2 as 00000016-0000-0042-0000-001600000042 run function mach:item/spring_loaded_crossbow/use/get_motion

execute as @e[type=#mach:grappling_hook_components,tag=mach.setup,tag=mach.grapple.hook,sort=nearest,limit=2] at @s run function mach:item/grappling_hook/as_player/diff_setups

execute unless data storage mach:storage root.temp.item.Slot run item modify entity @s weapon.mainhand mach:item/grappling_hook/cast
execute if data storage mach:storage root.temp.item.Slot run item modify entity @s weapon.offhand mach:item/grappling_hook/cast


tag @s add mach.item_cooldown