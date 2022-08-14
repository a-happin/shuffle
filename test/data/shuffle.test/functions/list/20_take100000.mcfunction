#> shuffle.test:list/20_take100000
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list/20_take100000"
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19]
  data modify storage : _[-1].take set value 100000
  data modify storage : _[-1].expected set value [3,15,10,7,8,19,14,5,9,2,18,11,0,17,13,16,12,4,6,1]
  function shuffle.test:_impl/list
data remove storage : _[-1]
