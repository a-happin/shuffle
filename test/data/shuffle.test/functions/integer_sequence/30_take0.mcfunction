#> shuffle.test:integer_sequence/30_take0
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/30_take0"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 30
  data modify storage : _[-1].take set value 0
  data modify storage : _[-1].expected set value []
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
