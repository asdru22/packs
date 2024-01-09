scoreboard players add @s cbs.dummy 1
execute rotated 0 -90 run function cbs:items/thundering_staff/thunder/summon
kill @s[scores={cbs.dummy=100..}]