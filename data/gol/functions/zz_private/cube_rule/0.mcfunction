
# birth:   3
# survive: 2..3
# death:   else

# apply rule and set new block in buffer
setblock ~ ~ ~32 air
# cell stays alive
execute if block ~ ~ ~ blue_stained_glass if score cell_count tmp matches 2..3 run setblock ~ ~ ~32 blue_stained_glass
# dead cell becomes live cell
execute if block ~ ~ ~ air if score cell_count tmp matches 3 run setblock ~ ~ ~32 blue_stained_glass