#> shuffle.test:list/2
#@private

data modify storage : _ append value {}
  data modify storage : _[-1].list set value [77s, -77s]
  tellraw @s [{"text": "Debug» ", "color": "green"}, "list = ", {"storage": ":", "nbt": "_[-1].list"}]
  function shuffle:list/
  tellraw @s [{"text": "Debug» ", "color": "green"}, "shuffled = ", {"storage": ":", "nbt": "_[-1].shuffled"}]
data remove storage : _[-1]
