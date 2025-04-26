# Remove old pos2 stand if it exists
kill @e[type=armor_stand,tag=regen_pos2,distance=..5]

# Summon a new armor stand at current player position
summon armor_stand ~ ~ ~ {Tags:["regen_pos2"],Invisible:1b,NoGravity:1b,Marker:1b}
