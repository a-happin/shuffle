#> shuffle:_impl/lmt/construct/from_list/9
#@within
#  tag/function shuffle:_impl/lmt/construct/from_list/9
#  function shuffle:_impl/lmt/construct/from_list/8

data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2] set value [[],[],[]]
execute unless data storage : _[-1].index_as_bits{"2^6": 0b} run function #shuffle:_impl/lmt/construct/from_list/10
execute store result storage : _[-1].index_as_bits."2^6" byte 1 run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-1]
