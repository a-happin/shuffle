#> shuffle:_impl/lmt/construct/from_list/
#@within function shuffle:**
#@input
#  objective _shuffle
#  storage : _[-2].list List (0 <= list.size < 65536)
#@output
#  storage : _[-1].lmt List-Mapped Trie
#  storage : _[-1].index_as_bits (garbage)
#  score $size _shuffle

data modify storage : _[-1].lmt set value []
execute store result score $size _shuffle if data storage : _[-2].list[]
execute unless score $size _shuffle matches 0..65536 run tellraw @s [{"text": "Error» ", "color": "red"}, "shuffle:_impl/lmt/construct/from_list/» ", "list is too big"]
execute if score $size _shuffle matches 1..65536 run function #shuffle:_impl/lmt/construct/from_list/0
