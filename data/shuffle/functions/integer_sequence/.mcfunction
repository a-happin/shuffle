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
  scoreboard players set #2^16 _shuffle 65536
  scoreboard players set #2^17 _shuffle 131072
  data modify storage : _[-1].shuffled set value []
  execute store result score $begin _shuffle run data get storage : _[-1].begin
  execute store result score $size _shuffle store result score $end _shuffle run data get storage : _[-1].end
  execute store result score $take _shuffle run scoreboard players operation $size _shuffle -= $begin _shuffle
  execute if data storage : _[-1].take store result score $take _shuffle run data get storage : _[-1].take
  scoreboard players operation $take _shuffle < $size _shuffle
  data modify storage : _ append value {lmt: []}
    execute if score $take _shuffle matches 1.. if score $size _shuffle matches 2.. run function shuffle:integer_sequence/loop
    execute if score $take _shuffle matches 1 if score $size _shuffle matches 1 run function shuffle:integer_sequence/last
  data remove storage : _[-1]
scoreboard objectives remove _shuffle
