execute at @e[tag=gol_board_64_64] run function gol:zz_private/update_64_64

schedule clear gol:zz_private/ui/update_board_fast
schedule function gol:zz_private/ui/update_board_slow 1s