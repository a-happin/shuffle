#> shuffle.test:integer_sequence/10000_take20
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/10000_take20"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 10000
  data modify storage : _[-1].take set value 20
  data modify storage : _[-1].expected set value [3,9695,6148,4138,1376,8818,2843,7107,2709,7839,4668,5758,1948,602,8465,4920,59,590,1966,4650]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
