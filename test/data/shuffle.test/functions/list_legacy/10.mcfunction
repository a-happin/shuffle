#> shuffle.test:list_legacy/10
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list_legacy/10"
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9]
  data modify storage : _[-1].expected set value [3,2,6,1,5,8,4,0,9,7]
  function shuffle.test:_impl/list_legacy
data remove storage : _[-1]
