# Set the bossbar max value to the new timerMax
execute store result bossbar timer:countdown max run scoreboard players get timerMax timerMax

# Optional: reset timer_value to the new max
scoreboard players operation timer_value countdownTimer = timerMax timerMax

# Trigger restart
function timer:restart

# Run in game
# /scoreboard players set timerMax timerMax 1980
# /function timer:set_max
