#> shuffle:_impl/lmt/construct/from_list/2
#@within
#  tag/function shuffle:_impl/lmt/construct/from_list/2
#  function shuffle:_impl/lmt/construct/from_list/1

data modify storage : _[-1].lmt[-2][-2] set value [[],[],[]]
execute unless data storage : _[-1].index_as_bits{"2^13": 0b} run function #shuffle:_impl/lmt/construct/from_list/3
execute store result storage : _[-1].index_as_bits."2^13" byte 1 run data remove storage : _[-1].lmt[-2][-2][-1]
