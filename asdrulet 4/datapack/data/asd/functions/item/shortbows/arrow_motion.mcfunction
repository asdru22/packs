data modify entity @s Owner set from storage asd:data root.temp.UUID
data modify entity @s Motion set from storage asd:data root.temp.Pos
tag @s remove asd.temp_arrow
function asd:player/events/on_used_item/ranged_weapon/as_arrow