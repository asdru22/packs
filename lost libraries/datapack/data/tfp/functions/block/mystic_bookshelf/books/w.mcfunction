tag @s add tfp.has_book_w
execute on passengers if entity @s[type=marker] run data modify entity @s data.tfp.w set from storage tfp:storage root.temp.item.tag.display.Name
execute on passengers if entity @s[type=block_display] run data modify entity @s block_state.Properties.slot_0_occupied set value "true"

function tfp:block/mystic_bookshelf/books/generic