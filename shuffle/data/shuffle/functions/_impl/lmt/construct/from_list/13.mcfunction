#> shuffle:_impl/lmt/construct/from_list/13
#@within
#  tag/function shuffle:_impl/lmt/construct/from_list/13
#  function shuffle:_impl/lmt/construct/from_list/12

scoreboard players operation $ _shuffle += $ _shuffle
data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] set value [[],[],[]]
execute if score $ _shuffle matches 0.. run function #shuffle:_impl/lmt/construct/from_list/14
data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-1]
