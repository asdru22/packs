scoreboard players set @s srn.leave_game 0

function srn:entity/player/preserve_scoreboards/set_storage

function srn:entity/player/preserve_scoreboards/get_data with storage srn:storage root.temp.player

data modify storage srn:storage root.temp.player.old_name set from storage srn:storage root.temp.player.name
execute store result score #match srn.dummy run data modify storage srn:storage root.temp.player.old_name set from storage srn:storage root.temp.t_player.name
execute if score #match srn.dummy matches 1 run function srn:entity/player/preserve_scoreboards/change_name