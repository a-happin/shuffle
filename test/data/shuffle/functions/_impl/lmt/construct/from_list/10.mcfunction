#> shuffle:_impl/lmt/construct/from_list/10
#@within
#  tag/function shuffle:_impl/lmt/construct/from_list/10
#  function shuffle:_impl/lmt/construct/from_list/9

data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] set value [[],[],[]]
execute unless data storage : _[-1].index_as_bits{"2^5": 0b} run function #shuffle:_impl/lmt/construct/from_list/11
execute store result storage : _[-1].index_as_bits."2^5" byte 1 run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-1]
