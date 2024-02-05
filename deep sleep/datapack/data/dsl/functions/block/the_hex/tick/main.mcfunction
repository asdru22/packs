############################################################
# Commands to run tickly for pottery tables
############################################################

# Break if there is no barrel
execute unless block ~ ~ ~ barrel run function dsl:block/the_hex/break/main
execute if block ~ ~ ~ barrel[open=true] run function dsl:block/the_hex/tick/open
execute if entity @s[tag=dsl.the_hex.open] if block ~ ~ ~ barrel[open=false] run function dsl:block/the_hex/tick/close