data modify storage asd:data root.temp.element.list insert -1 value '{"translate":"display.asd.bar.1","color":"#9C2B27","font":"asd:main"}'
scoreboard players remove e.flesh asd.d 1
execute if score e.flesh asd.d matches 1.. run function asd:player/displays/actionbar/iter_flesh