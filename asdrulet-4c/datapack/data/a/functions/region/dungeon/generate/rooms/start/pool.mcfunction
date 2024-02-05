execute store result score $rng var run random value 1..10
execute if score $rng var matches 1..5 summon marker run function a:region/dungeon/generate/step {from:"start",room:"straight"}
execute if score $rng var matches 6..8 summon marker run function a:region/dungeon/generate/step {from:"start",room:"split"}
execute if score $rng var matches 9..10 summon marker run function a:region/dungeon/generate/step {from:"start",room:"empty"}