$item replace block ~ ~ ~ container.0 from entity @s $(slot)
data modify storage a:data root.item set from block ~ ~ ~ Items[0]

execute if data storage a:data root.item.tag.a.element run function a:item/modify/lore/get_element_color

function a:item/modify/lore/build with storage a:data root.item.tag.a

$item modify entity @s $(slot) a:copy_lore