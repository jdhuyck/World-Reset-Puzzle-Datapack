# Reset the timer value back to timerMax
scoreboard players operation "timer_value" countdownTimer = timerMax timerMax

# Update the bossbar max value to match timerMax (in case timerMax changed)
execute store result bossbar timer:countdown max run scoreboard players get timerMax timerMax

# Set bossbar color back to green
bossbar set timer:countdown color blue

# Make sure bossbar is visible
bossbar set timer:countdown visible true

# Also reset the paused state, just to be safe
scoreboard players set "paused" timerPaused 0

# Display immediately
function timer:display
