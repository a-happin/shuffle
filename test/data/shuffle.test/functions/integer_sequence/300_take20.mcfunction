#> shuffle.test:integer_sequence/300_take20
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/300_take20"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 300
  data modify storage : _[-1].take set value 20
  data modify storage : _[-1].expected set value [3,92,188,277,56,38,199,106,273,176,218,104,232,86,267,55,103,180,220,143]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
