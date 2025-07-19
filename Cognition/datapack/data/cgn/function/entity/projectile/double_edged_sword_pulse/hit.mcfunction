# hit enemy
$execute if entity @s[nbt=!{UUID:$(owner)}] run damage @s 11 player_attack by @p[nbt={UUID:$(owner)}]