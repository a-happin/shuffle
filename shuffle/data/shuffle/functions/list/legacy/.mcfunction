#> shuffle:list/legacy/
#@public
#@input storage
#  : _[-1].list List
#  : _[-1].take Optional int
#@output storage : _[-1].shuffled List

#>
#@within function shuffle:list/legacy/**
scoreboard objectives add _shuffle dummy
  data modify storage : _[-1].shuffled set value []
  execute store result score $rest _shuffle store result score $ _shuffle store result score $index _shuffle store result score $size _shuffle if data storage : _[-1].list[]
  ## rest = size - take
  execute if data storage : _[-1].take store result score $ _shuffle run data get storage : _[-1].take
  scoreboard players operation $rest _shuffle -= $ _shuffle
  data modify storage : _ append value {}
    execute if score $rest _shuffle < $size _shuffle if score $size _shuffle matches 2.. run function #shuffle:list/legacy/loop
    execute if score $rest _shuffle matches ..0 if score $size _shuffle matches ..1 run function shuffle:list/legacy/last
  data remove storage : _[-1]
scoreboard objectives remove _shuffle
