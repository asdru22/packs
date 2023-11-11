data modify storage adr:storage root.temp.fireworks set from entity @s Item.tag.adr.fireworks
function adr:block/decorated_pot/destroy/make_item with storage adr:storage root.temp.fireworks[0]

kill @s