function srn:technical/string_uuid/init
data modify storage srn:storage root.temp.player set value {UUID:[I;0,0,0,0],name:"null"}
data modify storage srn:storage root.temp.player.UUID set from entity @s UUID
data modify storage srn:storage root.temp.player.name set from storage srn:storage root.temp.name