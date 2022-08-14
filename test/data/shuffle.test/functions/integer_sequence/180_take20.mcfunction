#> shuffle.test:integer_sequence/180_take20
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/180_take20"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 180
  data modify storage : _[-1].take set value 20
  data modify storage : _[-1].expected set value [3,158,96,67,72,28,157,146,5,119,174,163,160,134,61,130,39,18,46,144]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
