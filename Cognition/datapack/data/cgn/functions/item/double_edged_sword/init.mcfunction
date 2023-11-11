scoreboard players operation #temp cgn.dummy = @s srn.id
execute unless data storage srn:storage root.temp.item.Slot run data modify storage srn:storage root.temp.item.Slot set from entity @s SelectedItemSlot
execute if entity @s[gamemode=!creative] run function cgn:item/double_edged_sword/consume
execute store result score #gamemode cgn.dummy if entity @s[gamemode=creative]

execute anchored eyes positioned ^ ^ ^ summon item_display run function cgn:item/double_edged_sword/summon

playsound cgn:item.double_edged_sword.throw master @a[distance=..16]
