#> shuffle:integer_sequence/
#@public
#@input storage
#  : _[-1].begin int
#  : _[-1].end int (must be begin <= end)
#  : _[-1].take Optional int
#@output storage : _[-1].shuffled List

## example:
### {begin: 0, end: 10}
### => [3,6,1,5,4,2,9,0,8,7]

#>
#@within function shuffle:integer_sequence/**
scoreboard objectives add _shuffle dummy
  data modify storage : _[-1].shuffled set value []
  execute store result score $begin _shuffle run data get storage : _[-1].begin
  execute store result score $size _shuffle run data get storage : _[-1].end
  execute store result score $rest _shuffle store result score $ _shuffle run scoreboard players operation $size _shuffle -= $begin _shuffle
  ## rest = size - take
  execute if data storage : _[-1].take store result score $ _shuffle run data get storage : _[-1].take
  scoreboard players operation $rest _shuffle -= $ _shuffle
  data modify storage : _ append value {lmt: [], a: [I; 0]}
    execute if score $rest _shuffle < $size _shuffle if score $size _shuffle matches 2.. run function #shuffle:integer_sequence/loop
    execute if score $rest _shuffle matches ..0 if score $size _shuffle matches 1 run function shuffle:integer_sequence/last
  data remove storage : _[-1]
scoreboard objectives remove _shuffle
