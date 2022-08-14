#> shuffle.test:list/64_take100000
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list/64_take100000"
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]
  data modify storage : _[-1].take set value 100000
  data modify storage : _[-1].expected set value [3,20,10,51,8,38,41,0,37,46,24,9,36,50,21,42,11,17,34,33,16,27,32,29,49,54,4,15,63,55,59,47,28,61,26,30,39,6,7,45,43,53,35,12,57,14,60,13,48,25,22,31,18,56,58,23,19,44,62,2,40,1,5,52]
  function shuffle.test:_impl/list
data remove storage : _[-1]
