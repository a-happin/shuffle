#> shuffle.test:list_legacy/2
#@private

data modify storage : _ append value {}
  data modify storage : _[-1].list set value [77s, -77s]
  tellraw @s [{"text": "Debug» ", "color": "green"}, "args = ", {"storage": ":", "nbt": "_[-1]"}]
  function shuffle:list/legacy/
  tellraw @s [{"text": "Debug» ", "color": "green"}, {"storage": ":", "nbt": "_[-1]"}]
data remove storage : _[-1]
