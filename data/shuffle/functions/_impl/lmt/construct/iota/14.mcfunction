#> shuffle:_impl/lmt/construct/iota/14
#@within
#  tag/function shuffle:_impl/lmt/construct/iota/14
#  function shuffle:_impl/lmt/construct/iota/13

data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] set value [[],[],[]]
execute unless data storage : _[-1].index_as_bits{"2^1": 0b} run function #shuffle:_impl/lmt/construct/iota/15
execute store result storage : _[-1].index_as_bits."2^1" byte 1 run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-1]
