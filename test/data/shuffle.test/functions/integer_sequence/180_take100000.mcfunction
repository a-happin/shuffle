#> shuffle.test:integer_sequence/180_take100000
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/180_take100000"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 180
  data modify storage : _[-1].take set value 100000
  data modify storage : _[-1].expected set value [3,158,96,67,72,28,157,146,5,119,174,163,160,134,61,130,39,18,46,144,64,53,86,13,37,133,6,43,111,164,54,121,32,114,98,168,41,83,51,87,60,34,71,45,27,122,11,85,123,74,92,66,127,102,167,103,75,109,40,77,172,31,36,106,159,58,70,118,177,49,140,12,33,17,135,38,176,62,169,23,124,76,161,7,154,136,9,170,26,115,14,166,151,48,15,150,142,162,95,100,113,80,152,52,90,29,120,101,82,110,20,137,139,44,143,69,125,55,153,73,149,126,165,171,50,107,94,10,148,0,141,24,131,89,97,25,65,19,145,84,68,128,91,116,21,59,178,2,79,63,57,129,108,93,105,81,78,56,112,104,35,179,117,147,173,4,156,132,47,16,99,1,30,22,175,138,8,88,42,155]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
