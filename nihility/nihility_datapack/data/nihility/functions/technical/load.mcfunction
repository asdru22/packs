tellraw @a [{"text":"[!] ","color":"yellow"},{"text":"Nihility loaded!","color":"#007069"}]

scoreboard objectives add nihility.data dummy
scoreboard objectives add nihility.id dummy
scoreboard objectives add nihility.id2 dummy
scoreboard objectives add nihility.books dummy
scoreboard objectives add nihility.void_score dummy
scoreboard objectives add nihility.x dummy
scoreboard objectives add nihility.z dummy
scoreboard objectives add nihility.vars dummy
scoreboard objectives add nihility.dash_timer dummy
scoreboard objectives add nihility.treeX dummy
scoreboard objectives add nihility.treeZ dummy

scoreboard objectives add nihility.use_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add nihility.dmg_dealt minecraft.custom:minecraft.damage_dealt_resisted
scoreboard objectives add nihility.trigger trigger

scoreboard objectives add nihility.use_bow minecraft.used:minecraft.bow
scoreboard objectives add nihility.use_crossbow minecraft.used:minecraft.crossbow

scoreboard objectives add nihility.stat.daylight dummy


schedule function nihility:technical/10_seconds 1t replace
schedule function nihility:technical/second 1t replace
schedule function nihility:technical/5_ticks 1t replace

scoreboard players set -46496 nihility.data -46496
scoreboard players set -1 nihility.data -1
scoreboard players set 2 nihility.data 2
scoreboard players set 10 nihility.data 10
scoreboard players set 100 nihility.data 100
scoreboard players set 360 nihility.data 360
scoreboard players set 1000 nihility.data 1000
scoreboard players set 10000 nihility.data 10000
scoreboard players set 57295 nihility.data 57295
scoreboard players set 100000 nihility.data 100000
scoreboard players set 1000000 nihility.data 1000000
scoreboard players set vsfix nihility.data 1

forceload remove 0 0 
forceload add 0 0
kill @e[type=marker,tag=nihility.trig]
summon marker 0 0 0 {Tags:["nihility.trig"]}

bossbar add nihility:global_void_score [{"text":"T","color":"#7f0886"},{"text":"h","color":"#751184"},{"text":"e ","color":"#6c1a82"},{"text":"D","color":"#632480"},{"text":"a","color":"#5a2d7f"},{"text":"r","color":"#50367d"},{"text":"k","color":"#47407b"},{"text":"n","color":"#3e4979"},{"text":"e","color":"#355378"},{"text":"s","color":"#2c5c76"},{"text":"s ","color":"#226574"},{"text":"A","color":"#196f72"},{"text":"p","color":"#196f71"},{"text":"p","color":"#216770"},{"text":"r","color":"#2a5e6e"},{"text":"o","color":"#32566d"},{"text":"a","color":"#3b4e6c"},{"text":"c","color":"#43456a"},{"text":"h","color":"#4c3d69"},{"text":"e","color":"#543468"},{"text":"s","color":"#5d2c66"},{"text":".","color":"#652365"},{"text":".","color":"#6e1b64"},{"text":".","color":"#771363"}]
bossbar set nihility:global_void_score color purple
bossbar set nihility:global_void_score max 100000
