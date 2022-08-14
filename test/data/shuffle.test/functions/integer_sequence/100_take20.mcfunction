#> shuffle.test:integer_sequence/100_take20
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/100_take20"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 100
  data modify storage : _[-1].take set value 20
  data modify storage : _[-1].expected set value [3,92,72,64,56,38,87,81,25,66,78,41,95,11,83,80,47,55,96,89]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
