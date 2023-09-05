advancement revoke @s only nihility:technical/player/hit_void_spawn
execute store result score damage nihility.data run data get entity @s SelectedItem.tag.nihility.stats.damage 
scoreboard players operation damage nihility.data *= @s nihility.dmg_dealt
scoreboard players operation damage nihility.data /= 10 nihility.data
scoreboard players reset @s nihility.dmg_dealt
execute as @e[type=#nihility:void_base,distance=..6,tag=nihility.void_spawn,nbt={HurtTime:10s}] at @s run function nihility:entity/player/hit_void_spawn/damage