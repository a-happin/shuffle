#> shuffle.test:integer_sequence/50_take20
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/50_take20"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 50
  data modify storage : _[-1].take set value 20
  data modify storage : _[-1].expected set value [3,48,4,2,24,33,21,29,9,23,18,20,30,13,43,0,36,37,38,46]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
