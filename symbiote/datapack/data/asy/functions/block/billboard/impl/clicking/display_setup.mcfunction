tag @s remove asy.setup 
data modify entity @s ArmorItems[3].tag.CustomModelData set from storage asy:storage root.temp.click.cmd
scoreboard players operation @s asy.id = .temp asy.data

#execute if data storage asy:storage root.temp{string:"crafting"}
#execute if data storage asy:storage root.temp{string:"content"}
#execute if data storage asy:storage root.temp{string:"credits"}