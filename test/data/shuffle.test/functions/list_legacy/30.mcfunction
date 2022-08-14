#> shuffle.test:list_legacy/30
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list_legacy/30"
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29]
  data modify storage : _[-1].expected set value [3,27,17,8,25,4,1,15,21,24,28,10,26,29,14,18,9,6,11,0,13,23,16,22,5,19,12,7,20,2]
  function shuffle.test:_impl/list_legacy
data remove storage : _[-1]
