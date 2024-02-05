execute unless entity @s[predicate=a:particle/has_vehicle] run function a:particle/kill/as_item_display

data modify entity @s item.tag.CustomModelData set from entity @s item.tag.frames[0]
data remove entity @s item.tag.frames[0]

execute unless data entity @s item.tag.frames[] run function a:particle/kill/as_item_display