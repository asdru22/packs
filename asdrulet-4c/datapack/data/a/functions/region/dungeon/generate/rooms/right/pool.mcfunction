execute store result score $rng var run random value 1..10
execute if score $rng var matches 1..3 summon marker run function a:region/dungeon/generate/step {from:"right",room:"straight"}
execute if score $rng var matches 4..5 summon marker run function a:region/dungeon/generate/step {from:"right",room:"split"}
execute if score $rng var matches 6..7 summon marker run function a:region/dungeon/generate/step {from:"right",room:"left"}
execute if score $rng var matches 8..10 summon marker run function a:region/dungeon/generate/step {from:"right",room:"empty"}