#> shuffle:list/legacy/shift_left
#@within function shuffle:list/legacy/*

data modify storage : _[-1].cache append from storage : _[-2].list[-1]
data remove storage : _[-2].list[-1]
scoreboard players remove $index _shuffle 1
execute if score $random _shuffle < $index _shuffle run function shuffle:list/legacy/shift_left
