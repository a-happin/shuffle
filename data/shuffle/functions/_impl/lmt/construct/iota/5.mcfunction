#> shuffle:_impl/lmt/construct/iota/5
#@within
#  tag/function shuffle:_impl/lmt/construct/iota/5
#  function shuffle:_impl/lmt/construct/iota/4

data modify storage : _[-1].lmt[-2][-2][-2][-2][-2] set value [[],[],[]]
execute unless data storage : _[-1].index_as_bits{"2^10": 0b} run function #shuffle:_impl/lmt/construct/iota/6
execute store result storage : _[-1].index_as_bits."2^10" byte 1 run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-1]
