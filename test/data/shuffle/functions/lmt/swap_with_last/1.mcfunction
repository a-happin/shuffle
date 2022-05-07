#> shuffle:lmt/swap_with_last/1
#@within tag/function shuffle:lmt/swap_with_last

data modify storage : _[-1].tmp set from storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._
data modify storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ set from storage : _[-1].shuffled[-1]
