scoreboard players set @s cgn.leave_game 0

function cgn:entity/player/preserve_scoreboards/set_storage

function cgn:entity/player/preserve_scoreboards/get_data with storage cgn:storage root.temp.player

data modify storage cgn:storage root.temp.old_name set from storage cgn:storage root.temp.name
execute store result score #match cgn.dummy run data modify storage cgn:storage root.temp.old_name set from storage cgn:storage root.temp.t_name
execute if score #match cgn.dummy matches 1 run function cgn:entity/player/preserve_scoreboards/change_name