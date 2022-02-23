#> shuffle:_impl/lmt/construct/iota/
#@public
#@input
#  objective _shuffle
#  storage : _[-1].begin int
#  storage : _[-1].end int (0 <= end - begin < 65536)
#@output
#  storage : _[-1].lmt List-Mapped Trie
#  storage : _[-1].index_as_bits (garbage)
#  score $size _shuffle

data modify storage : _[-1].lmt set value []
execute store result score $begin _shuffle run data get storage : _[-1].begin
execute store result score $size _shuffle store result score $end _shuffle run data get storage : _[-1].end
execute store result score $ _shuffle run scoreboard players operation $size _shuffle -= $begin _shuffle
execute unless score $size _shuffle matches 0..65536 run function shuffle:_impl/lmt/construct/iota/error
execute if score $size _shuffle matches 1..65536 run function #shuffle:_impl/lmt/construct/iota/0
