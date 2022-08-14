#> shuffle.test:integer_sequence/1000_take100000
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:integer_sequence/1000_take100000"
  data modify storage : _[-1].begin set value 0
  data modify storage : _[-1].end set value 1000
  data modify storage : _[-1].take set value 100000
  data modify storage : _[-1].expected set value [3,722,160,150,452,768,801,219,941,73,438,714,296,485,990,710,203,896,498,384,504,355,728,746,85,953,782,884,291,954,324,503,596,502,734,774,501,996,813,495,997,18,993,579,968,417,321,268,75,316,752,673,331,831,571,13,327,724,540,143,454,712,604,484,920,883,812,552,128,478,667,22,53,758,725,388,651,280,770,398,447,603,194,336,239,870,585,225,834,671,911,632,167,564,437,379,978,356,946,390,90,371,657,378,664,74,913,214,518,17,700,658,256,780,757,290,771,630,586,892,394,192,460,762,186,803,547,411,292,682,490,634,860,977,624,745,277,306,126,234,838,396,962,704,257,418,936,215,369,237,916,861,172,584,472,21,731,633,869,462,346,48,113,535,475,939,904,300,559,797,282,691,83,905,34,309,97,825,806,375,39,470,415,786,653,115,649,319,399,851,352,341,887,626,302,449,149,933,590,915,588,646,558,790,943,676,566,41,312,995,548,963,393,859,645,6,153,332,716,366,974,124,539,554,553,706,950,975,301,654,814,101,56,591,705,486,84,269,854,345,483,436,23,261,456,260,205,833,395,68,976,414,678,87,720,169,789,582,686,891,613,155,383,465,170,611,342,960,565,226,441,461,729,55,583,244,348,811,719,11,469,999,843,174,467,333,223,685,984,433,59,112,772,164,445,448,829,265,271,899,340,494,289,236,743,67,832,982,689,631,82,96,877,480,908,232,424,263,27,209,918,668,409,33,674,278,468,121,372,792,402,168,274,187,747,360,817,228,368,940,373,439,819,935,310,242,555,791,94,979,177,137,220,567,730,506,45,16,662,644,446,635,453,598,221,191,629,696,410,638,114,377,965,636,570,828,766,330,148,349,874,458,199,715,944,742,344,129,295,823,98,111,959,359,259,594,576,769,457,26,258,578,516,739,184,680,820,830,139,672,587,809,650,670,272,95,80,493,648,862,532,639,800,491,824,51,544,517,40,788,733,787,681,538,188,969,31,334,972,511,561,783,204,116,329,293,615,303,537,107,574,2,307,358,520,894,171,489,189,235,99,951,718,524,906,287,981,362,934,850,77,932,464,179,852,455,42,323,450,694,211,246,795,404,765,54,543,421,248,826,100,640,138,195,426,471,701,163,218,253,751,514,60,601,385,577,401,78,572,663,562,419,980,313,505,804,642,43,146,233,102,868,519,755,430,693,50,440,110,917,482,264,339,512,315,527,735,44,230,442,898,621,434,580,416,403,738,314,618,534,392,140,744,836,556,807,166,29,961,992,103,929,616,428,666,210,818,283,665,938,142,699,923,609,91,477,956,622,66,144,254,909,958,182,895,216,250,108,754,247,669,784,910,545,998,967,821,761,842,948,206,286,799,88,794,523,238,376,903,890,776,158,61,382,858,863,526,708,104,408,432,872,607,1,589,508,989,955,711,513,353,925,183,89,64,120,810,364,602,407,406,405,848,605,130,65,879,748,429,365,509,412,971,229,709,510,702,224,176,4,945,79,118,643,181,217,32,347,231,592,156,805,569,563,52,145,69,888,459,568,660,425,922,827,117,991,760,275,14,363,726,549,560,835,612,207,173,773,781,873,193,476,796,900,262,880,655,133,679,533,131,400,317,36,106,983,798,741,675,697,885,125,474,677,154,881,656,308,5,740,374,652,994,201,986,914,180,213,105,473,606,659,284,46,76,623,695,443,311,285,849,522,267,753,297,973,492,10,71,325,882,628,141,422,727,749,721,610,335,0,775,713,12,690,208,338,241,255,793,281,620,876,288,70,361,38,159,844,599,380,109,550,222,245,25,19,451,901,521,924,878,759,515,928,488,847,431,185,397,767,20,865,122,840,72,37,381,151,853,328,608,93,926,931,785,764,227,732,8,251,614,886,661,294,487,525,822,987,542,119,557,531,736,435,326,723,684,266,866,777,273,481,466,47,499,92,988,152,463,802,134,196,49,707,541,845,846,530,627,165,641,637,357,647,902,391,856,240,937,279,304,162,35,964,875,864,597,907,62,15,135,841,354,423,698,970,717,386,867,9,157,919,30,427,595,367,420,249,81,581,202,57,500,546,857,299,444,197,952,528,200,370,625,190,927,536,985,756,479,871,947,343,387,573,243,24,497,930,198,942,175,600,837,136,123,58,63,889,808,750,320,593,86,389,147,692,763,855,127,322,551,617,7,619,496,737,815,816,575,703,778,897,957,966,212,949,132,161,350,912,779,413,351,318,337,687,305,683,276,298,839,28,688,921,178,529,270,893,507,252]
  function shuffle.test:_impl/integer_sequence
data remove storage : _[-1]