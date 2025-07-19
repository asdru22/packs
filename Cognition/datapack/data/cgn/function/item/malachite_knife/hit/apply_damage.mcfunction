$damage @s 5 player_attack by @p[nbt={UUID:$(owner)}]

$execute as @n[type=item_display,tag=cgn.malachite_knife,nbt={UUID:$(uuid)}] run function cgn:item/malachite_knife/hit/as_item