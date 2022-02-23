#> shuffle:_impl/lmt/construct/from_list/0
#@within tag/function shuffle:_impl/lmt/construct/from_list/0

data modify storage : _[-1].lmt set value [[],[],[]]
execute unless data storage : _[-1].index_as_bits{"2^15": 0b} run function #shuffle:_impl/lmt/construct/from_list/1
data remove storage : _[-1].lmt[-1]
