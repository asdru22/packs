data modify entity @s data.cgn set from storage cgn:storage root.temp.potion
tag @s add smithed.entity
tag @s add smithed.strict
$ride @s mount @n[type=potion,nbt={UUID:$(UUID)}]

tag @s add cgn.tick
tag @s add cgn.thrown_potion
tag @s add cgn.projectile
tag @s add cgn.projectile.no_timer