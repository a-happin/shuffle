#> shuffle.test:integer_sequence/190_take100000
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/190_take100000"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 190
  data modify storage : _[-1].take set value 100000
  data modify storage : _[-1].expected set value [3,20,132,24,164,113,25,81,107,128,78,65,50,173,183,0,125,142,56,179,124,110,116,153,99,184,138,72,129,74,84,59,146,149,140,169,49,60,19,14,100,143,115,54,151,162,51,66,158,22,102,159,13,182,141,137,85,95,186,10,44,145,154,77,92,98,170,96,48,64,67,114,133,38,17,123,21,111,28,89,7,15,32,26,61,45,119,181,172,131,157,2,35,161,147,163,37,122,33,112,174,187,47,148,42,166,91,144,130,88,188,9,4,189,94,5,83,63,120,52,34,27,58,126,6,18,105,108,150,175,136,134,36,29,90,152,109,8,16,57,167,23,156,121,62,103,101,155,68,40,177,178,70,46,43,185,39,69,79,73,86,11,139,117,41,118,53,80,55,160,127,31,165,87,93,171,1,97,180,104,82,106,30,71,75,168,176,76,135,12]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
