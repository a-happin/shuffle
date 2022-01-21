#> shuffle:_impl/lmt/construct/from_list/256
#@within function shuffle:_impl/lmt/construct/from_list/512

data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2] set value [[],[],[]]
execute unless data storage : _[-1].lmt.index_as_bits{"2^7": 0b} run function shuffle:_impl/lmt/construct/from_list/128
execute store result storage : _[-1].lmt.index_as_bits."2^7" byte 1 run data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-1]
function shuffle:_impl/lmt/construct/from_list/128
