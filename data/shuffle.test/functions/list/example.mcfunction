#> shuffle.test:list/example
#@private

data modify storage : _ append value {}
  data modify storage : _[-1].list set value [100, 101, 102, 103, 104, 105, 106, 107, 108, 109]
  tellraw @s [{"text": "Debug» ", "color": "green"}, "list = ", {"storage": ":", "nbt": "_[-1].list"}]
  function shuffle:list/
  tellraw @s [{"text": "Debug» ", "color": "green"}, "shuffled = ", {"storage": ":", "nbt": "_[-1].shuffled"}]
data remove storage : _[-1]
