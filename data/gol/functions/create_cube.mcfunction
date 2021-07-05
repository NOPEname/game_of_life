fill ~-1 ~-1 ~-1 ~16 ~16 ~16 orange_stained_glass
fill ~-1 ~ ~ ~16 ~15 ~15 air
fill ~ ~-1 ~ ~15 ~16 ~15 air
fill ~ ~ ~-1 ~15 ~15 ~16 air



setblock ~-1 ~-1 ~1 command_block{Command:"/function gol:zz_private/ui/remove_cube"}
setblock ~-1 ~ ~1 stone_button[face=floor]
setblock ~-1 ~ ~2 oak_sign[rotation=4]{Text2:"{\"text\":\"Remove Cube\"}"}
setblock ~-1 ~-1 ~2 black_concrete

setblock ~-1 ~-1 ~5 command_block{Command:"/function gol:zz_private/ui/clear_cube"}
setblock ~-1 ~ ~5 stone_button[face=floor]
setblock ~-1 ~ ~6 oak_sign[rotation=4]{Text2:"{\"text\":\"Clear Cube\"}"}
setblock ~-1 ~-1 ~6 light_blue_concrete



setblock ~1 ~-1 ~-1 command_block{Command:"/function gol:zz_private/ui/update_cube"}
setblock ~1 ~ ~-1 stone_button[face=floor]
setblock ~2 ~ ~-1 oak_sign[rotation=8]{Text2:"{\"text\":\"Update Cube\"}"}
setblock ~2 ~-1 ~-1 lime_concrete

setblock ~4 ~-1 ~-1 command_block{Command:"/function gol:zz_private/ui/update_cube_slow"}
setblock ~4 ~ ~-1 stone_button[face=floor]
setblock ~5 ~ ~-1 oak_sign[rotation=8]{Text2:"{\"text\":\"Update Cycle 1\"}"}
setblock ~5 ~-1 ~-1 green_concrete

setblock ~7 ~-1 ~-1 command_block{Command:"/function gol:zz_private/ui/update_cube_fast"}
setblock ~7 ~ ~-1 stone_button[face=floor]
setblock ~8 ~ ~-1 oak_sign[rotation=8]{Text2:"{\"text\":\"Update Cycle 2\"}"}
setblock ~8 ~-1 ~-1 green_concrete

setblock ~10 ~-1 ~-1 command_block{Command:"/function gol:zz_private/ui/update_cube_stop"}
setblock ~10 ~ ~-1 stone_button[face=floor]
setblock ~11 ~ ~-1 oak_sign[rotation=8]{Text2:"{\"text\":\"STOP\"}"}
setblock ~11 ~-1 ~-1 red_concrete

setblock ~13 ~-1 ~-1 command_block{Command:"/function gol:zz_private/ui/change_rule"}
setblock ~13 ~ ~-1 stone_button[face=floor]
setblock ~14 ~ ~-1 oak_sign[rotation=8]{Text2:"{\"text\":\"Change Rule\"}"}
setblock ~14 ~-1 ~-1 blue_concrete



kill @e[tag=gol_cube_16]
summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:[gol_cube_16]}