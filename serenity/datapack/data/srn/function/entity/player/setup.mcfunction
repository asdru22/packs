execute store result score @s srn.id run scoreboard players add #ids srn.dummy 1

function srn:entity/player/preserve_scoreboards/set_storage

function srn:entity/player/preserve_scoreboards/new_player with storage srn:storage root.temp.player

function #srn:entity/player/setup