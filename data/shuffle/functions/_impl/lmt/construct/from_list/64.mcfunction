#> shuffle:_impl/lmt/construct/from_list/64
#@within function shuffle:_impl/lmt/construct/from_list/128

data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] set value [[],[],[]]
execute unless data storage : _[-1].lmt.index_as_bits{"2^5": 0b} run function shuffle:_impl/lmt/construct/from_list/32
execute store result storage : _[-1].lmt.index_as_bits."2^5" byte 1 run data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-1]
function shuffle:_impl/lmt/construct/from_list/32
