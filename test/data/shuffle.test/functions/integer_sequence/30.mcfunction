#> shuffle.test:integer_sequence/30
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/30"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 30
  data modify storage : _[-1].expected set value [3,26,16,7,22,29,1,11,15,17,18,6,27,20,9,10,5,24,4,0,25,8,21,19,23,12,2,13,28,14]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
