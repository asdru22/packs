data modify storage dsl:storage root.temp.campfire set from block ~ ~ ~ {}

execute store result score $slot0 dsl.dummy run data get storage dsl:storage root.temp.campfire.CookingTimes[0]
execute store result score $slot1 dsl.dummy run data get storage dsl:storage root.temp.campfire.CookingTimes[1]
execute store result score $slot2 dsl.dummy run data get storage dsl:storage root.temp.campfire.CookingTimes[2]
execute store result score $slot3 dsl.dummy run data get storage dsl:storage root.temp.campfire.CookingTimes[3]

execute if score $slot0 dsl.dummy matches 598.. run function dsl:block/campfire/cooking/finished_0
execute if score $slot1 dsl.dummy matches 598.. run function dsl:block/campfire/cooking/finished_1
execute if score $slot2 dsl.dummy matches 598.. run function dsl:block/campfire/cooking/finished_2
execute if score $slot3 dsl.dummy matches 598.. run function dsl:block/campfire/cooking/finished_3