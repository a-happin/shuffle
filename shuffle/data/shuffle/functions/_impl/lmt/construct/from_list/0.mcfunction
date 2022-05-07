#> shuffle:_impl/lmt/construct/from_list/0
#@within tag/function shuffle:_impl/lmt/construct/from_list/0

scoreboard players set $ _shuffle -65536
scoreboard players operation $ _shuffle *= $size _shuffle
data modify storage : _[-1].lmt set value [[],[],[]]
execute if score $ _shuffle matches 0.. run function #shuffle:_impl/lmt/construct/from_list/1
data remove storage : _[-1].lmt[-1]
