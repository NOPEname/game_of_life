
# GOOD !

# birth:   4, 8
# survive: -
# death:   else

# apply rule and set new block in buffer
setblock ~ ~ ~32 air
# cell stays alive
#execute if block ~ ~ ~ blue_stained_glass if score cell_count tmp matches 4 run setblock ~ ~ ~32 blue_stained_glass
# dead cell becomes live cell
execute if block ~ ~ ~ air if score cell_count tmp matches 4 run setblock ~ ~ ~32 blue_stained_glass
execute if block ~ ~ ~ air if score cell_count tmp matches 8 run setblock ~ ~ ~32 blue_stained_glass
