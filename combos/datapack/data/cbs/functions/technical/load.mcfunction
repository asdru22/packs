scoreboard objectives add cbs.clicks dummy
scoreboard objectives add cbs.dummy dummy
scoreboard objectives add cbs.dummy2 dummy
scoreboard objectives add cbs.combo_timer dummy
scoreboard objectives add cbs.stamina dummy
scoreboard objectives add cbs.stamina_timer dummy

scoreboard objectives add cbs.slot.old dummy
scoreboard objectives add cbs.slot.old dummy

scoreboard objectives add cbs.players dummy
scoreboard objectives add cbs.id dummy

scoreboard objectives add cbs.damage_recieved minecraft.custom:minecraft.damage_taken
scoreboard objectives add cbs.death deathCount
scoreboard objectives add cbs.stat.range dummy
scoreboard objectives add cbs.stat.max_stamina dummy

scoreboard objectives add cbs.combo.leap dummy
scoreboard objectives add cbs.combo.charge dummy

scoreboard objectives add cbs.effect.protection dummy
scoreboard objectives add cbs.effect.invisibility dummy
scoreboard objectives add cbs.effect.blindness dummy
scoreboard objectives add cbs.effect.charge dummy

scoreboard players set #5 cbs.dummy 5
scoreboard players set #10 cbs.dummy 10
scoreboard players set #100 cbs.dummy 100
scoreboard players set #1000 cbs.dummy 1000

function cbs:technical/timers/second 

scoreboard objectives modify cbs.players displayname {"text":"Players","color":"gold","underlined":true}
scoreboard objectives modify cbs.players numberformat blank