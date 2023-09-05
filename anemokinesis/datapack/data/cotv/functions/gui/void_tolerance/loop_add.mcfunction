data modify storage cotv:storage root.temp.actionbar.void_tolerance insert -1 value '{"translate":"gui.cotv.void_tolerance.bar","color":"white"}'
scoreboard players remove .step cotv.dummy 1
execute if score .step cotv.dummy matches 1.. run function cotv:gui/void_tolerance/loop_add