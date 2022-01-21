#> shuffle:_impl/lmt/construct/from_list/65536
#@within tag/function shuffle:_impl/lmt/construct/from_list/impl

data modify storage : _[-1].lmt.data set value [[],[],[]]
execute unless data storage : _[-1].lmt.index_as_bits{"2^15": 0b} run function shuffle:_impl/lmt/construct/from_list/32768
data remove storage : _[-1].lmt.data[-1]
function shuffle:_impl/lmt/construct/from_list/32768
