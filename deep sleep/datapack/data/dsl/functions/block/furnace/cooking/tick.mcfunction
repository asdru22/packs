execute store result score $cook dsl.dummy run data get block ~ ~ ~ CookTime
execute store result score $total dsl.dummy run data get block ~ ~ ~ CookTimeTotal 0.999999

execute if score $cook dsl.dummy = $total dsl.dummy run function dsl:block/furnace/cooking/finish