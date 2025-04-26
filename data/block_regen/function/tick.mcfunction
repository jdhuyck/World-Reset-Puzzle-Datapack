# Check if both positions exist, then run regen
execute if entity @e[tag=regen_pos1] if entity @e[tag=regen_pos2] run function block_regen:regen
