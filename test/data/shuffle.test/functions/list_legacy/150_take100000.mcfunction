#> shuffle.test:list_legacy/150_take100000
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list_legacy/150_take100000"
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149]
  data modify storage : _[-1].take set value 100000
  data modify storage : _[-1].expected set value [3,43,82,23,55,143,52,89,27,48,41,87,37,77,84,80,142,88,5,17,92,132,54,121,145,4,36,51,74,79,109,78,76,30,25,114,113,44,85,81,126,62,119,124,64,67,24,26,115,122,2,65,98,149,7,128,108,31,83,129,39,71,60,118,6,58,16,110,50,40,133,34,137,139,101,75,97,117,10,120,146,135,49,95,47,19,63,33,130,8,32,144,68,107,20,12,53,15,1,148,123,90,22,138,106,147,9,91,127,102,72,96,69,73,116,0,103,13,70,112,125,99,140,56,35,21,134,45,57,42,86,141,18,111,104,94,29,131,46,93,105,14,11,28,66,100,38,136,61,59]
  function shuffle.test:_impl/list_legacy
data remove storage : _[-1]
