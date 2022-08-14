#> shuffle.test:integer_sequence/200_take100000
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/200_take100000"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 200
  data modify storage : _[-1].take set value 100000
  data modify storage : _[-1].expected set value [3,42,10,1,4,138,27,116,45,126,158,192,140,152,141,120,107,60,48,73,144,181,168,188,101,28,30,15,127,69,179,6,84,117,90,29,61,17,91,198,0,72,163,199,7,162,145,81,183,130,2,161,148,159,71,53,39,121,132,85,14,64,18,119,16,68,182,62,56,166,57,47,150,100,151,113,153,97,50,75,155,55,112,146,31,172,186,137,82,164,104,123,67,174,95,139,11,19,157,106,165,36,105,170,88,167,154,169,58,98,70,24,8,177,93,142,102,40,109,74,80,86,189,37,124,190,92,77,134,180,133,63,135,78,125,96,89,87,149,41,38,115,178,94,9,129,66,171,25,122,99,176,12,156,26,147,193,52,197,43,191,103,111,184,23,118,44,175,114,54,128,187,83,35,49,34,196,20,32,76,22,108,13,33,79,194,5,110,136,51,21,131,173,65,185,195,143,59,160,46]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
