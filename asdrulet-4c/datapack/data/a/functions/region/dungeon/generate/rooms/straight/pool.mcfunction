execute store result score $rng var run random value 1..10
execute if score $rng var matches 1..3 summon marker run function a:region/dungeon/generate/step {from:"straight",room:"split"}
execute if score $rng var matches 4..5 summon marker run function a:region/dungeon/generate/step {from:"straight",room:"left"}
execute if score $rng var matches 6 summon marker run function a:region/dungeon/generate/step {from:"straight",room:"right"}
execute if score $rng var matches 7..10 summon marker run function a:region/dungeon/generate/step {from:"straight",room:"empty"}