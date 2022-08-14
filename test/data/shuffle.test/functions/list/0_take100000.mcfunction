#> shuffle.test:list/0_take100000
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list/0_take100000"
  data modify storage : _[-1].list set value []
  data modify storage : _[-1].take set value 100000
  data modify storage : _[-1].expected set value []
  function shuffle.test:_impl/list
data remove storage : _[-1]
