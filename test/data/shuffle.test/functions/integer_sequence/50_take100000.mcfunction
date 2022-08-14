#> shuffle.test:integer_sequence/50_take100000
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/50_take100000"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 50
  data modify storage : _[-1].take set value 100000
  data modify storage : _[-1].expected set value [3,48,4,2,24,33,21,29,9,23,18,20,30,13,43,0,36,37,38,46,45,16,47,32,11,49,39,27,15,40,22,41,6,19,34,14,7,5,44,31,35,42,25,12,1,26,8,10,17,28]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
