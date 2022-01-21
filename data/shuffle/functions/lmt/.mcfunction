#> shuffle:lmt/
#@public
#@input storage
#  : _[-1].lmt List-Mapped Trie
#  : _[-1].take Optional int
#@output storage : _[-1].shuffled List

#>
#@within function shuffle:lmt/**
scoreboard objectives add _shuffle dummy
  data modify storage : _[-1].shuffled set value []
  execute store result score $take _shuffle store result score $size _shuffle run data get storage : _[-1].lmt.size
  execute if data storage : _[-1].take store result score $take _shuffle run data get storage : _[-1].take
  scoreboard players operation $take _shuffle < $size _shuffle
  execute if score $take _shuffle matches 2.. run function shuffle:lmt/loop
  execute if score $take _shuffle matches 1 run function shuffle:lmt/last
scoreboard objectives remove _shuffle
