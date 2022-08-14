#> shuffle.test:integer_sequence/128
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/128"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 128
  data modify storage : _[-1].expected set value [3,102,100,13,40,21,47,39,45,94,68,98,12,119,99,92,75,122,70,57,0,120,80,20,37,35,107,127,111,51,84,103,60,24,26,62,33,44,73,69,118,63,1,101,43,77,82,27,19,48,14,42,113,87,108,65,106,125,22,4,10,115,36,15,56,50,16,64,86,28,105,11,114,95,17,93,54,123,61,53,7,85,112,72,23,46,109,124,2,38,49,78,31,32,76,52,59,55,79,74,34,18,90,41,96,58,91,104,71,97,83,25,89,66,121,30,81,110,29,9,8,6,116,88,126,67,117,5]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
