scoreboard players set void_charm asd.d 100
scoreboard players operation void_charm asd.d -= @s asd.perc_psychosis
scoreboard players operation void_charm asd.d *= const.100 asd.d

scoreboard players operation s.psychosis_used asd.d += void_charm asd.d