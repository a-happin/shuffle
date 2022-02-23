#> shuffle:_impl/lmt/unsafe_at/size/impl
#@within * shuffle:**
#@input
#  storage : _[-1].lmt List-Mapped Trie
#  score $size _shuffle (0 <= size < lmt.size)
#  score $prev_index _shuffle (optional) (size != prev_index)
#@output
#  storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]
#  score $prev_index _shuffle

execute store result score $ _shuffle run scoreboard players operation $prev_index _shuffle = $size _shuffle

execute if score $ _shuffle matches 0..32767 if data storage : _[-1].lmt[2] run data remove storage : _[-1].lmt[2]
execute unless score $ _shuffle matches 0..32767 unless data storage : _[-1].lmt[2] run data modify storage : _[-1].lmt append value []

scoreboard players operation $ _shuffle *= #2^17 _shuffle
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][2] run data remove storage : _[-1].lmt[-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][2] run data modify storage : _[-1].lmt[-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][2] run data modify storage : _[-1].lmt[-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value {}
