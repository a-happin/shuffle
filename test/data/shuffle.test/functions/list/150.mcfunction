#> shuffle.test:list/150
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list/150"
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149]
  data modify storage : _[-1].expected set value [3,42,80,22,52,138,49,83,25,44,38,78,34,68,73,70,127,74,4,15,132,113,140,101,121,149,30,40,59,62,84,61,60,24,20,119,142,32,125,57,90,133,128,86,45,47,19,103,75,79,2,148,111,96,124,144,67,102,48,126,116,43,36,93,99,33,10,97,28,146,106,92,69,134,143,139,105,56,131,55,100,118,89,41,23,107,27,16,145,85,14,72,141,98,9,71,17,6,1,50,122,110,7,88,137,108,51,65,87,81,115,77,18,94,29,0,58,46,120,129,123,66,26,11,136,95,21,104,8,91,64,37,117,82,12,109,35,63,54,147,114,112,135,31,13,5,39,53,76,130]
  function shuffle.test:_impl/list
data remove storage : _[-1]
