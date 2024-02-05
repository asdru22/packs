
execute store result score $rng var run random value 1..10
execute if score $rng var matches 1..2 summon marker run function a:region/dungeon/generate/step {from:"cross",room:"cross"}
execute if score $rng var matches 3..4 summon marker run function a:region/dungeon/generate/step {from:"cross",room:"left"}
execute if score $rng var matches 5..6 summon marker run function a:region/dungeon/generate/step {from:"cross",room:"right"}
execute if score $rng var matches 7..9 summon marker run function a:region/dungeon/generate/step {from:"cross",room:"empty"}
execute if score $rng var matches 10 summon marker run function a:region/dungeon/generate/step {from:"cross",room:"straight"}
