#> shuffle.test:list_legacy/4
#@private

data modify storage : _ append value {}
  data modify storage : _[-1].list set value [1L, 2L, 3L, 2147483648L]
  tellraw @s [{"text": "Debug» ", "color": "green"}, "args = ", {"storage": ":", "nbt": "_[-1]"}]
  function shuffle:list/legacy/
  tellraw @s [{"text": "Debug» ", "color": "green"}, {"storage": ":", "nbt": "_[-1]"}]
data remove storage : _[-1]
