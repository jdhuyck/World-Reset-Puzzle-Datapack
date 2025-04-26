# Configure here

# For each block, we simulate a "roll"

# Pick random number 0–99
scoreboard players set @s regen.random 0
scoreboard players random @s regen.random 0 99

# Based on the random roll, place a block
execute if score @s regen.random matches 0..59 run setblock ~ ~ ~ minecraft:stone
execute if score @s regen.random matches 60..79 run setblock ~ ~ ~ minecraft:coal_ore
execute if score @s regen.random matches 80..94 run setblock ~ ~ ~ minecraft:iron_ore
execute if score @s regen.random matches 95..99 run setblock ~ ~ ~ minecraft:diamond_ore
