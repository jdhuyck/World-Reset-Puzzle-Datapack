# Unpause the timer
scoreboard players set "paused" timerPaused 0

# Kill players
gamerule showDeathMessages false
execute as @a[gamemode=!spectator] run damage @s 1000000 minecraft:generic

# Play timeout sound
playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 1

# Trigger external redstone command blocks with a small delay
setblock -2 -59 -11 minecraft:redstone_block
setblock -2 -59 -11 minecraft:air

# Reset timer value and bossbar max based on maxTime
execute store result score "timer_value" countdownTimer run scoreboard players get "maxTime" timerMax
execute store result bossbar timer:countdown max run scoreboard players get "maxTime" timerMax

# Make bossbar visible
bossbar set timer:countdown visible true
bossbar set timer:countdown color blue
