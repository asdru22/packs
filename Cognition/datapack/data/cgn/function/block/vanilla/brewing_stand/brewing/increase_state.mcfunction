############################################################
# Increases the state of the brewing stand
############################################################

execute unless entity @s[scores={cgn.dummy2=1..}] run function cgn:block/vanilla/brewing_stand/brewing/start
execute if entity @s[scores={cgn.dummy2=1..}] store result block ~ ~ ~ BrewTime short 1 run scoreboard players remove @s cgn.dummy2 1