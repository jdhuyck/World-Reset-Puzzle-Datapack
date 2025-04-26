# Select the two armor stands
execute store result score @s x1 block_regen.data run data get entity @e[tag=regen_pos1,limit=1,sort=nearest] Pos[0] 1
execute store result score @s y1 block_regen.data run data get entity @e[tag=regen_pos1,limit=1,sort=nearest] Pos[1] 1
execute store result score @s z1 block_regen.data run data get entity @e[tag=regen_pos1,limit=1,sort=nearest] Pos[2] 1

execute store result score @s x2 block_regen.data run data get entity @e[tag=regen_pos2,limit=1,sort=nearest] Pos[0] 1
execute store result score @s y2 block_regen.data run data get entity @e[tag=regen_pos2,limit=1,sort=nearest] Pos[1] 1
execute store result score @s z2 block_regen.data run data get entity @e[tag=regen_pos2,limit=1,sort=nearest] Pos[2] 1

# TODO: Use these scores to loop over the area and regenerate blocks
