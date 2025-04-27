# Create objectives
scoreboard objectives add countdownTimer dummy
scoreboard objectives add timerPaused dummy
scoreboard objectives add timerMax dummy

# Set default values
scoreboard players set "timer_value" countdownTimer 1980
scoreboard players set "paused" timerPaused 0
scoreboard players set "maxTime" timerMax 1980

# Set individual player spawn points
execute as @a run spawnpoint @s 3 -58 10

# Create bossbar
bossbar add timer:countdown ""
execute store result bossbar timer:countdown max run scoreboard players get "maxTime" timerMax
bossbar set timer:countdown color blue
bossbar set timer:countdown style notched_6
bossbar set timer:countdown visible true
bossbar set timer:countdown players @a

# Sync bossbar max to maxTime in case of reload
execute store result bossbar timer:countdown max run scoreboard players get "maxTime" timerMax
