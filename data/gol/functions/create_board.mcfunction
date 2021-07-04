fill ~ ~-3 ~ ~65 ~-1 ~65 orange_concrete
fill ~1 ~-2 ~1 ~64 ~-1 ~64 netherite_block

setblock ~ ~-1 ~ command_block{Command:"/function gol:zz_private/ui/remove_board"}
setblock ~ ~ ~ stone_button[face=floor]
setblock ~1 ~ ~ oak_sign[rotation=4]{Text2:"{\"text\":\"Remove Board\"}"}
setblock ~1 ~-1 ~ black_concrete

setblock ~5 ~-1 ~ command_block{Command:"/function gol:zz_private/ui/update_board"}
setblock ~5 ~ ~ stone_button[face=floor]
setblock ~6 ~ ~ oak_sign[rotation=4]{Text2:"{\"text\":\"Update Board\"}",Text3:"{\"text\":\"(one step)\"}"}
setblock ~6 ~-1 ~ lime_concrete

setblock ~10 ~-1 ~ command_block{Command:"/function gol:zz_private/ui/update_board_slow"}
setblock ~10 ~ ~ stone_button[face=floor]
setblock ~11 ~ ~ oak_sign[rotation=4]{Text2:"{\"text\":\"Update Cycle 1\"}",Text3:"{\"text\":\"(slow steps)\"}"}
setblock ~11 ~-1 ~ green_concrete

setblock ~15 ~-1 ~ command_block{Command:"/function gol:zz_private/ui/update_board_fast"}
setblock ~15 ~ ~ stone_button[face=floor]
setblock ~16 ~ ~ oak_sign[rotation=4]{Text2:"{\"text\":\"Update Cycle 2\"}",Text3:"{\"text\":\"(fast steps)\"}"}
setblock ~16 ~-1 ~ green_concrete

setblock ~20 ~-1 ~ command_block{Command:"/function gol:zz_private/ui/update_board_stop"}
setblock ~20 ~ ~ stone_button[face=floor]
setblock ~21 ~ ~ oak_sign[rotation=4]{Text2:"{\"text\":\"STOP\"}"}
setblock ~21 ~-1 ~ red_concrete

setblock ~25 ~-1 ~ command_block{Command:"/function gol:zz_private/ui/clear_board"}
setblock ~25 ~ ~ stone_button[face=floor]
setblock ~26 ~ ~ oak_sign[rotation=4]{Text2:"{\"text\":\"Clear Board\"}"}
setblock ~26 ~-1 ~ light_blue_concrete

kill @e[tag=gol_board_64_64]
summon area_effect_cloud ~1 ~-1 ~1 {Duration:2000000000,Tags:[gol_board_64_64]}