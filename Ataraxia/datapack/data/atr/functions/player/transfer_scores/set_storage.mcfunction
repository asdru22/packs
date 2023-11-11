function atr:technical/string_uuid/init
data modify storage atr:storage root.temp.player set value {UUID:[I;0,0,0,0],name:"null"}
data modify storage atr:storage root.temp.player.UUID set from entity @s UUID
data modify storage atr:storage root.temp.player.name set from storage atr:storage root.temp.name