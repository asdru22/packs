$execute if score @s var matches 0 run place template a:dungeon/1/$(room)/1 ~-5 ~ ~-5 none

$execute if score @s var matches 90 run place template a:dungeon/1/$(room)/1 ~5 ~ ~-5 clockwise_90

$execute if score @s var matches 180 run place template a:dungeon/1/$(room)/1 ~5 ~ ~5 180
$execute if score @s var matches -180 run place template a:dungeon/1/$(room)/1 ~5 ~ ~5 180

$execute if score @s var matches -90 run place template a:dungeon/1/$(room)/1 ~-5 ~ ~5 counterclockwise_90