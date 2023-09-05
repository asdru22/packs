data modify entity @s HandItems[0].tag set from storage nihility:storage root.temp.item.tag.nihility.QuiverItems[0].tag
execute store result score count nihility.data run data get storage nihility:storage root.temp.item.tag.nihility.QuiverItems[0].Count
scoreboard players add count nihility.data 1 
execute store result entity @s HandItems[0].Count byte 1 run scoreboard players get count nihility.data

data modify entity @s HandItems[0].id set from storage nihility:storage root.temp.item.tag.nihility.QuiverItems[0].id
data modify entity @s HandItems[0].tag.nihility set from storage nihility:storage root.temp.item.tag.nihility
data modify entity @s HandItems[0].tag.nihility.IsArrow set value 1b
data modify entity @s HandItems[0].tag.smithed set from storage nihility:storage root.temp.item.tag.smithed

item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:0b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.0 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:1b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.1 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:2b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.2 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:3b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.3 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:4b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.4 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:5b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.5 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:6b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.6 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:7b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.7 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:8b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.8 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:9b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.9 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:10b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.10 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:11b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.11 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:12b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.12 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:13b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.13 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:14b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.14 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:15b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.15 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:16b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.16 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:17b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.17 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:18b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.18 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:19b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.19 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:20b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.20 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:21b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.21 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:22b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.22 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:23b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.23 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:24b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.24 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:25b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.25 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:26b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.26 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:27b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.27 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:28b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.28 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:29b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.29 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:30b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.30 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:31b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.31 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:32b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.32 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:33b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.33 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:34b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.34 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:35b,tag:{smithed:{id:"nihility:quiver"}}}]}] container.35 from entity @s weapon.mainhand
item replace entity @a[tag=nihility.me,nbt={Inventory:[{Slot:-106b,tag:{smithed:{id:"nihility:quiver"}}}]}] weapon.offhand from entity @s weapon.mainhand

kill @s