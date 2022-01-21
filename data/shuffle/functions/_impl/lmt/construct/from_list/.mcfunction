#> shuffle:_impl/lmt/construct/from_list/
#@within function shuffle:list/
#@input
#  storage : _[-2].list[]
#@output
#  storage : _[-1].lmt List-Mapped Trie

data modify storage : _[-1].lmt set value {data: []}

execute store result score $size _shuffle store result storage : _[-1].lmt.size int 1 if data storage : _[-2].list[]
execute unless score $size _shuffle matches 0..65536 run tellraw @s [{"text": "Error» ", "color": "red"}, "shuffle:_impl/lmt/construct/from_list/» ", "list is too big"]
execute if score $size _shuffle matches 1..65536 run function #shuffle:_impl/lmt/construct/from_list/impl
