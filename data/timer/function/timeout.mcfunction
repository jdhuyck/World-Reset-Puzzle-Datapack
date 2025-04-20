gamerule showDeathMessages false

execute as @a[gamemode=!spectator] run damage @s 1000000 minecraft:generic

playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 1

scoreboard players set "timer_value" countdownTimer 3080
bossbar set timer:countdown color blue
bossbar set timer:countdown visible true
