
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



execute unless score gol_cube_rule tmp matches 1.. run function gol:zz_private/cube_rule/0
execute if score gol_cube_rule tmp matches 1 run function gol:zz_private/cube_rule/1
execute if score gol_cube_rule tmp matches 2 run function gol:zz_private/cube_rule/2
execute if score gol_cube_rule tmp matches 3 run function gol:zz_private/cube_rule/3
execute if score gol_cube_rule tmp matches 4 run function gol:zz_private/cube_rule/4