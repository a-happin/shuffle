#> test:list/10
#@private

data modify storage : _ append value {}
  data modify storage : _[-1].list set value [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  tellraw @s [{"text": "Debug» ", "color": "green"}, "args = ", {"storage": ":", "nbt": "_[-1]"}]
  function shuffle:list/
  tellraw @s [{"text": "Debug» ", "color": "green"}, {"storage": ":", "nbt": "_[-1]"}]
data remove storage : _[-1]
