#> shuffle.test:list/1_take20
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list/1_take20"
  data modify storage : _[-1].list set value [0]
  data modify storage : _[-1].take set value 20
  data modify storage : _[-1].expected set value [0]
  function shuffle.test:_impl/list
data remove storage : _[-1]
