#> shuffle:_impl/lmt/construct/iota/3
#@within
#  tag/function shuffle:_impl/lmt/construct/iota/3
#  function shuffle:_impl/lmt/construct/iota/2

data modify storage : _[-1].lmt[-2][-2][-2] set value [[],[],[]]
execute unless data storage : _[-1].index_as_bits{"2^12": 0b} run function #shuffle:_impl/lmt/construct/iota/4
execute store result storage : _[-1].index_as_bits."2^12" byte 1 run data remove storage : _[-1].lmt[-2][-2][-2][-1]
