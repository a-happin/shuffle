#> shuffle.test:integer_sequence/150
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/150"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 150
  data modify storage : _[-1].expected set value [3,42,80,22,52,138,49,83,25,44,38,78,34,68,73,70,127,74,4,15,132,113,140,101,121,149,30,40,59,62,84,61,60,24,20,119,142,32,125,57,90,133,128,86,45,47,19,103,75,79,2,148,111,96,124,144,67,102,48,126,116,43,36,93,99,33,10,97,28,146,106,92,69,134,143,139,105,56,131,55,100,118,89,41,23,107,27,16,145,85,14,72,141,98,9,71,17,6,1,50,122,110,7,88,137,108,51,65,87,81,115,77,18,94,29,0,58,46,120,129,123,66,26,11,136,95,21,104,8,91,64,37,117,82,12,109,35,63,54,147,114,112,135,31,13,5,39,53,76,130]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
