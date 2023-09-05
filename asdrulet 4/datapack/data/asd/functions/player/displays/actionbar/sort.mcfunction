execute if data storage asd:data root.temp.element{t:"wind"} run scoreboard players add e.wind asd.d 1
execute if data storage asd:data root.temp.element{t:"acid"} run scoreboard players add e.acid asd.d 1
execute if data storage asd:data root.temp.element{t:"flesh"} run scoreboard players add e.flesh asd.d 1
execute if data storage asd:data root.temp.element{t:"electric"} run scoreboard players add e.electric asd.d 1

data remove storage asd:data root.temp.element.t
scoreboard players add full asd.d 1