#> shuffle:_impl/lmt/construct/from_list/2048
#@within function shuffle:_impl/lmt/construct/from_list/4096

data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2] set value [[],[],[]]
execute unless data storage : _[-1].lmt.index_as_bits{"2^10": 0b} run function shuffle:_impl/lmt/construct/from_list/1024
execute store result storage : _[-1].lmt.index_as_bits."2^10" byte 1 run data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-1]
function shuffle:_impl/lmt/construct/from_list/1024
