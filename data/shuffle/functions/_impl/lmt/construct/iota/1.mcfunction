#> shuffle:_impl/lmt/construct/iota/1
#@within
#  tag/function shuffle:_impl/lmt/construct/iota/1
#  function shuffle:_impl/lmt/construct/iota/0

data modify storage : _[-1].lmt[-2] set value [[],[],[]]
execute unless data storage : _[-1].index_as_bits{"2^14": 0b} run function #shuffle:_impl/lmt/construct/iota/2
execute store result storage : _[-1].index_as_bits."2^14" byte 1 run data remove storage : _[-1].lmt[-2][-1]
