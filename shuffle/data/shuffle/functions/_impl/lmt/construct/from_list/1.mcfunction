#> shuffle:_impl/lmt/construct/from_list/1
#@within
#  tag/function shuffle:_impl/lmt/construct/from_list/1
#  function shuffle:_impl/lmt/construct/from_list/0

scoreboard players operation $ _shuffle += $ _shuffle
data modify storage : _[-1].lmt[-2] set value [[],[],[]]
execute if score $ _shuffle matches 0.. run function #shuffle:_impl/lmt/construct/from_list/2
data remove storage : _[-1].lmt[-2][-1]
