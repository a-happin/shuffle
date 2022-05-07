#> shuffle:list/legacy/shift_right
#@within function shuffle:list/legacy/*

data modify storage : _[-2].list append from storage : _[-1].cache[-1]
data remove storage : _[-1].cache[-1]
scoreboard players add $index _shuffle 1
execute if score $random _shuffle > $index _shuffle run function shuffle:list/legacy/shift_right
