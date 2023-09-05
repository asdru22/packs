tag @s add tfp.has_book_y
execute on passengers if entity @s[type=marker] run data modify entity @s data.tfp.y set from storage tfp:storage root.temp.item.tag.display.Name
execute on passengers if entity @s[type=block_display] run data modify entity @s block_state.Properties.slot_1_occupied set value "true"

function tfp:block/mystic_bookshelf/books/generic