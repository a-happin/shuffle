#> shuffle.test:list_legacy/2_take0
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list_legacy/2_take0"
  data modify storage : _[-1].list set value [0,1]
  data modify storage : _[-1].take set value 0
  data modify storage : _[-1].expected set value []
  function shuffle.test:_impl/list_legacy
data remove storage : _[-1]