#> shuffle:list/legacy/
#@public
#@input storage
#  : _[-1].list List
#  : _[-1].take Optional int
#@output storage : _[-1].shuffled List

#>
#@within function shuffle:list/legacy/**
scoreboard objectives add _shuffle dummy
  scoreboard players set #2^16 _shuffle 65536
  data modify storage : _[-1].shuffled set value []
  execute store result score $take _shuffle store result score $index _shuffle store result score $size _shuffle if data storage : _[-1].list[]
  execute if data storage : _[-1].take store result score $take _shuffle run data get storage : _[-1].take
  scoreboard players operation $take _shuffle < $size _shuffle
  data modify storage : _ append value {}
    execute if score $take _shuffle matches 1.. if score $size _shuffle matches 2.. run function shuffle:list/legacy/loop
    execute if score $take _shuffle matches 1 if score $size _shuffle matches 1 run function shuffle:list/legacy/last
  data remove storage : _[-1]
scoreboard objectives remove _shuffle
