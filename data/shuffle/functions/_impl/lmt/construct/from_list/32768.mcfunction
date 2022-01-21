#> shuffle:_impl/lmt/construct/from_list/32768
#@within function shuffle:_impl/lmt/construct/from_list/65536

data modify storage : _[-1].lmt.data[-2] set value [[],[],[]]
execute unless data storage : _[-1].lmt.index_as_bits{"2^14": 0b} run function shuffle:_impl/lmt/construct/from_list/16384
execute store result storage : _[-1].lmt.index_as_bits."2^14" byte 1 run data remove storage : _[-1].lmt.data[-2][-1]
function shuffle:_impl/lmt/construct/from_list/16384
