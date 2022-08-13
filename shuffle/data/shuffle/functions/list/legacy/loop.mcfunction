#> shuffle:list/legacy/loop
#@within tag/function shuffle:list/legacy/loop

## random %= size
scoreboard players operation $random _shuffle %= $size _shuffle

execute if score $random _shuffle < $index _shuffle run function shuffle:list/legacy/shift_left
execute if score $random _shuffle > $index _shuffle run function shuffle:list/legacy/shift_right

data modify storage : _[-2].shuffled append from storage : _[-1].cache[-1]
data remove storage : _[-1].cache[-1]

scoreboard players remove $size _shuffle 1

execute if score $rest _shuffle < $size _shuffle if score $size _shuffle matches 2.. run function #shuffle:list/legacy/loop
