
execute store result score $rng var run random value 1..10
execute if score $rng var matches 1..3 summon marker run function a:region/dungeon/generate/step {from:"cross",room:"straight"}
execute if score $rng var matches 4 summon marker run function a:region/dungeon/generate/step {from:"cross",room:"left"}
execute if score $rng var matches 5 summon marker run function a:region/dungeon/generate/step {from:"cross",room:"right"}
execute if score $rng var matches 6..10 summon marker run function a:region/dungeon/generate/step {from:"cross",room:"split"}