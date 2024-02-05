function dsl:commands/setblock/the_hex
scoreboard players reset $found dsl.dummy
data modify storage dsl:storage root.temp.item.tag.dsl.consume_on_use set value true 

advancement grant @s only dsl:dsl/use_imaginexus