#> shuffle.test:list/50_take20
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list/50_take20"
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49]
  data modify storage : _[-1].take set value 20
  data modify storage : _[-1].expected set value [3,48,4,2,24,33,21,29,9,23,18,20,30,13,43,0,36,37,38,46]
  function shuffle.test:_impl/list
data remove storage : _[-1]
