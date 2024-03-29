#> shuffle:lmt/
#@public
#@input
#  storage : _[-1].a [I; int] temporary
#  storage : _[-1].lmt List-Mapped Trie
#  score $size _shuffle int (size of lmt)
#  storage : _[-1].take Optional int
#@output
#  storage : _[-1].shuffled List
#  storage : _[-1].tmp (garbage)

data modify storage : _[-1].shuffled set value []
## rest = size - take
execute store result score $rest _shuffle run scoreboard players operation $ _shuffle = $size _shuffle
execute if data storage : _[-1].take store result score $ _shuffle run data get storage : _[-1].take
scoreboard players operation $rest _shuffle -= $ _shuffle
execute if score $rest _shuffle < $size _shuffle if score $size _shuffle matches 2.. run function #shuffle:lmt/loop
execute if score $rest _shuffle matches ..0 if score $size _shuffle matches 1 run data modify storage : _[-1].shuffled append from storage : _[-1].lmt[0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0]._
