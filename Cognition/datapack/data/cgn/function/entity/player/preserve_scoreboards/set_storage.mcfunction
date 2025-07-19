function cgn:technical/string_uuid/get_player_name
data modify storage cgn:storage root.temp.player set value {UUID:[I;0,0,0,0],name:"null"}
data modify storage cgn:storage root.temp.player.UUID set from entity @s UUID
data modify storage cgn:storage root.temp.player.name set from storage cgn:storage root.temp.name