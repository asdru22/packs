loot replace block ~ ~ ~ container.1 loot asd:item/accessory/gleamerite
tellraw @s {"translate":"msg.accessory_slot","color":"gray"}

tellraw @s {"translate":"msg.tutorial.c1","color":"red","bold":true}
scoreboard players set @s asd.timer 40