execute if score #custom_mob_cap dsl.dummy matches 1.. run scoreboard players remove #custom_mob_cap dsl.dummy 1

execute on passengers run function dsl:entity/item_display_riding/death/display with entity @s item.tag.dsl

tp @s ~ -1000 ~
kill @s