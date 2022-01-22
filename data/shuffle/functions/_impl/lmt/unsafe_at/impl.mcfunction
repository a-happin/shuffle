#> shuffle:_impl/lmt/unsafe_at/impl
# lmt[index]が存在することが保証できる場合、こちらを使うことでコマンド数の削減が可能
#@within function shuffle:**
#@input
#  storage : _[-1].lmt List-Mapped Trie
#  score
#    $index _shuffle (0 <= index < lmt.size)
#    $prev_index _shuffle (optional) (index != prev_index)
#@output
#  storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2].\_
#  score $prev_index _shuffle

data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][2]
data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][2]
data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][2]
data remove storage : _[-1].lmt.data[-2][-2][-2][-2][-2][2]
data remove storage : _[-1].lmt.data[-2][-2][-2][-2][2]
data remove storage : _[-1].lmt.data[-2][-2][-2][2]
data remove storage : _[-1].lmt.data[-2][-2][2]
data remove storage : _[-1].lmt.data[-2][2]
data remove storage : _[-1].lmt.data[2]

execute store result score $ _shuffle run scoreboard players operation $prev_index _shuffle = $index _shuffle

# scoreboard players set #2^16 _shuffle 65536
scoreboard players operation $ _shuffle *= #2^16 _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data[-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data[-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data[-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data[-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches ..-1 run data modify storage : _[-1].lmt.data[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value {}
