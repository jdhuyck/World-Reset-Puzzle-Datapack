execute if score "timer_value" countdownTimer matches 1.. run scoreboard players remove "timer_value" countdownTimer 1

# Halfway
execute if score "timer_value" countdownTimer matches 1540 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1

# 30s
execute if score "timer_value" countdownTimer matches 600 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1
execute if score "timer_value" countdownTimer matches 600 run bossbar set timer:countdown color yellow

# 10s
execute if score "timer_value" countdownTimer matches 200 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1
execute if score "timer_value" countdownTimer matches 200 run bossbar set timer:countdown color red

# 5s to 1s
execute if score "timer_value" countdownTimer matches 100 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1
execute if score "timer_value" countdownTimer matches 200 run bossbar set timer:countdown color white
execute if score "timer_value" countdownTimer matches 80 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1
execute if score "timer_value" countdownTimer matches 200 run bossbar set timer:countdown color red
execute if score "timer_value" countdownTimer matches 60 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1
execute if score "timer_value" countdownTimer matches 200 run bossbar set timer:countdown color white
execute if score "timer_value" countdownTimer matches 40 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1
execute if score "timer_value" countdownTimer matches 200 run bossbar set timer:countdown color red
execute if score "timer_value" countdownTimer matches 20 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1

execute if score "timer_value" countdownTimer matches 0 run function timer:timeout
function timer:display
