data modify block ~ ~ ~ item.tag.adr.fireworks insert -1 from storage adr:storage root.temp.item
particle minecraft:dust_plume ~ ~1.33 ~ 0.1 0.1 0.1 0.01 10
item modify entity @s[gamemode=!creative] weapon.mainhand adr:change_count/-1