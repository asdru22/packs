data remove storage cotv:storage root.temp.actionbar.void_tolerance[-1]
scoreboard players remove .max cotv.dummy 1
execute if score .max cotv.dummy matches 1.. run function cotv:gui/void_tolerance/loop_del