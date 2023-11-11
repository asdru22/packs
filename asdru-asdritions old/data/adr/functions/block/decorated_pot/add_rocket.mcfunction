execute store result score $temp adr.dummy run data get block ~ ~ ~ item.tag.adr.fireworks
execute if score $temp adr.dummy matches ..63 run function adr:block/decorated_pot/insert_item