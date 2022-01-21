#> shuffle.test:integer_sequence/example
#@private

data modify storage : _ append value {begin: 100, end: 110}
  tellraw @s [{"text": "Debug» ", "color": "green"}, "args = ", {"storage": ":", "nbt": "_[-1]"}]
  function shuffle:integer_sequence/
  tellraw @s [{"text": "Debug» ", "color": "green"}, "shuffled = ", {"storage": ":", "nbt": "_[-1].shuffled"}]
data remove storage : _[-1]
