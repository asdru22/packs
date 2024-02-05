## music_disc_hypocenter recipe
execute if data storage dsl:storage root.temp{recipes:[{tag:{dsl:{id:"disc_fragment_hypocenter"}},Slot:1b},{tag:{dsl:{id:"disc_fragment_hypocenter"}},Slot:9b},{id:"minecraft:quartz",Slot:10b},{tag:{dsl:{id:"disc_fragment_hypocenter"}},Slot:11b},{tag:{dsl:{id:"disc_fragment_hypocenter"}},Slot:19b}]} run function dsl:block/the_hex/crafting/create_output/music_disc_hypocenter
## b recipe
execute if data storage dsl:storage root.temp{recipes:[{id:"minecraft:air",Slot:1b},{id:"minecraft:air",Slot:9b},{id:"minecraft:air",Slot:10b},{id:"minecraft:air",Slot:11b},{id:"minecraft:air",Slot:19b}]} run function dsl:block/the_hex/crafting/create_output/b
