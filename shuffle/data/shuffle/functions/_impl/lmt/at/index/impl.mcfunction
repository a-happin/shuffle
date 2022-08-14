#> shuffle:_impl/lmt/at/index/impl
#@within * shuffle:**
#@input
#  storage : _[-1].a [I; int] temporary
#  storage : _[-1].lmt List-Mapped Trie
#  score $index _shuffle (0 <= index < 65536)
#  score $prev_index _shuffle (optional) (index != prev_index)
#@output
#  storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]
#  score $prev_index _shuffle

execute store result storage : _[-1].a[0] long 131072 run scoreboard players operation $prev_index _shuffle = $index _shuffle

execute unless data storage : _[-1].lmt[0] run data modify storage : _[-1].lmt set value [[],[]]
execute if score $index _shuffle matches 0..32767 if data storage : _[-1].lmt[2] run data remove storage : _[-1].lmt[2]
execute unless score $index _shuffle matches 0..32767 unless data storage : _[-1].lmt[2] run data modify storage : _[-1].lmt append value []

execute store result score $ _shuffle run data get storage : _[-1].a[0]
execute unless data storage : _[-1].lmt[-2][0] run data modify storage : _[-1].lmt[-2] set value [[],[]]
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][2] run data remove storage : _[-1].lmt[-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][2] run data modify storage : _[-1].lmt[-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute unless data storage : _[-1].lmt[-2][-2][0] run data modify storage : _[-1].lmt[-2][-2] set value [[],[]]
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][2] run data modify storage : _[-1].lmt[-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute unless data storage : _[-1].lmt[-2][-2][-2][0] run data modify storage : _[-1].lmt[-2][-2][-2] set value [[],[]]
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute unless data storage : _[-1].lmt[-2][-2][-2][-2][0] run data modify storage : _[-1].lmt[-2][-2][-2][-2] set value [[],[]]
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][0] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2] set value [[],[]]
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][0] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2] set value [[],[]]
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][0] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2] set value [[],[]]
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][0] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2] set value [[],[]]
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][0] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2] set value [[],[]]
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][0] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] set value [[],[]]
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][0] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] set value [[],[]]
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][0] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] set value [[],[]]
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][0] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] set value [[],[]]
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][0] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] set value [[],[]]
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $ _shuffle += $ _shuffle
execute unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][0] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] set value [{},{}]
execute if score $ _shuffle matches 0.. if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data remove storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute unless score $ _shuffle matches 0.. unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2] run data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value {}
