#> shuffle.test:list_legacy/4_take100000
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list_legacy/4_take100000"
  data modify storage : _[-1].list set value [0,1,2,3]
  data modify storage : _[-1].take set value 100000
  data modify storage : _[-1].expected set value [3,2,0,1]
  function shuffle.test:_impl/list_legacy
data remove storage : _[-1]
