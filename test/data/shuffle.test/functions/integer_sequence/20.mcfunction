#> shuffle.test:integer_sequence/20
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/20"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 20
  data modify storage : _[-1].expected set value [3,15,10,7,8,19,14,5,9,2,18,11,0,17,13,16,12,4,6,1]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
