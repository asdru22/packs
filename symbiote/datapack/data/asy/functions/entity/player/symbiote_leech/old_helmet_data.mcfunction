data modify storage asy:storage root.temp.item.tag set value {Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],HideFlags:127,Unbreakable:1b}
data modify storage asy:storage root.temp.item.tag.asy.OldHelmet set from entity @s Inventory[{Slot:103b}]
data remove storage asy:storage root.temp.item.tag.asy.OldHelmet.Slot
data modify storage asy:storage root.temp.item.tag.display.color set from storage asy:storage root.temp.item.tag.asy.OldHelmet.tag.display.color

function asy:entity/symbiote/helmet_handling

item replace entity @s armor.head from block 3000000 0 2014 container.0