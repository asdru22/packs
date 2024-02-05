#$execute unless block ~ ~ ~ bedrock run tellraw @p ["error at room ",{"score":{"name": "$rooms","objective": "var"}},": room=$(room), from=$(from)"]
execute unless block ~ ~ ~ air run tag @s add error

$execute if block ~ ~ ~ air run function a:region/dungeon/generate/space {room:"$(room)"}