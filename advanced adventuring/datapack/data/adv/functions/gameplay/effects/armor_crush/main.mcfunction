#execute store result score $duration adv.data run data get storage adv:storage root.temp.effects[{id:"armor_crush"}].duration
#execute store result score $amplifier adv.data run data get storage adv:storage root.temp.effects[{id:"armor_crush"}].lvl

execute store result storage adv:storage root.temp.effects[{id:"armor_crush"}].duration int 0.99 run data get storage adv:storage root.temp.effects[{id:"armor_crush"}].duration
## where the actual effect as the entity goes
particle crit ~ ~.77 ~ 0.5 0.5 0.5 0.02 7
##
execute if data storage adv:storage root.temp{effects:[{id:"armor_crush",duration:0}]} run function adv:gameplay/effects/armor_crush/remove