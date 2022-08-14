#> shuffle.test:integer_sequence/190_take20
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/190_take20"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 190
  data modify storage : _[-1].take set value 20
  data modify storage : _[-1].expected set value [3,20,132,24,164,113,25,81,107,128,78,65,50,173,183,0,125,142,56,179]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
