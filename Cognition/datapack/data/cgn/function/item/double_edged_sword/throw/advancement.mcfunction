advancement revoke @s only cgn:technical/consume_item/double_edged_sword
data remove storage cgn:storage root.temp.item

execute if items entity @s weapon.offhand #minecraft:swords[minecraft:custom_data~{cgn:{double_edged_sword:1b}}] run function cgn:item/double_edged_sword/throw/offhand
execute if items entity @s weapon.mainhand #minecraft:swords[minecraft:custom_data~{cgn:{double_edged_sword:1b}}] run function cgn:item/double_edged_sword/throw/mainhand

data remove storage cgn:macro root
data modify storage cgn:macro root.rotation set from entity @s Rotation

data modify storage cgn:storage root.temp.uuid set from entity @s UUID

execute store result score $temp cgn.dummy if entity @s[gamemode=creative]

execute anchored eyes positioned ^ ^ ^ summon item_display run function cgn:item/double_edged_sword/throw/as_item_display with storage cgn:macro root