#> shuffle.test:list/190_take100000
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list/190_take100000"
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189]
  data modify storage : _[-1].take set value 100000
  data modify storage : _[-1].expected set value [3,20,132,24,164,113,25,81,107,128,78,65,50,173,183,0,125,142,56,179,124,110,116,153,99,184,138,72,129,74,84,59,146,149,140,169,49,60,19,14,100,143,115,54,151,162,51,66,158,22,102,159,13,182,141,137,85,95,186,10,44,145,154,77,92,98,170,96,48,64,67,114,133,38,17,123,21,111,28,89,7,15,32,26,61,45,119,181,172,131,157,2,35,161,147,163,37,122,33,112,174,187,47,148,42,166,91,144,130,88,188,9,4,189,94,5,83,63,120,52,34,27,58,126,6,18,105,108,150,175,136,134,36,29,90,152,109,8,16,57,167,23,156,121,62,103,101,155,68,40,177,178,70,46,43,185,39,69,79,73,86,11,139,117,41,118,53,80,55,160,127,31,165,87,93,171,1,97,180,104,82,106,30,71,75,168,176,76,135,12]
  function shuffle.test:_impl/list
data remove storage : _[-1]