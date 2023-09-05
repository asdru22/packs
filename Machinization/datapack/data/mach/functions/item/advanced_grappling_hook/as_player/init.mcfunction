execute if entity @s[gamemode=!creative] run function mach:item/advanced_grappling_hook/as_item/durability

## sounds
playsound minecraft:item.crossbow.shoot player @s
playsound mach:item.grapple.use player @s ~ ~ ~ 200 2

scoreboard players operation $id mach.data = @s mach.data

scoreboard players set $dist mach.data 100
execute anchored eyes positioned ^ ^ ^ run function mach:item/advanced_grappling_hook/as_player/cast

execute unless data storage mach:storage root.temp.item.Slot run item modify entity @s weapon.mainhand mach:item/advanced_grappling_hook/cast
execute if data storage mach:storage root.temp.item.Slot run item modify entity @s weapon.offhand mach:item/advanced_grappling_hook/cast