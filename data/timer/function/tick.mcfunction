# Only run if the timer is not paused
execute if score "paused" timerPaused matches 0 run function timer:tick_run
