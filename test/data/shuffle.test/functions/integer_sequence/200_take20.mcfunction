#> shuffle.test:integer_sequence/200_take20
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/200_take20"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 200
  data modify storage : _[-1].take set value 20
  data modify storage : _[-1].expected set value [3,42,10,1,4,138,27,116,45,126,158,192,140,152,141,120,107,60,48,73]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
