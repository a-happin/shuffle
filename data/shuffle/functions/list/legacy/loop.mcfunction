#> shuffle:list/legacy/loop
#@within function shuffle:list/legacy/*

function shuffle:_impl/random/

## index = random %= size
execute store result score $index _shuffle run scoreboard players operation $random _shuffle %= $size _shuffle

execute if score $index _shuffle matches 1.. run function shuffle:list/legacy/move

data modify storage : _[-2].shuffled append from storage : _[-2].list[-1]
data remove storage : _[-2].list[-1]
data modify storage : _[-2].list append from storage : _[-1].cache[]
data remove storage : _[-1].cache

scoreboard players remove $size _shuffle 1
scoreboard players remove $take _shuffle 1

execute if score $take _shuffle matches 1.. if score $size _shuffle matches 2.. run function shuffle:list/legacy/loop
