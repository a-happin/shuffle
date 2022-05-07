#> shuffle.test:integer_sequence/1_take0
#@private

data modify storage : _ append value {begin: 1, end: 1, take: 0}
  tellraw @s [{"text": "Debug» ", "color": "green"}, "args = ", {"storage": ":", "nbt": "_[-1]"}]
  function shuffle:list/
  data modify storage : _[-1].expected set value []
  execute store result storage : _[-1].test.failure byte 1 run data modify storage : _[-1].expected set from storage : _[-1].shuffled
  execute unless data storage : _[-1].test{failure: true} run tellraw @s [{"text": "Debug» ", "color": "green"}, "OK"]
  execute if data storage : _[-1].test{failure: true} run tellraw @s [{"text": "Failed» ", "color": "red"}, "shuffled = ", {"storage": ":", "nbt": "_[-1].shuffled"}]
data remove storage : _[-1]
