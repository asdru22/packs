scoreboard players operation @s adv.data -= $health adv.data
scoreboard players operation @s adv.data -= $heal adv.data

attribute @s[scores={adv.data=128..}] minecraft:generic.max_health modifier add 5-0-3-3-7 "healing_128" -12.8 add
scoreboard players remove @s[scores={adv.data=128..}] adv.data 128
attribute @s[scores={adv.data=64..}] minecraft:generic.max_health modifier add 5-0-3-3-6 "healing_64" -6.4 add
scoreboard players remove @s[scores={adv.data=64..}] adv.data 64
attribute @s[scores={adv.data=32..}] minecraft:generic.max_health modifier add 5-0-3-3-5 "healing_32" -3.2 add
scoreboard players remove @s[scores={adv.data=32..}] adv.data 32
attribute @s[scores={adv.data=16..}] minecraft:generic.max_health modifier add 5-0-3-3-4 "healing_16" -1.6 add
scoreboard players remove @s[scores={adv.data=16..}] adv.data 16
attribute @s[scores={adv.data=8..}] minecraft:generic.max_health modifier add 5-0-3-3-3 "healing_8" -0.8 add
scoreboard players remove @s[scores={adv.data=8..}] adv.data 8
attribute @s[scores={adv.data=4..}] minecraft:generic.max_health modifier add 5-0-3-3-2 "healing_4" -0.4 add
scoreboard players remove @s[scores={adv.data=4..}] adv.data 4
attribute @s[scores={adv.data=2..}] minecraft:generic.max_health modifier add 5-0-3-3-1 "healing_2" -0.2 add
scoreboard players remove @s[scores={adv.data=2..}] adv.data 2
attribute @s[scores={adv.data=1..}] minecraft:generic.max_health modifier add 5-0-3-3-0 "healing_1" -0.1 add
scoreboard players remove @s[scores={adv.data=1..}] adv.data 1

effect give @s instant_health 1 24 true

tag @s add adv.player.heal
schedule function adv:entity/player/heal/schedule 2t replace