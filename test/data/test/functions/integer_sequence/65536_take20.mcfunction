#> test:integer_sequence/65536_take20
#@private

data modify storage : _ append value {begin: 0, end: 65536, take: 20}
  tellraw @s [{"text": "Debug» ", "color": "green"}, "args = ", {"storage": ":", "nbt": "_[-1]"}]
  function shuffle:integer_sequence/
  tellraw @s [{"text": "Debug» ", "color": "green"}, {"storage": ":", "nbt": "_[-1]"}]
data remove storage : _[-1]
