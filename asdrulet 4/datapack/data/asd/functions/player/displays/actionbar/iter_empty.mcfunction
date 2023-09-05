execute if score empty asd.d matches 2.. run data modify storage asd:data root.temp.element.list insert -1 value '{"translate":"display.asd.bar.1","color":"gray","font":"asd:main"}'
execute if score empty asd.d matches 1 run data modify storage asd:data root.temp.element.list insert -1 value '{"translate":"display.asd.bar.2","color":"gray","font":"asd:main"}'
scoreboard players remove empty asd.d 1
execute if score empty asd.d matches 1.. run function asd:player/displays/actionbar/iter_empty