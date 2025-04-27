# Pause the timer
scoreboard players set "paused" timerPaused 1
bossbar set timer:countdown color white
execute as @a run title @s actionbar {"text":"Timer Paused","color":"gray"}
