#> shuffle:_impl/lmt/construct/_impl/calc_index_as_bits
#@within tag/function shuffle:_impl/lmt/construct/from_list/0

scoreboard players remove $ _shuffle 1
execute store result storage : _[-1].index_as_bits."2^15" byte -2147483648 run scoreboard players operation $ _shuffle *= #2^16 _shuffle
execute store result storage : _[-1].index_as_bits."2^14" byte -2147483648 run scoreboard players operation $ _shuffle += $ _shuffle
execute store result storage : _[-1].index_as_bits."2^13" byte -2147483648 run scoreboard players operation $ _shuffle += $ _shuffle
execute store result storage : _[-1].index_as_bits."2^12" byte -2147483648 run scoreboard players operation $ _shuffle += $ _shuffle
execute store result storage : _[-1].index_as_bits."2^11" byte -2147483648 run scoreboard players operation $ _shuffle += $ _shuffle
execute store result storage : _[-1].index_as_bits."2^10" byte -2147483648 run scoreboard players operation $ _shuffle += $ _shuffle
execute store result storage : _[-1].index_as_bits."2^9" byte -2147483648 run scoreboard players operation $ _shuffle += $ _shuffle
execute store result storage : _[-1].index_as_bits."2^8" byte -2147483648 run scoreboard players operation $ _shuffle += $ _shuffle
execute store result storage : _[-1].index_as_bits."2^7" byte -2147483648 run scoreboard players operation $ _shuffle += $ _shuffle
execute store result storage : _[-1].index_as_bits."2^6" byte -2147483648 run scoreboard players operation $ _shuffle += $ _shuffle
execute store result storage : _[-1].index_as_bits."2^5" byte -2147483648 run scoreboard players operation $ _shuffle += $ _shuffle
execute store result storage : _[-1].index_as_bits."2^4" byte -2147483648 run scoreboard players operation $ _shuffle += $ _shuffle
execute store result storage : _[-1].index_as_bits."2^3" byte -2147483648 run scoreboard players operation $ _shuffle += $ _shuffle
execute store result storage : _[-1].index_as_bits."2^2" byte -2147483648 run scoreboard players operation $ _shuffle += $ _shuffle
execute store result storage : _[-1].index_as_bits."2^1" byte -2147483648 run scoreboard players operation $ _shuffle += $ _shuffle
execute store result storage : _[-1].index_as_bits."2^0" byte -2147483648 run scoreboard players operation $ _shuffle += $ _shuffle
