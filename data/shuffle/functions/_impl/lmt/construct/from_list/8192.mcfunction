#> shuffle:_impl/lmt/construct/from_list/8192
#@within function shuffle:_impl/lmt/construct/from_list/16384

data modify storage : _[-1].lmt.data[-2][-2][-2] set value [[],[],[]]
execute unless data storage : _[-1].lmt.index_as_bits{"2^12": 0b} run function shuffle:_impl/lmt/construct/from_list/4096
execute store result storage : _[-1].lmt.index_as_bits."2^12" byte 1 run data remove storage : _[-1].lmt.data[-2][-2][-2][-1]
function shuffle:_impl/lmt/construct/from_list/4096
