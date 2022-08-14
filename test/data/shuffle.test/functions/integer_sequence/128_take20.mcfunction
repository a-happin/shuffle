#> shuffle.test:integer_sequence/128_take20
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/128_take20"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 128
  data modify storage : _[-1].take set value 20
  data modify storage : _[-1].expected set value [3,102,100,13,40,21,47,39,45,94,68,98,12,119,99,92,75,122,70,57]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
