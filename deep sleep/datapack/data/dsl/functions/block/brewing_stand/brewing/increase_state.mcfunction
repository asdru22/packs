############################################################
# Increases the state of the brewing stand
############################################################

execute unless entity @s[scores={dsl.dummy2=1..}] run function dsl:block/brewing_stand/brewing/start
execute if entity @s[scores={dsl.dummy2=1..}] store result block ~ ~ ~ BrewTime short 1 run scoreboard players remove @s dsl.dummy2 1