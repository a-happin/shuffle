#> shuffle:integer_sequence/last
#@within function shuffle:integer_sequence/

data modify storage : _[-2].shuffled append value 0
execute if data storage : _[-1].lmt.data[0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0]._ run data modify storage : _[-2].shuffled[-1] set from storage : _[-1].lmt.data[0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0]._
execute unless data storage : _[-1].lmt.data[0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0]._ store result storage : _[-2].shuffled[-1] int 1 run scoreboard players get $begin _shuffle
