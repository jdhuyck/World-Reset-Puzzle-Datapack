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

# Trigger restart function
function timer:restart