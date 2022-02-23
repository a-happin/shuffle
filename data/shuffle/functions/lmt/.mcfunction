#> shuffle:lmt/
#@public
#@input
#  storage : _[-1].lmt List-Mapped Trie
#  score $size _shuffle int (size of lmt)
#  storage : _[-1].take Optional int
#@output
#  storage : _[-1].shuffled List
#  storage : _[-1].tmp (garbage)

scoreboard players set #2^16 _shuffle 65536
scoreboard players set #2^17 _shuffle 131072
execute store result score $carry _shuffle run data get storage shuffle: random[3]
data modify storage : _[-1].shuffled set value []
scoreboard players operation $take _shuffle = $size _shuffle
execute if data storage : _[-1].take store result score $take _shuffle run data get storage : _[-1].take
scoreboard players operation $take _shuffle < $size _shuffle
execute if score $take _shuffle matches 1.. if score $size _shuffle matches 2.. run function #shuffle:lmt/loop
execute if score $take _shuffle matches 1 if score $size _shuffle matches 1 run data modify storage : _[-1].shuffled append from storage : _[-1].lmt[0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0]._
