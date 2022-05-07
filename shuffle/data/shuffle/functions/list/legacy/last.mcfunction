#> shuffle:list/legacy/last
#@within function shuffle:list/legacy/

execute if data storage : _[-2].list[-1] run data modify storage : _[-2].shuffled append from storage : _[-2].list[-1]
execute if data storage : _[-1].cache[-1] run data modify storage : _[-2].shuffled append from storage : _[-1].cache[-1]
