############################################################
# Increases the state of the brewing stand
############################################################

execute unless entity @s[scores={srn.dummy2=1..}] run function srn:block/brewing_stand/brewing/start
execute if entity @s[scores={srn.dummy2=1..}] store result block ~ ~ ~ BrewTime short 1 run scoreboard players remove @s srn.dummy2 1