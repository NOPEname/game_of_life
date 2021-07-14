scoreboard players add gol_cube_rule tmp 1
execute if score gol_cube_rule tmp matches 5.. run scoreboard players set gol_cube_rule tmp 0

title @a title [{"text":"Rule: ","color":"gold"},{"score":{"objective":"tmp","name":"gol_cube_rule"}}]