#> shuffle.test:integer_sequence/64_take20
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/64_take20"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 64
  data modify storage : _[-1].take set value 20
  data modify storage : _[-1].expected set value [3,20,10,51,8,38,41,0,37,46,24,9,36,50,21,42,11,17,34,33]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
