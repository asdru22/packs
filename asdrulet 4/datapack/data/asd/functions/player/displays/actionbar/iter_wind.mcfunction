data modify storage asd:data root.temp.element.list insert -1 value '{"translate":"display.asd.bar.1","color":"#E8FFF6","font":"asd:main"}'
scoreboard players remove e.wind asd.d 1
execute if score e.wind asd.d matches 1.. run function asd:player/displays/actionbar/iter_wind