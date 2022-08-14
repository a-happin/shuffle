#> shuffle.test:integer_sequence/150_take20
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/150_take20"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 150
  data modify storage : _[-1].take set value 20
  data modify storage : _[-1].expected set value [3,42,80,22,52,138,49,83,25,44,38,78,34,68,73,70,127,74,4,15]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
