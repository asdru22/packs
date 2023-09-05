scoreboard players operation t asd.d = @s asd.stat.health.current
scoreboard players operation t asd.d *= const.100 asd.d
scoreboard players operation t asd.d /= @s asd.stat.health.max

execute if score t asd.d matches 0..9 run attribute @s generic.armor base set 1
execute if score t asd.d matches 10..14 run attribute @s generic.armor base set 2
execute if score t asd.d matches 15..19 run attribute @s generic.armor base set 3
execute if score t asd.d matches 20..24 run attribute @s generic.armor base set 4
execute if score t asd.d matches 25..29 run attribute @s generic.armor base set 5
execute if score t asd.d matches 30..34 run attribute @s generic.armor base set 6
execute if score t asd.d matches 35..39 run attribute @s generic.armor base set 7
execute if score t asd.d matches 40..44 run attribute @s generic.armor base set 8
execute if score t asd.d matches 45..49 run attribute @s generic.armor base set 9
execute if score t asd.d matches 50..54 run attribute @s generic.armor base set 10
execute if score t asd.d matches 55..59 run attribute @s generic.armor base set 11
execute if score t asd.d matches 60..65 run attribute @s generic.armor base set 12
execute if score t asd.d matches 65..69 run attribute @s generic.armor base set 13
execute if score t asd.d matches 70..74 run attribute @s generic.armor base set 14
execute if score t asd.d matches 75..79 run attribute @s generic.armor base set 15
execute if score t asd.d matches 80..84 run attribute @s generic.armor base set 16
execute if score t asd.d matches 85..89 run attribute @s generic.armor base set 17
execute if score t asd.d matches 90..94 run attribute @s generic.armor base set 18
execute if score t asd.d matches 95..99 run attribute @s generic.armor base set 19
execute if score t asd.d matches 100 run attribute @s generic.armor base set 20