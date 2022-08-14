#> shuffle.test:list/50
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list/50"
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49]
  data modify storage : _[-1].expected set value [3,48,4,2,24,33,21,29,9,23,18,20,30,13,43,0,36,37,38,46,45,16,47,32,11,49,39,27,15,40,22,41,6,19,34,14,7,5,44,31,35,42,25,12,1,26,8,10,17,28]
  function shuffle.test:_impl/list
data remove storage : _[-1]
