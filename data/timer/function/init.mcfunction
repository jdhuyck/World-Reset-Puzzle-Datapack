# Create objectives if they don't exist
scoreboard objectives add countdownTimer dummy
scoreboard objectives add timerMax dummy
scoreboard objectives add timerPaused dummy

# Only set timerMax if not already set
execute unless score timerMax timerMax matches 1.. run scoreboard players set timerMax timerMax 1980

# Set timer_value to the current timerMax
scoreboard players operation "timer_value" countdownTimer = timerMax timerMax

# Remove and recreate the bossbar (safe reset)
bossbar remove timer:countdown
bossbar add timer:countdown ""

# Set bossbar max to match timerMax dynamically
execute store result bossbar timer:countdown max run scoreboard players get timerMax timerMax

# Set bossbar appearance
bossbar set timer:countdown color blue
bossbar set timer:countdown style notched_6
bossbar set timer:countdown visible true
bossbar set timer:countdown players @a

# Make sure paused state is cleared
scoreboard players set "paused" timerPaused 0

# Set spawn point
setworldspawn 3 -58 10

# Show timer immediately
function timer:display
