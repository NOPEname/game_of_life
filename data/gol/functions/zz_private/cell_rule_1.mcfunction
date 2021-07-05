
# count living cells around current cell
# blocks "off the board" count as dead cells
scoreboard players set cell_count tmp 0

execute if block ~1 ~-1 ~1 blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~1 ~-1 ~ blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~1 ~-1 ~-1 blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~ ~-1 ~1 blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~ ~-1 ~ blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~ ~-1 ~-1 blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~-1 ~-1 ~1 blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~-1 ~-1 ~ blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~-1 ~-1 ~-1 blue_stained_glass run scoreboard players add cell_count tmp 1

execute if block ~1 ~ ~1 blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~1 ~ ~ blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~1 ~ ~-1 blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~ ~ ~1 blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~ ~ ~-1 blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~-1 ~ ~1 blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~-1 ~ ~ blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~-1 ~ ~-1 blue_stained_glass run scoreboard players add cell_count tmp 1

execute if block ~1 ~1 ~1 blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~1 ~1 ~ blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~1 ~1 ~-1 blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~ ~1 ~1 blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~ ~1 ~ blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~ ~1 ~-1 blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~-1 ~1 ~1 blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~-1 ~1 ~ blue_stained_glass run scoreboard players add cell_count tmp 1
execute if block ~-1 ~1 ~-1 blue_stained_glass run scoreboard players add cell_count tmp 1



# apply rule and set new block in buffer
setblock ~ ~ ~32 air
# cell stays alive
execute if block ~ ~ ~ blue_stained_glass if score cell_count tmp matches 2..3 run setblock ~ ~ ~32 blue_stained_glass
# dead cell becomes live cell
execute if block ~ ~ ~ air if score cell_count tmp matches 3 run setblock ~ ~ ~32 blue_stained_glass