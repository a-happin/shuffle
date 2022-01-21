#> shuffle:list/legacy/last
#@within function shuffle:list/legacy/

data modify storage : _[-2].shuffled append from storage : _[-2].list[-1]
