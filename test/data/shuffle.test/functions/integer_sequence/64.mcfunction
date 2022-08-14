#> shuffle.test:integer_sequence/64
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/64"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 64
  data modify storage : _[-1].expected set value [3,20,10,51,8,38,41,0,37,46,24,9,36,50,21,42,11,17,34,33,16,27,32,29,49,54,4,15,63,55,59,47,28,61,26,30,39,6,7,45,43,53,35,12,57,14,60,13,48,25,22,31,18,56,58,23,19,44,62,2,40,1,5,52]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
