
# count living cells around current cell
# blocks "off the board" count as dead cells
scoreboard players set cell_count tmp 0
execute if block ~1 ~ ~1 white_concrete run scoreboard players add cell_count tmp 1
execute if block ~1 ~ ~ white_concrete run scoreboard players add cell_count tmp 1
execute if block ~1 ~ ~-1 white_concrete run scoreboard players add cell_count tmp 1
execute if block ~ ~ ~1 white_concrete run scoreboard players add cell_count tmp 1
execute if block ~ ~ ~-1 white_concrete run scoreboard players add cell_count tmp 1
execute if block ~-1 ~ ~1 white_concrete run scoreboard players add cell_count tmp 1
execute if block ~-1 ~ ~ white_concrete run scoreboard players add cell_count tmp 1
execute if block ~-1 ~ ~-1 white_concrete run scoreboard players add cell_count tmp 1



# apply rule and set new block below current cell
setblock ~ ~-1 ~ black_concrete
# cell stays alive
execute if block ~ ~ ~ white_concrete if score cell_count tmp matches 2..3 run setblock ~ ~-1 ~ white_concrete
# dead cell becomes live cell
execute if block ~ ~ ~ black_concrete if score cell_count tmp matches 3 run setblock ~ ~-1 ~ white_concrete