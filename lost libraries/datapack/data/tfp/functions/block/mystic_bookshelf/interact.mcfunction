execute if data storage tfp:storage root.temp.item.tag.smithed{id:"tfp:book_w"} unless entity @s[tag=tfp.has_book_w] run function tfp:block/mystic_bookshelf/books/w
execute if data storage tfp:storage root.temp.item.tag.smithed{id:"tfp:book_y"} unless entity @s[tag=tfp.has_book_y] run function tfp:block/mystic_bookshelf/books/y
execute if data storage tfp:storage root.temp.item.tag.smithed{id:"tfp:book_v"} unless entity @s[tag=tfp.has_book_v] run function tfp:block/mystic_bookshelf/books/v
execute if data storage tfp:storage root.temp.item.tag.smithed{id:"tfp:book_e"} unless entity @s[tag=tfp.has_book_e] run function tfp:block/mystic_bookshelf/books/e
execute if data storage tfp:storage root.temp.item.tag.smithed{id:"tfp:book_r"} unless entity @s[tag=tfp.has_book_r] run function tfp:block/mystic_bookshelf/books/r
execute if data storage tfp:storage root.temp.item.tag.smithed{id:"tfp:book_n"} unless entity @s[tag=tfp.has_book_n] run function tfp:block/mystic_bookshelf/books/n

execute if entity @s[tag=tfp.has_book_w,tag=tfp.has_book_y,tag=tfp.has_book_v,tag=tfp.has_book_e,tag=tfp.has_book_r,tag=tfp.has_book_n] run function tfp:block/mystic_bookshelf/activate/init