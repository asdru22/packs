data modify storage asd:data root.temp.element.list insert -1 value '{"translate":"display.asd.bar.1","color":"#00EEFF","font":"asd:main"}'
scoreboard players remove e.electric asd.d 1
execute if score e.electric asd.d matches 1.. run function asd:player/displays/actionbar/iter_electric