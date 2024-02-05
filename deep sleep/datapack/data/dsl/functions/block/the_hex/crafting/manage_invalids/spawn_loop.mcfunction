scoreboard players remove @s dsl.dummy 1
$execute as @p[tag=dsl.inside_the_hex_gui,gamemode=!spectator] at @s run summon item ~ ~ ~ {Item:{id:"$(id)",tag:$(tag),Count:$(Count)}}
data remove storage dsl:storage root.temp.export_items[0]
execute unless data storage dsl:storage root.temp.export_items[0].tag run data modify storage dsl:storage root.temp.export_items[0].tag set value "{}"
execute if entity @s[scores={dsl.dummy=1..}] run function dsl:block/the_hex/crafting/manage_invalids/spawn_loop with storage dsl:storage root.temp.export_items[0]