execute store result entity @s Air short 1 run scoreboard players get #motion_fix var
#execute if entity @s[nbt={Motion:[0.0d,0.0d,0.0d]}] run function a:particle/kill/as_item