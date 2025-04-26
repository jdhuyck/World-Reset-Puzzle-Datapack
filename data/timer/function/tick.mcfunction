# Decrease the timer value
execute if score "timer_value" countdownTimer matches 1.. run scoreboard players remove "timer_value" countdownTimer 1
