$execute if entity @s[tag=cgn.malachite_fragment.return] anchored eyes facing entity @p[nbt={UUID:$(owner)}] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.172 ~ ~
tp @s[tag=!cgn.malachite_fragment.return] ^ ^ ^0.2

execute if entity @s[scores={cgn.animation_timer=..95}] positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=!#cgn:inanimate,predicate=cgn:entity_properties/hostile_target,dx=0] at @s run function cgn:entity/projectile/malachite_fragment/hit with storage cgn:temp root.malachite_fragment