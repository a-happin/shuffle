#> shuffle.test:list_legacy/50_take20
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list_legacy/50_take20"
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49]
  data modify storage : _[-1].take set value 20
  data modify storage : _[-1].expected set value [3,49,5,2,27,37,24,34,12,29,22,26,41,17,31,0,19,46,33,6]
  function shuffle.test:_impl/list_legacy
data remove storage : _[-1]
