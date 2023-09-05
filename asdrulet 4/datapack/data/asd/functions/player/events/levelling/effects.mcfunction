title @s title [{"text":"L","color":"blue"},{"text":"e","color":"#7f7ffe"},{"text":"v","color":"#bfbffe"},{"text":"e","color":"white"},{"text":"l ","color":"white"},{"text":"u","color":"#bfbffe"},{"text":"p","color":"#7f7ffe"},{"text":"!","color":"blue"}]
scoreboard players operation d.0 asd.xp.level = @s asd.xp.level 
scoreboard players remove d.0 asd.xp.level 1
title @s subtitle [{"translate":"display.asd.levelup_subtitle","with":[{"score":{"objective": "asd.xp.level","name": "d.0"},"color":"blue"},{"score":{"objective": "asd.xp.level","name": "@s"},"color":"blue"}]}]