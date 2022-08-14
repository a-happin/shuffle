#> shuffle.test:integer_sequence/300_take100000
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/300_take100000"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 300
  data modify storage : _[-1].take set value 100000
  data modify storage : _[-1].expected set value [3,92,188,277,56,38,199,106,273,176,218,104,232,86,267,55,103,180,220,143,224,233,24,31,133,299,272,79,95,210,114,115,168,192,216,44,137,65,81,270,140,261,173,48,123,182,241,33,243,221,102,282,119,89,159,223,171,151,178,155,269,27,142,70,136,108,235,107,279,163,238,293,21,75,179,113,147,150,88,290,7,67,158,236,131,130,145,100,138,149,134,209,271,244,245,39,35,118,255,247,190,43,157,17,288,195,231,252,162,258,10,42,152,146,101,262,167,154,166,59,54,230,285,257,50,283,251,206,264,126,265,185,20,237,98,25,141,77,202,274,18,169,259,57,69,23,298,183,45,128,36,41,84,160,260,253,71,32,205,172,66,68,11,73,19,64,87,83,263,181,153,82,248,6,90,127,240,217,40,30,135,175,204,47,109,189,275,229,203,250,72,219,211,286,294,29,266,170,52,132,110,46,222,280,15,249,295,80,197,60,28,144,156,34,191,213,148,186,91,58,212,111,5,207,53,94,256,63,37,61,242,1,8,26,198,276,246,239,120,281,254,225,234,124,289,164,78,187,226,122,165,22,292,85,177,200,4,174,268,121,13,51,193,287,99,16,201,139,196,117,215,125,227,105,97,291,12,184,129,194,9,228,112,49,297,161,14,284,74,278,296,96,214,208,93,76,2,0,116,62]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]
