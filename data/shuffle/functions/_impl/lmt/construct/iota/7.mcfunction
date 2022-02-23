#> shuffle:_impl/lmt/construct/iota/7
#@within
#  tag/function shuffle:_impl/lmt/construct/iota/7
#  function shuffle:_impl/lmt/construct/iota/6

data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2] set value [[],[],[]]
execute unless data storage : _[-1].index_as_bits{"2^8": 0b} run function #shuffle:_impl/lmt/construct/iota/8
execute store result storage : _[-1].index_as_bits."2^8" byte 1 run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-1]
