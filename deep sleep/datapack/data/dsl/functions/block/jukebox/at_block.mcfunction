setblock ~ ~ ~ jukebox[has_record=true]
data modify block ~ ~ ~ RecordItem set from storage dsl:storage root.temp.item
## marker
execute align xyz unless entity @e[dx=0,type=marker,tag=dsl.jukebox] run summon marker ~0.5 ~0.5 ~0.5 {Tags:["dsl.jukebox","dsl.tick","dsl.block","smithed.strict"]} 
data modify storage dsl:storage root.temp.item.tag.dsl.consume_on_use set value true 
## discs
execute if data storage dsl:storage root.temp.item.tag.dsl{id:"music_disc_hypocenter"} run function dsl:block/jukebox/hypocenter/play

execute if data storage dsl:storage root.temp.item.tag.dsl{id:"music_disc_sunrise"} run function dsl:block/jukebox/sunrise/play