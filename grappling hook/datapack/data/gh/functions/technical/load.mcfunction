scoreboard objectives add gh.data dummy
scoreboard objectives add gh.using_item dummy
scoreboard objectives add gh.using_item2 dummy
scoreboard objectives add gh.link dummy

scoreboard objectives add gh.dmg_blocked minecraft.custom:minecraft.damage_blocked_by_shield

scoreboard players set $10 gh.data 10
scoreboard players set $2 gh.data 2

kill 611910bc-eec4-4d81-9d97-8d8275a22679
summon marker 0.0 0 0.0 {UUID: [I;1629032636,-289124991,-1651012222,1973560953]}

# Default values
execute unless score $INTENSITY gh.data matches -2147483648..2147483647 run scoreboard players set $INTENSITY gh.data 250
execute unless score $RANGE gh.data matches -2147483648..2147483647 run scoreboard players set $RANGE gh.data 50