scoreboard objectives add countdownTimer dummy
scoreboard players set "timer_value" countdownTimer 3080

bossbar add timer:countdown ""
bossbar set timer:countdown max 3080
bossbar set timer:countdown color blue
bossbar set timer:countdown style notched_6
bossbar set timer:countdown visible true
bossbar set timer:countdown players @a
