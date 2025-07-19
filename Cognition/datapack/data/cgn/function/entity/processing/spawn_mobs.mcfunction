execute store result score $rng cgn.dummy run random value 1..2
execute if score $rng cgn.dummy matches 1..2 run function cgn:commands/summon/peeper

tp @s ~ -1000 ~