#load full actionbar
data modify storage cotv:storage root.temp.actionbar.void_tolerance set value ['{"translate":"gui.cotv.void_tolerance.bar","color":"#9728FF"}','{"translate":"gui.cotv.void_tolerance.bar","color":"#9728FF"}','{"translate":"gui.cotv.void_tolerance.bar","color":"#9728FF"}','{"translate":"gui.cotv.void_tolerance.bar","color":"#9728FF"}','{"translate":"gui.cotv.void_tolerance.bar","color":"#9728FF"}','{"translate":"gui.cotv.void_tolerance.bar","color":"#9728FF"}','{"translate":"gui.cotv.void_tolerance.bar","color":"#9728FF"}','{"translate":"gui.cotv.void_tolerance.bar","color":"#9728FF"}','{"translate":"gui.cotv.void_tolerance.bar","color":"#9728FF"}','{"translate":"gui.cotv.void_tolerance.bar","color":"#9728FF"}']
scoreboard players operation .step cotv.dummy = @s cotv.void_tolerance
scoreboard players operation .step cotv.dummy /= const.100 cotv.dummy
scoreboard players set .max cotv.dummy 10
scoreboard players operation .max cotv.dummy -= .step cotv.dummy
scoreboard players operation .step cotv.dummy = .max cotv.dummy

execute if score .max cotv.dummy matches 1.. run function cotv:gui/void_tolerance/loop_del
execute if score .step cotv.dummy matches 1.. run function cotv:gui/void_tolerance/loop_add

execute if entity @s[tag=!cotv.void_tolerance.debuff] run data modify storage cotv:storage root.temp.actionbar.void_tolerance insert 5 value '{"translate":"gui.cotv.void_tolerance.heart_of_ender","color":"white"}'

execute if entity @s[tag=cotv.void_tolerance.debuff.shulker] run data modify storage cotv:storage root.temp.actionbar.void_tolerance insert 5 value '{"translate":"gui.cotv.void_tolerance.shulker_shell","color":"white"}'
execute if entity @s[tag=cotv.void_tolerance.debuff.eye] run data modify storage cotv:storage root.temp.actionbar.void_tolerance insert 5 value '{"translate":"gui.cotv.void_tolerance.ender_eye","color":"white"}'
execute if entity @s[tag=cotv.void_tolerance.debuff.dragon] run data modify storage cotv:storage root.temp.actionbar.void_tolerance insert 5 value '{"translate":"gui.cotv.void_tolerance.dragon_breath","color":"white"}'
execute if entity @s[tag=cotv.void_tolerance.debuff.crystal] run data modify storage cotv:storage root.temp.actionbar.void_tolerance insert 5 value '{"translate":"gui.cotv.void_tolerance.end_crystal","color":"white"}'