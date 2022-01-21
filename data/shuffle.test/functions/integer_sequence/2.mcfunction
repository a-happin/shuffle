#> shuffle.test:integer_sequence/2
#@private

data modify storage : _ append value {begin: 10, end: 12}
  tellraw @s [{"text": "Debug» ", "color": "green"}, "args = ", {"storage": ":", "nbt": "_[-1]"}]
  function shuffle:integer_sequence/
  tellraw @s [{"text": "Debug» ", "color": "green"}, "shuffled = ", {"storage": ":", "nbt": "_[-1].shuffled"}]
data remove storage : _[-1]
