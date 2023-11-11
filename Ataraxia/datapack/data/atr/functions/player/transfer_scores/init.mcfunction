scoreboard players set @s atr.leave_game 0

function atr:player/transfer_scores/set_storage

function atr:player/transfer_scores/get_data with storage atr:storage root.temp.player

data modify storage atr:storage root.temp.player.old_name set from storage atr:storage root.temp.player.name
execute store result score #match atr.int run data modify storage atr:storage root.temp.player.old_name set from storage atr:storage root.temp.t_player.name
execute if score #match atr.int matches 1 run function atr:player/transfer_scores/change_name