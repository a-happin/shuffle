#> shuffle.test:list/30_take1
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list/30_take1"
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29]
  data modify storage : _[-1].take set value 1
  data modify storage : _[-1].expected set value [3]
  function shuffle.test:_impl/list
data remove storage : _[-1]
