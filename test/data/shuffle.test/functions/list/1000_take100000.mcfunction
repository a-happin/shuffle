#> shuffle.test:list/1000_take100000
#@within function shuffle.test:

data modify storage : _ append value {random: [I; 0, 3]}
  data modify storage : _[-1].name set value "shuffle.test:list/1000_take100000"
  data modify storage : _[-1].list set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999]
  data modify storage : _[-1].take set value 100000
  data modify storage : _[-1].expected set value [3,722,160,150,452,768,801,219,941,73,438,714,296,485,990,710,203,896,498,384,504,355,728,746,85,953,782,884,291,954,324,503,596,502,734,774,501,996,813,495,997,18,993,579,968,417,321,268,75,316,752,673,331,831,571,13,327,724,540,143,454,712,604,484,920,883,812,552,128,478,667,22,53,758,725,388,651,280,770,398,447,603,194,336,239,870,585,225,834,671,911,632,167,564,437,379,978,356,946,390,90,371,657,378,664,74,913,214,518,17,700,658,256,780,757,290,771,630,586,892,394,192,460,762,186,803,547,411,292,682,490,634,860,977,624,745,277,306,126,234,838,396,962,704,257,418,936,215,369,237,916,861,172,584,472,21,731,633,869,462,346,48,113,535,475,939,904,300,559,797,282,691,83,905,34,309,97,825,806,375,39,470,415,786,653,115,649,319,399,851,352,341,887,626,302,449,149,933,590,915,588,646,558,790,943,676,566,41,312,995,548,963,393,859,645,6,153,332,716,366,974,124,539,554,553,706,950,975,301,654,814,101,56,591,705,486,84,269,854,345,483,436,23,261,456,260,205,833,395,68,976,414,678,87,720,169,789,582,686,891,613,155,383,465,170,611,342,960,565,226,441,461,729,55,583,244,348,811,719,11,469,999,843,174,467,333,223,685,984,433,59,112,772,164,445,448,829,265,271,899,340,494,289,236,743,67,832,982,689,631,82,96,877,480,908,232,424,263,27,209,918,668,409,33,674,278,468,121,372,792,402,168,274,187,747,360,817,228,368,940,373,439,819,935,310,242,555,791,94,979,177,137,220,567,730,506,45,16,662,644,446,635,453,598,221,191,629,696,410,638,114,377,965,636,570,828,766,330,148,349,874,458,199,715,944,742,344,129,295,823,98,111,959,359,259,594,576,769,457,26,258,578,516,739,184,680,820,830,139,672,587,809,650,670,272,95,80,493,648,862,532,639,800,491,824,51,544,517,40,788,733,787,681,538,188,969,31,334,972,511,561,783,204,116,329,293,615,303,537,107,574,2,307,358,520,894,171,489,189,235,99,951,718,524,906,287,981,362,934,850,77,932,464,179,852,455,42,323,450,694,211,246,795,404,765,54,543,421,248,826,100,640,138,195,426,471,701,163,218,253,751,514,60,601,385,577,401,78,572,663,562,419,980,313,505,804,642,43,146,233,102,868,519,755,430,693,50,440,110,917,482,264,339,512,315,527,735,44,230,442,898,621,434,580,416,403,738,314,618,534,392,140,744,836,556,807,166,29,961,992,103,929,616,428,666,210,818,283,665,938,142,699,923,609,91,477,956,622,66,144,254,909,958,182,895,216,250,108,754,247,669,784,910,545,998,967,821,761,842,948,206,286,799,88,794,523,238,376,903,890,776,158,61,382,858,863,526,708,104,408,432,872,607,1,589,508,989,955,711,513,353,925,183,89,64,120,810,364,602,407,406,405,848,605,130,65,879,748,429,365,509,412,971,229,709,510,702,224,176,4,945,79,118,643,181,217,32,347,231,592,156,805,569,563,52,145,69,888,459,568,660,425,922,827,117,991,760,275,14,363,726,549,560,835,612,207,173,773,781,873,193,476,796,900,262,880,655,133,679,533,131,400,317,36,106,983,798,741,675,697,885,125,474,677,154,881,656,308,5,740,374,652,994,201,986,914,180,213,105,473,606,659,284,46,76,623,695,443,311,285,849,522,267,753,297,973,492,10,71,325,882,628,141,422,727,749,721,610,335,0,775,713,12,690,208,338,241,255,793,281,620,876,288,70,361,38,159,844,599,380,109,550,222,245,25,19,451,901,521,924,878,759,515,928,488,847,431,185,397,767,20,865,122,840,72,37,381,151,853,328,608,93,926,931,785,764,227,732,8,251,614,886,661,294,487,525,822,987,542,119,557,531,736,435,326,723,684,266,866,777,273,481,466,47,499,92,988,152,463,802,134,196,49,707,541,845,846,530,627,165,641,637,357,647,902,391,856,240,937,279,304,162,35,964,875,864,597,907,62,15,135,841,354,423,698,970,717,386,867,9,157,919,30,427,595,367,420,249,81,581,202,57,500,546,857,299,444,197,952,528,200,370,625,190,927,536,985,756,479,871,947,343,387,573,243,24,497,930,198,942,175,600,837,136,123,58,63,889,808,750,320,593,86,389,147,692,763,855,127,322,551,617,7,619,496,737,815,816,575,703,778,897,957,966,212,949,132,161,350,912,779,413,351,318,337,687,305,683,276,298,839,28,688,921,178,529,270,893,507,252]
  function shuffle.test:_impl/list
data remove storage : _[-1]