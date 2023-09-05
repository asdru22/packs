## Remez Algorithm
#a := min (|x|, |y|) / max (|x|, |y|)
#s := a * a
#r := ((-0.0464964749 * s + 0.15931422) * s - 0.327622764) * s * a + a
#if |y| > |x| then r := 1.57079637 - r
#if x < 0 then r := 3.14159274 - r
#if y < 0 then r := -r

## a
scoreboard players operation #temp nihility.data = in nihility.data
scoreboard players operation #temp1 nihility.data = in1 nihility.data
execute if score #temp nihility.data matches ..-1 run scoreboard players operation #temp nihility.data *= -1 nihility.data
execute if score #temp1 nihility.data matches ..-1 run scoreboard players operation #temp1 nihility.data *= -1 nihility.data
scoreboard players operation #temp2 nihility.data = #temp nihility.data
scoreboard players operation #temp2 nihility.data < #temp1 nihility.data
scoreboard players operation #temp3 nihility.data = #temp nihility.data
scoreboard players operation #temp3 nihility.data > #temp1 nihility.data
scoreboard players operation #temp2 nihility.data *= 1000 nihility.data
scoreboard players operation #temp2 nihility.data /= #temp3 nihility.data
## s
scoreboard players operation #temp3 nihility.data = #temp2 nihility.data
scoreboard players operation #temp3 nihility.data *= #temp3 nihility.data
scoreboard players operation #temp3 nihility.data /= 1000 nihility.data
## r
scoreboard players operation out nihility.data = #temp3 nihility.data
scoreboard players operation out nihility.data *= -46496 nihility.data
scoreboard players operation out nihility.data /= 100000 nihility.data
scoreboard players add out nihility.data 1593
scoreboard players operation out nihility.data *= #temp3 nihility.data
scoreboard players operation out nihility.data /= 1000 nihility.data
scoreboard players remove out nihility.data 3276
scoreboard players operation out nihility.data *= #temp3 nihility.data
scoreboard players operation out nihility.data /= 1000 nihility.data
scoreboard players operation out nihility.data *= #temp2 nihility.data
scoreboard players operation out nihility.data /= 10000 nihility.data
scoreboard players operation out nihility.data += #temp2 nihility.data
execute if score #temp1 nihility.data > #temp nihility.data run scoreboard players remove out nihility.data 1570
execute if score #temp1 nihility.data > #temp nihility.data run scoreboard players operation out nihility.data *= -1 nihility.data
execute if score in nihility.data matches ..-1 run scoreboard players remove out nihility.data 3141
execute if score in nihility.data matches ..-1 run scoreboard players operation out nihility.data *= -1 nihility.data
execute if score in1 nihility.data matches ..-1 run scoreboard players operation out nihility.data *= -1 nihility.data
## rad 2 deg
scoreboard players operation out nihility.data *= 57295 nihility.data
scoreboard players operation out nihility.data /= 1000000 nihility.data