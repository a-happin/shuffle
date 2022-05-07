#> shuffle:integer_sequence/swap_with_last/1
#@within tag/function shuffle:integer_sequence/swap_with_last

execute if data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ run data modify storage : _[-1].tmp set from storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._
execute unless data storage : _[-1].lmt[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]._ store result storage : _[-1].tmp int 1 run scoreboard players operation $last _shuffle += $begin _shuffle
