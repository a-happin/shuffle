#> shuffle.test:list_legacy/100_take100000
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list_legacy/100_take100000"
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99]
  data modify storage : _[-1].take set value 100000
  data modify storage : _[-1].expected set value [3,93,73,65,57,39,92,86,26,71,85,44,61,12,97,94,52,63,76,96,77,21,30,56,48,67,5,58,47,25,17,41,75,22,28,40,62,81,16,54,66,98,34,59,78,74,51,33,43,46,2,87,60,80,49,19,15,55,88,1,84,95,82,23,38,13,70,32,0,8,18,53,50,7,45,37,10,64,69,89,27,36,83,4,72,6,20,9,42,68,31,24,99,79,91,90,35,29,14,11]
  function shuffle.test:_impl/list_legacy
data remove storage : _[-1]
