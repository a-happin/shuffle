#> shuffle.test:integer_sequence/100_take100000
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/100_take100000"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 100
  data modify storage : _[-1].take set value 100000
  data modify storage : _[-1].expected set value [3,92,72,64,56,38,87,81,25,66,78,41,95,11,83,80,47,55,96,89,98,19,26,48,88,53,4,46,39,21,14,32,52,17,20,29,75,51,13,36,40,57,23,60,43,42,33,22,27,28,2,54,31,37,62,61,86,45,93,1,34,97,68,12,65,8,77,15,0,99,7,18,90,49,94,44,30,24,69,76,79,10,70,85,82,16,58,35,6,91,73,74,84,9,5,50,67,71,59,63]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
