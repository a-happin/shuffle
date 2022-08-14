#> shuffle.test:list_legacy/64
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list_legacy/64"
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]
  data modify storage : _[-1].expected set value [3,21,11,54,9,42,46,0,43,55,29,13,45,63,27,56,16,24,48,47,23,38,50,41,32,26,6,25,5,8,17,22,59,20,58,28,51,14,18,10,44,12,7,39,37,53,60,52,15,34,30,57,36,1,31,35,62,40,2,33,49,19,4,61]
  function shuffle.test:_impl/list_legacy
data remove storage : _[-1]
